package com.yivon.repository;

import com.yivon.model.TDetailEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

public interface TdetailRepository extends JpaRepository<TDetailEntity,Integer> {
    @Modifying      // 说明该方法是修改操作
    @Transactional
    @Query("select a.happenYear from TDetailEntity as a where a.staffId=:staffID order by a.happenYear asc")
    public void getID(@Param("staffID") int staffID);
}
