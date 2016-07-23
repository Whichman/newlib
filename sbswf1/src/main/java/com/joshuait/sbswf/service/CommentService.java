package com.joshuait.sbswf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.joshuait.sbswf.dao.CommentMapper;
import com.joshuait.sbswf.entity.Comment;

@Component
public class CommentService {
	@Autowired
	private CommentMapper commentMapper;

	public Comment getById(long id) {
		return commentMapper.getById(id);
	}

	public List<Comment> search(Comment comment) {
		return commentMapper.search(comment);
	}

	public void insert(Comment comment) {
		commentMapper.insert(comment);
	}

	public void update(Comment comment) {
		commentMapper.update(comment);
	}

	public void delete(long id) {
		commentMapper.delete(id);
	}

}
