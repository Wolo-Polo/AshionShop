package com.devpro.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.devpro.entities.LienHe;

@Repository
public interface LienHeRepo extends JpaRepository<LienHe, Integer>{

}
