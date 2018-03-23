package com.yivon.repository;
import com.yivon.model.TStaffEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface TStaffRepository extends JpaRepository<TStaffEntity, Integer> {
  /*  @Modifying      // 说明该方法是修改操作
    @Transactional  // 说明该方法是事务性操作
    // 定义查询
    // @Param注解用于提取参数
    @Query("update TStaffEntity us set us.staffId=:qstaffid, us.account=:qaccount, " +
            "us.psd=:qpsd, us.name=:qname,us.phone=:qphone, " +
            "us.department=:qdepartment,us.postion=:qpostion," +
            "us.entrytime=:qentrytime ,us.createtime=:qcreatetime,us.updatetime=:qupdatetime  where us.staffId=:qId")
    public void updateUser(@Param("qstaffId") String staffid, @Param("qaccount") String account,
                           @Param("qpsd") String qpsd, @Param("qname") String name, @Param("qphone") String phone, @Param("qdepartment") String department, @Param("postion") String postion, @Param("qentrytime") Date entrytime, @Param("qcreatetime") Date createtime, @Param("qupdatetime") Date updatetime, @Param("staffId") Integer id);
*/
}
