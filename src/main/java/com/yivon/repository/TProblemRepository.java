package com.yivon.repository;
import com.yivon.model.TProblemEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository
public interface TProblemRepository extends JpaRepository<TProblemEntity, Integer> {


}