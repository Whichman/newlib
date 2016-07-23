package com.joshuait.sbswf.dao;

import java.util.List;

import com.joshuait.sbswf.entity.Term;

public interface TermMapper {
	public Term getById(long id);

	public List<Term> search(Term term);

	public void insert(Term term);

	public void update(Term term);

	public void delete(long id);

	public List<Term> getNewName();

	public List<Term> getNewName1();

	public List<Term> getNewName2();

	public List<Term> getPostsCategories(List<Long> postIds);

}
