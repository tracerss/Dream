package com.yivon.repository;
import com.yivon.model.TStaffEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface TStaffRepository extends JpaRepository<TStaffEntity, Integer> {

}
