package com.devpro.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devpro.entities.NguoiDung;
@Repository
public interface NguoiDungRepo extends JpaRepository<NguoiDung, Integer>{

}
