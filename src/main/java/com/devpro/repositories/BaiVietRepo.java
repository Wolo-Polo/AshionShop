package com.devpro.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devpro.entities.BaiViet;
@Repository
public interface BaiVietRepo extends JpaRepository<BaiViet, Integer>{

}
