package com.craft.Spring.Service;

import java.util.List;

import com.craft.Spring.entity.Page;

/*
 * public interface SupplierService<T> extends BaseService<T> {	}
 */
public interface BaseService<T> {
    //增加单个对象
	public int insert(T entity) throws Exception;
	
	public T selectByPk(int Pk);
	
	public T select(T entity);
	
	public List<T> selectUseDyc(T entity);
	
	//通过关键字分页查询
	public Page<T> selectPage(Page<T> page);
	
	//通过多条件分页查询
	public Page<T> selectPageUseDyc(Page<T> page);
	
	public int update(T entity) throws Exception;
	
	public int deleteByPk(T entity) throws Exception;
	
	//通过主键（数组）批量删除数据
	public int deleteList(String [] pks) throws Exception;
	
}
