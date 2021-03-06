package cn.cuit.gyl.dao.business;

import cn.cuit.gyl.domain.business.Cgfp_zhub;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;
//采购发票主表dao

@Repository("iCgfp_zhubDao")
public interface ICgfp_zhubDao {
    //添加一条信息
    @Insert("insert into cgfp_zhub " +
            "(gs,fph,fprq,pdrq,gys,cgbm,fplx,ywy,bz,zdsl,isycyf,zdr,zdrq,spr,sprq,sfsp,spsftg,xgr,xgrq,status) " +
            "values " +
            "(#{gs},#{fph},#{fprq},#{pdrq},#{gys},#{cgbm},#{fplx},#{ywy},#{bz},#{zdsl},#{isycyf}," +
            "#{zdr},#{zdrq},#{spr},#{sprq},#{sfsp},#{spsftg},#{xgr},#{xgrq},#{status})")
    void save(Cgfp_zhub cgfp_zhub) throws Exception;

    //根据发票号fph查询信息
    @Select("select * from cgfp_zhub where fph=#{fph}")
    Cgfp_zhub findByFph(String fph) throws Exception;

    //根据有的主表信息进行满足要求查询
    @Select({
            "<script>" +
                    "select * from cgfp_zhub where 1=1 " +
                    "<if test='gs!=null and gs!=\"\"'>and gs=#{gs}</if>" +
                    "<if test='fph!=null and fph!=\"\"'>and fph=#{fph}</if>" +
                    "<if test='fprq!=null'>and fprq=#{fprq}</if>" +
                    "<if test='pdrq!=null'>and pdrq=#{pdrq}</if>" +
                    "<if test='gys!=null and gys!=\"\"'>and gys=#{gys}</if>" +
                    "<if test='cgbm!=null and cgbm!=\"\"'>and cgbm=#{cgbm}</if>" +
                    "<if test='fplx!=null and fplx!=\"\"'>and fplx=#{fplx}</if>" +
                    "<if test='ywy!=null and ywy!=\"\"'>and ywy=#{ywy}</if>" +
                    "<if test='bz!=null and bz!=\"\"'>and bz=#{bz}</if>" +
                    "<if test='zdsl!=null'>and zdsl=#{zdsl}</if>" +
                    "<if test='isycyf!=null'>and isycyf=#{isycyf}</if>" +
                    "<if test='zdr!=null and zdr!=\"\"'>and zdr=#{zdr} </if>" +
                    "<if test='zdrq!=null'>and zdrq=#{zdrq} </if>" +
                    "<if test='spr!=null and spr!=\"\"'>and spr=#{spr} </if>" +
                    "<if test='sprq!=null'>and sprq=#{sprq} </if>" +
                    "<if test='sfsp!=null'>and sfsp=#{sfsp} </if>" +
                    "<if test='spsftg!=null'>and spsftg=#{spsftg} </if>" +
                    "<if test='xgr!=null and xgr!=\"\"'>and xgr=#{xgr} </if>" +
                    "<if test='xgrq!=null'>and xgrq=#{xgrq} </if>" +
                    "<if test='status!=null'>and status=#{status} </if>" +
                    "</script>"
    })
    List<Cgfp_zhub> findByAll(Cgfp_zhub cgfp_zhub) throws Exception;

    //根据id查询信息
    @Select("select * from Cgfp_zhub where cgfp_zhub_id=#{cgfp_zhub_id}")
    Cgfp_zhub findById(Integer cgfp_zhub_id) throws Exception;

    //根据id更新信息
    @Update("update cgfp_zhub set " +
            "gs=#{gs}," +
            "fph=#{fph}," +
            "fprq=#{fprq}," +
            "pdrq=#{pdrq}," +
            "gys=#{gys}," +
            "cgbm=#{cgbm}," +
            "fplx=#{fplx}," +
            "ywy=#{ywy}," +
            "bz=#{bz}," +
            "zdsl=#{zdsl}," +
            "isycyf=#{isycyf}," +
            "zdr=#{zdr}," +
            "zdrq=#{zdrq},spr=#{spr},sprq=#{sprq},sfsp=#{sfsp},spsftg=#{spsftg}," +
            "xgr=#{xgr},xgrq=#{xgrq},status=#{status}" +
            " where cgfp_zhub_id=#{cgfp_zhub_id}")
    void updateById(Cgfp_zhub cgfp_zhub) throws Exception;

    //根据id删除信息
    @Delete("delete from Cgfp_zhub where cgfp_zhub_id=#{cgfp_zhub_id}")
    void deleteById(Integer cgfp_zhub_id) throws Exception;

    //根据有的主表信息进行满足要求查询
    @Select({
            "<script>" +
                    "select * from cgfp_zhub where sfsp=0 " +
                    "<if test='gs!=null and gs!=\"\"'>and gs=#{gs}</if>" +
                    "<if test='fph!=null and fph!=\"\"'>and fph=#{fph}</if>" +
                    "<if test='fprq!=null'>and fprq=#{fprq}</if>" +
                    "<if test='pdrq!=null'>and pdrq=#{pdrq}</if>" +
                    "<if test='gys!=null and gys!=\"\"'>and gys=#{gys}</if>" +
                    "<if test='cgbm!=null and cgbm!=\"\"'>and cgbm=#{cgbm}</if>" +
                    "<if test='fplx!=null and fplx!=\"\"'>and fplx=#{fplx}</if>" +
                    "<if test='ywy!=null and ywy!=\"\"'>and ywy=#{ywy}</if>" +
                    "<if test='bz!=null and bz!=\"\"'>and bz=#{bz}</if>" +
                    "<if test='zdsl!=null'>and zdsl=#{zdsl}</if>" +
                    "<if test='isycyf!=null'>and isycyf=#{isycyf}</if>" +
                    "<if test='zdr!=null and zdr!=\"\"'>and zdr=#{zdr} </if>" +
                    "<if test='zdrq!=null'>and zdrq=#{zdrq} </if>" +
                    "<if test='spr!=null and spr!=\"\"'>and spr=#{spr} </if>" +
                    "<if test='sprq!=null'>and sprq=#{sprq} </if>" +
                    "<if test='spsftg!=null'>and spsftg=#{spsftg} </if>" +
                    "<if test='xgr!=null and xgr!=\"\"'>and xgr=#{xgr} </if>" +
                    "<if test='xgrq!=null'>and xgrq=#{xgrq} </if>" +
                    "<if test='status!=null'>and status=#{status} </if>" +
                    "</script>"
    })
    List<Cgfp_zhub> findAllAndSfshIsZero(Cgfp_zhub cgfp_zhub) throws Exception;

}
