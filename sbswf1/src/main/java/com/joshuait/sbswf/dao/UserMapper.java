package com.joshuait.sbswf.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.joshuait.sbswf.entity.User;

@Component
public interface UserMapper {
	public User getById(Long id);

	public List<User> search(User user);

	public void insert(User user);

	public void update(User user);

	public void delete(Long id);

}