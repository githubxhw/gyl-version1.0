package cn.cuit.gyl.service.business.impl;

import cn.cuit.gyl.dao.business.IEarlyWarning_CgrkDao;
import cn.cuit.gyl.dao.database.GysDao;
import cn.cuit.gyl.dao.system.ISysSettingDao;
import cn.cuit.gyl.domain.business.Cgddzhib;
import cn.cuit.gyl.domain.business.Cgddzhub;
import cn.cuit.gyl.domain.business.EarlyWarning_Cgrk;
import cn.cuit.gyl.domain.database.gys;
import cn.cuit.gyl.exception.MyException;
import cn.cuit.gyl.service.business.CgddService;
import cn.cuit.gyl.utils.DomainAttrValueConverterUtils;
import cn.cuit.gyl.utils.StringConverterUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;


@Service("CgddService")
public class CgddServiceImpl implements CgddService {

    @Autowired
    @Qualifier("cgdddao")
    private cn.cuit.gyl.dao.business.cgdddao cgdddao;
    @Autowired
    @Qualifier("cgddzhidao")
    private cn.cuit.gyl.dao.business.cgddzhidao cgddzhidao;
    @Autowired
    @Qualifier("GysDao")
    GysDao gysDao;
    @Autowired
    @Qualifier("iSysSettingDao")
    ISysSettingDao sysSettingDao = null;
    @Autowired
    @Qualifier("IEarlyWarning_CgrkDao")
    private IEarlyWarning_CgrkDao earlyWarning_cgrkDao;

    @Override
    public List<Cgddzhub> findAll() {
        return cgdddao.findAllDd();
    }

    @Override
    public List<Cgddzhub> findByCondition(Cgddzhub cgddzhub) throws Exception{
        DomainAttrValueConverterUtils<Cgddzhub> handler=new DomainAttrValueConverterUtils<>(cgddzhub);
        Cgddzhub x  =handler.handler(null,"issp","spsftg","isth","djzt","status","dhbz","rkbz","kpbz","ysbz");
        List<Cgddzhub> byPage = cgdddao.findByPage(x);
        return byPage;
    }

    @Override
    public Cgddzhub findById(Long id) {
        Cgddzhub byId = cgdddao.findById(id);
        return byId;
    }

    @Override
    public Long getZiBHH(Long zid) throws Exception {
        List<Cgddzhib> byzid = cgddzhidao.findByzid(zid);
        Long x = new Long(0);
        for (Cgddzhib a:byzid){
            if (a.getHh()!=null){
                x = Long.max(a.getHh(),x);
            }
        }

        return x+1;
    }

    public void updateDj(Cgddzhub a) throws Exception {
        cgdddao.updateCgddzhub(a);
    }

    @Override
    public void updateById(Cgddzhub a) throws Exception {

        if (a.getDjzt()!=null&&a.getDjzt() == 1){
            throw new MyException("已经冻结");
        }else{
            cgdddao.updateCgddzhub(a);
        }

    }

    @Override
    public void deleteById(Long id) {
        cgdddao.deleteCgddzhub(id);
        cgddzhidao.deleteCgddzhib(id);

    }

    @Override
    public void deleteZiById(Long id) {
        cgddzhidao.deleteCgddzhibByid(id);
    }

    @Override
    public void updateZiById(Cgddzhib a) throws Exception {
        cgddzhidao.updateCgddzhib(a);
    }

    @Override
    public void deleteZhiByIds(String ids) throws Exception {
        Long[] zids = StringConverterUtils.convertToLong(ids,",");
        for (Long x :zids){

            cgddzhidao.deleteCgddzhibByid(x);
        }
    }

    @Override
    public void deleteByIds(String ids) throws Exception{
        Long[] zids = StringConverterUtils.convertToLong(ids,",");
        for (Long x :zids){
            cgdddao.deleteCgddzhub(x);
            cgddzhidao.deleteCgddzhib(x);
        }
    }

    @Override
    public void saveZib(Cgddzhib cgddzhib) throws Exception {
        cgddzhidao.addCgddzhib(cgddzhib);
    }

    @Override
    public void saveCgddzhub(Cgddzhub cgddzhub) {
        cgdddao.addCgddzhub(cgddzhub);

    }

    @Override
    @Transactional
    public void spOk(String djh, String spr, Date sprq) throws Exception {
        Cgddzhub byDjh = cgdddao.findByDjh(djh);
        if (byDjh.getZdr() == null){
            throw  new MyException("制单人为空");
        }
        if (byDjh.getZdr().equals(spr)){
            throw  new MyException("审批人与制单人不能一样");
        }else{
            if (byDjh.getIssp() == 1){
                throw  new MyException("已经审批过了");
            }
            if((byDjh.getSpsftg()!=null&&byDjh.getSpsftg() == 0)||byDjh.getSpsftg() == null){
                byDjh.setSpr(spr);
                byDjh.setSpsftg(1);
                byDjh.setSprq(sprq);
                byDjh.setIssp(1);
                cgdddao.updateCgddzhub(byDjh);

                List<Cgddzhib> byzid = cgddzhidao.findByzid(byDjh.getCgddzhubid());
                if (byzid !=null){
                    Integer checkDays = sysSettingDao.findCgEarlyWarningDaysById(1);
                    Integer invalidDays = sysSettingDao.findCgEarlyWarningInvalidDaysById(1);

                    for (Cgddzhib cgddzhib:byzid){
                        if (cgddzhib !=null && cgddzhib.getJhdhrq() == null){
                            throw new MyException("计划到货时间没有填写");
                        }
                        EarlyWarning_Cgrk earlyWarning_cgrk = new EarlyWarning_Cgrk();
                        earlyWarning_cgrk.setDjh(djh);
                        earlyWarning_cgrk.setHh(cgddzhib.getHh());
                        earlyWarning_cgrk.setProductNum(cgddzhib.getSpbm());
                        earlyWarning_cgrk.setProductName(cgddzhib.getSpmc());
                        earlyWarning_cgrk.setYqdhrq(cgddzhib.getJhdhrq());
                        earlyWarning_cgrk.setCheckDays(checkDays);
                        earlyWarning_cgrk.setInvalidDays(invalidDays);
                        earlyWarning_cgrk.setStatus(1);
                        earlyWarning_cgrkDao.save(earlyWarning_cgrk);
                    }
                }

            }else {
                throw new MyException("已经审批合格了");
            }
        }

    }

    @Override
    public void spNo(String djh, String spr, Date sprq) throws Exception {
        Cgddzhub byDjh = cgdddao.findByDjh(djh);
        if (byDjh.getZdr() == null){
            throw  new MyException("制单人为空");
        }
        if (byDjh.getZdr().equals(spr)){
            throw  new MyException("审批人与制单人不能一样");
        }else{
            if (byDjh.getIssp() == 1){
                throw  new MyException("已经审批过了");
            }
            if((byDjh.getSpsftg()!=null&&byDjh.getSpsftg() == 0)||byDjh.getSpsftg() == null){
                byDjh.setSpr(spr);
                byDjh.setSpsftg(0);
                byDjh.setSprq(sprq);
                byDjh.setIssp(1);
                cgdddao.updateCgddzhub(byDjh);
            }else {
                throw new MyException("已经审批合格了");
            }
        }

    }

    @Override
    public List<Cgddzhib> findZibByZhuId(Long id) {
        List<Cgddzhib> cgddzhibs = cgddzhidao.findByzid(id);
        return cgddzhibs;
    }

    @Override
    public Cgddzhib findZibByZiId(Long id) {
        Cgddzhib byId = cgddzhidao.findById(id);
        Cgddzhub byId1 = cgdddao.findById(byId.getZid());
        byId.setCgddzhub(byId1);
        return byId;
    }

    public  void SaveZhuAndZi(Cgddzhub cgdd_zhub) throws  Exception{
//        System.out.println("传入的==="+cgdd_zhub);
        DomainAttrValueConverterUtils<Cgddzhub> handler=new DomainAttrValueConverterUtils<>(cgdd_zhub);
        cgdd_zhub  =handler.handler(null,"issp","spsftg","isth","djzt","status","dhbz","rkbz","kpbz","ysbz");
        if (cgdd_zhub.getCgddzhibs()!=null){
            for (Cgddzhib a:cgdd_zhub.getCgddzhibs()){
                if (a.getSl()!=null&&a.getLjdhsl()!=null){
                    a.setYfwrksl(a.getSl()-a.getLjdhsl());
                }
                if(a.getHh()!=null && a.getJhdhrq() == null){
                    throw new MyException("没有写入计划到货日期");
                }
                if(a.getShuilv()!=null){
                    if (a.getShuilv() <1){
                        throw new MyException("税率小于了1%");
                    }
                    Float x = a.getShuilv();
                    a.setShuilv(x);
                }
            }
        }
        saveCgddZhiAndZhu(cgdd_zhub);

    }
    @Override
    public void saveCgddZhiAndZhu(Cgddzhub cgddzhub) throws Exception{
        cgdddao.addCgddzhub(cgddzhub);
        List<Cgddzhib> byzid = cgddzhub.getCgddzhibs();
        cgddzhub = cgdddao.findByDjh(cgddzhub.getDjh());
        if (byzid!=null){
            for (Cgddzhib cz:byzid){
                if (cz == null){
                    continue;
                }
                if (cz.getZid()==null){
                    cz.setZid(cgddzhub.getCgddzhubid());
                }
                if(cz.getHsdj()!=null&&cz.getWsdj()!=null&&cz.getShuilv()==null){
                     Float a = cz.getHsdj()/cz.getWsdj();
                     cz.setShuilv(a-1);
                }

                if(cz.getHsdj()!=null&&cz.getWsdj()==null&&cz.getShuilv()!=null){
                    Float a = cz.getHsdj()/(cz.getShuilv()+1);
                    cz.setWsdj(a);
                }

                if(cz.getHsdj()==null&&cz.getWsdj()!=null&&cz.getShuilv()!=null){
                    Float a = cz.getWsdj()*(cz.getShuilv()+1);
                    cz.setHsdj(a);
                }
                if(cz.getWsje()!=null&&cz.getShuilv()!=null){
                    cz.setSe(cz.getWsje()*cz.getShuilv());
                }
                if (cgddzhub.getDjh()!=null){
                    cz.setLydj(cgddzhub.getDjh());
                }
                if (cgddzhub.getIsth() == 1){
                    Long ljthsl = cz.getLjthsl();
                    cz.setLjthsl(ljthsl+1);
                }
                if(cz.getHgb()!=null&&cz.getHgb()==1&&cz.getGbr()==""){
                    cgdddao.deleteCgddzhub(cgddzhub.getCgddzhubid());
                    throw new MyException("行关闭出现问题");
                }
                if(cz.getHgb()!=null&&cz.getHgb()==0&&cz.getGbr()!=""){
                    cgdddao.deleteCgddzhub(cgddzhub.getCgddzhubid());
                    throw new MyException("行关闭出现问题");
                }
                if (cz.getSpbm()!=null){
                    cgddzhidao.addCgddzhib(cz);
                }
            }
        }
    }

    @Override
    public List<Cgddzhub> findByAllAndSfspIsZero(Cgddzhub cgddzhub) throws Exception {

        DomainAttrValueConverterUtils<Cgddzhub> handler=new DomainAttrValueConverterUtils<>(cgddzhub);
        Cgddzhub x  =handler.handler(null,"issp","spsftg","isth","djzt","status","dhbz","rkbz","kpbz","ysbz");
        x.setIssp(0);
        List<Cgddzhub> byPage = cgdddao.findByPage(x);
        return byPage;
    }

    public void SaveZib(Cgddzhib a, String xgr, Date xgrq) throws  Exception{
        if (a!=null){
            if (a.getShuilv()!=null){
                if (a.getShuilv()<1){
                    throw new MyException("税率小于了1%");
                }
//                Float shuilv = a.getShuilv()/100;
                Float shuilv = a.getShuilv();
                a.setShuilv(shuilv);
            }
        }
        saveZib(a);
        Cgddzhub byId = findById(a.getZid());
        byId.setXgr(xgr);
        byId.setXgrq(xgrq);
        updateById(byId);
    }

    public  void UpdateZhiB(Cgddzhib cgddzhib, String xgr, Date xgrq) throws Exception{


        if (cgddzhib!=null){
            if (cgddzhib.getShuilv()!=null){
                if (cgddzhib.getShuilv()<1){
                    throw new MyException("税率小于了1%");
                }
                Float x=cgddzhib.getShuilv();
                cgddzhib.setShuilv(x);
            }
        }
        updateZiById(cgddzhib);
        Cgddzhub byId = findById(cgddzhib.getZid());
        byId.setXgr(xgr);
        byId.setXgrq(xgrq);
        updateById(byId);
    }

    @Override
    public gys FindByGName(String name) throws Exception {
        gys byName = gysDao.findByName(name);
        return byName;
    }
}
