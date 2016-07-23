package com.joshuait.sbswf.entity;

import java.io.Serializable;

public class Term implements Serializable {
	private Long id;
	private String name;
	private String slug;
	private Long temGroup;
	private String taxonomy;
	private Long postId;
	
	public Long getPostId() {
		return postId;
	}

	public void setPostId(Long postId) {
		this.postId = postId;
	}

	public String getTaxonomy() {
		return taxonomy;
	}

	public void setTaxonomy(String taxonomy) {
		this.taxonomy = taxonomy;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSlug() {
		return slug;
	}

	public void setSlug(String slug) {
		this.slug = slug;
	}

	public Long getTemGroup() {
		return temGroup;
	}

	public void setTemGroup(Long temGroup) {
		this.temGroup = temGroup;
	}

	@Override
	public String toString() {
		return "Term [id=" + id + ", name=" + name + ", slug=" + slug + ", temGroup=" + temGroup + "]";
	}

}
