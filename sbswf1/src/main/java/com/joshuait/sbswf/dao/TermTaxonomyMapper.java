package com.joshuait.sbswf.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.joshuait.sbswf.entity.TermTaxonomy;

@Component
public interface TermTaxonomyMapper {
	public TermTaxonomy getById(long id);

	public List<TermTaxonomy> search(TermTaxonomy termtaxonomy);

	public void insert(TermTaxonomy termtaxonomy);

	public void update(TermTaxonomy termtaxonomy);

	public void delete(long id);

}
