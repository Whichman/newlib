package com.joshuait.sbswf.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.joshuait.sbswf.dao.TermTaxonomyMapper;
import com.joshuait.sbswf.entity.TermTaxonomy;

@Component
public class TermTaxonomyService {
	@Autowired
	private TermTaxonomyMapper termtaxonomyMapper;

	public TermTaxonomy getById(long id) {
		return termtaxonomyMapper.getById(id);
	}

	public List<TermTaxonomy> search(TermTaxonomy termtaxonomy) {
		return termtaxonomyMapper.search(termtaxonomy);
	}

	public void insert(TermTaxonomy termtaxonomy) {
		termtaxonomyMapper.insert(termtaxonomy);
	}

	public void update(TermTaxonomy termtaxonomy) {
		termtaxonomyMapper.update(termtaxonomy);
	}

	public void delete(long id) {
		termtaxonomyMapper.delete(id);
	}

}
