package com.devpro.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.devpro.entities.LienHe;
import com.devpro.repositories.LienHeRepo;

@Service
public class LienHeService {
	
	@Autowired
	private LienHeRepo lienHeRepo;
	public LienHe saveLienHe(LienHe lienHe) {
		
		return lienHeRepo.save(lienHe);
	}
	
	public List<LienHe> getAllLienHe(){
		return lienHeRepo.findAll();
	}
	
	
	public LienHe getLienHeById(Integer id) {
		return lienHeRepo.findById(id).get();
	}
	
	public void deleteLienHe(Integer id) {
		lienHeRepo.deleteById(id);
	}
	
	
	
	
	/*
	 * @PersistenceContext protected EntityManager entityManager;//dùng để tạo những câu lệnh tùy biến nếu cần
	 * 
	 * @SuppressWarnings("unchecked") public List<Product> findProduct(Integer
	 * categoryId, Integer productId, Integer currentPage) { String jpql =
	 * "From Product p Where 1=1 "; if(categoryId != null && categoryId > 0) jpql +=
	 * "And p.category.id=" + categoryId; if(productId != null && productId > 0)
	 * jpql += "And p.id=" + productId; Query query =
	 * entityManager.createQuery(jpql, Product.class);
	 * 
	 * if(currentPage != null && currentPage > 0) {
	 * query.setFirstResult((currentPage-1) * HOME_SIZE_LIMIT);
	 * query.setMaxResults(HOME_SIZE_LIMIT); }
	 * 
	 * return query.getResultList(); }
	 */

}
