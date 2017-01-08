package com.craft.Spring.Dao;

import java.util.List;
/*
 * 其他map继承方法：public interface SupplierMapper<T> extends BaseMapper<T>{
}

 */
public interface BaseMapper<T> {
	//添加实体
	int insert(T entity);
	//根据主键查询
	T selectByPk(T entity);
	//根据主键删除
	T deleteByPk(T entity);
	//根据主键修改
	T updateByPk(T entity);
	//根据对象动态生成SQL语句
	List<T> selectUseDyc(T entity);

}
