package com.joshuait.sbswf.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.joshuait.sbswf.entity.Comment;

@Component
public interface CommentMapper {
	public Comment getById(long id);

	public List<Comment> search(Comment comment);

	public void insert(Comment comment);

	public void update(Comment comment);

	public void delete(long id);

}
