package com.yivon.repository;

import com.yivon.model.TAccountEntity;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository

public interface TaccountRepository  extends JpaRepository<TAccountEntity, Integer> {


}
