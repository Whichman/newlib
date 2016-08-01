package com.joshuait.sbswf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.joshuait.sbswf.dao.UserMapper;
import com.joshuait.sbswf.entity.User;

@Component
public class UserService {
	@Autowired
	private UserMapper userMapper;

	public User getById(Long id) {
		return userMapper.getById(id);
	}

	public List<User> search(User user) {
		return userMapper.search(user);
	}

	public void insert(User user) {
		userMapper.insert(user);
	}

	public void update(User user) {
		userMapper.update(user);
	}

	public void delete(Long id) {
		userMapper.delete(id);
	}
//查询后台用户页面
	public List<User> getByUser(User user) {
		return userMapper.getByUser(user);
	}
}
