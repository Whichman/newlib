package com.joshuait.sbswf.vo;

import java.util.Date;

public class PostSearchResultVo {

	private Long postId;
	private String title;
	private String content;
	private Long authorId;
	private String authorName;
	private String authorHeaderImageUrl;
	private Long viewCount;
	private String category;// 文章分类--分类
	private String type;// 文章分类--类型
	private String attr;// 文章分类--属性
	private Date postDate;
	
	public static final int short_number = 200;

	public String getPostShortContent() {
		if (content.length() >= short_number) {

			return content.substring(0, short_number) + "...";

		} else {

			return content;
		}
	}

	public Date getPostDate() {
		return postDate;
	}

	public void setPostDate(Date postDate) {
		this.postDate = postDate;
	}

	public Long getPostId() {
		return postId;
	}

	public void setPostId(Long postId) {
		this.postId = postId;
	}

	public String getAttr() {
		return attr;
	}

	public void setAttr(String attr) {
		this.attr = attr;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Long getAuthorId() {
		return authorId;
	}

	public void setAuthorId(Long authorId) {
		this.authorId = authorId;
	}

	public String getAuthorName() {
		return authorName;
	}

	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}

	public String getAuthorHeaderImageUrl() {
		return authorHeaderImageUrl;
	}

	public void setAuthorHeaderImageUrl(String authorHeaderImageUrl) {
		this.authorHeaderImageUrl = authorHeaderImageUrl;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Long getViewCount() {
		return viewCount;
	}

	public void setViewCount(Long viewCount) {
		this.viewCount = viewCount;
	}

	@Override
	public String toString() {
		return "PostSearchResultVo [title=" + title + ", content=" + content + ", authorId=" + authorId
				+ ", authorName=" + authorName + ", authorHeaderImageUrl=" + authorHeaderImageUrl + ", type=" + type
				+ ", category=" + category + ", viewCount=" + viewCount + "]";
	}

}
