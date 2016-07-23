package com.joshuait.sbswf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.joshuait.sbswf.dao.TermMapper;
import com.joshuait.sbswf.entity.Term;

@Component
public class TermService {
	@Autowired
	private TermMapper termMapper;

	public Term getById(Long id) {
		return termMapper.getById(id);
	}

	public List<Term> search(Term term) {
		return termMapper.search(term);
	}

	public void insert(Term term) {
		termMapper.insert(term);
	}

	public void update(Term term) {
		termMapper.update(term);
	}

	public void delete(Long id) {
		termMapper.delete(id);
	}

	public List<Term> getNewName() {

		return termMapper.getNewName();
	}

	public List<Term> getNewName1() {

		return termMapper.getNewName1();
	}

	public List<Term> getNewName2() {

		return termMapper.getNewName2();
	}

}
