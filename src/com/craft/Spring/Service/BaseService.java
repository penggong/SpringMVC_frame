package com.craft.Spring.Service;

import java.util.List;

/*
 * public interface SupplierService<T> extends BaseService<T> {	}
 */
public interface BaseService<T> {

	int insert(T entity) throws Exception;
	
	T selectByPk(int Pk);
	
	T select(T entity);
	
	int deleteByPk(T entity) throws Exception;
	
	int updateByPk(T entity) throws Exception;
	
	List<T> selectUseDyc(T entity);
}
