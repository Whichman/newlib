package com.joshuait.sbswf.entity;

public class TermTaxonomy {
	private Long termTaxonomyId;
	private Long termId;
	private String taxonomy;
	private String description;
	private Long parent;
	private Long count;

	public Long getTermTaxonomyId() {
		return termTaxonomyId;
	}

	public void setTermTaxonomyId(Long termTaxonomyId) {
		this.termTaxonomyId = termTaxonomyId;
	}

	public Long getTermId() {
		return termId;
	}

	public void setTermId(Long termId) {
		this.termId = termId;
	}

	public String getTaxonomy() {
		return taxonomy;
	}

	public void setTaxonomy(String taxonomy) {
		this.taxonomy = taxonomy;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Long getParent() {
		return parent;
	}

	public void setParent(Long parent) {
		this.parent = parent;
	}

	public Long getCount() {
		return count;
	}

	public void setCount(Long count) {
		this.count = count;
	}

	@Override
	public String toString() {
		return "TermTaxonomy [termTaxonomyId=" + termTaxonomyId + ", termId=" + termId + ", taxonomy=" + taxonomy
				+ ", description=" + description + ", parent=" + parent + ", count=" + count + "]";
	}

}
