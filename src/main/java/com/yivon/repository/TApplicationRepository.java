package com.yivon.repository;

import com.yivon.model.TApplicationEntity;
import org.omg.PortableInterceptor.INACTIVE;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TApplicationRepository extends JpaRepository<TApplicationEntity, Integer> {
    List<TApplicationEntity> findAllByStatus(Integer I);
}
