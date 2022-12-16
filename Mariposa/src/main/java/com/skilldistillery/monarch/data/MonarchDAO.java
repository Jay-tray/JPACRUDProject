package com.skilldistillery.monarch.data;

import java.util.List;

import com.skilldistillery.monarch.entities.Monarch;

public interface MonarchDAO {

	Monarch findById(int id);
	List<Monarch> findAll();
	Monarch create(Monarch butterfly);
	Monarch update(int id, Monarch butterfly);
	boolean delete(int id);
}
