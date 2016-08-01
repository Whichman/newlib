package com.joshuait.sbswf.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Post implements Serializable {
	private Long id;
	private Long postAuthor;
	private Date postDate;
	private Date postDateGmt;
	private String postContent;
	private String postTitle;
	private String postExcerpt;
	private String postStatus;
	private String pingStatus;
	private String postPassword;
	private String postName;
	private String toPing;
	private String Pinged;
	private Date postModified;
	private Date postModifiedGmt;
	private String postContentFiltered;
	private Long postParent;
	private String Guid;
	private Integer menuOrder;
	private String postType;
	private String postMimeType;
	private String commentStatus;
	private Long commentCount;
	private String displayName;
	private Long viewCount;
	private String name;
	private String commentAuthor;
	private String commentContent;
	private Date commentDate;
    private String taxonomy;
	private Long k;
	private Long v;
	private Long a;
	private Long b;
	private Long c;
	private Long c2;
	

	public Date getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(Date commentDate) {
		this.commentDate = commentDate;
	}
	public static int getShortNumber() {
		return short_number;
	}

	public static int getShortNumber1() {
		return short_number1;
	}
	public Long getC2() {
		return c2;
	}

	public void setC2(Long c2) {
		this.c2 = c2;
	}

	public Long getC() {
		return c;
	}

	public void setC(Long c) {
		this.c = c;
	}

	public Long getA() {
		return a;
	}

	public void setA(Long a) {
		this.a = a;
	}

	public Long getB() {
		return b;
	}

	public void setB(Long b) {
		this.b = b;
	}

	public Long getK() {
		return k;
	}

	public void setK(Long k) {
		this.k = k;
	}

	public Long getV() {
		return v;
	}

	public void setV(Long v) {
		this.v = v;
	}

	public String getTaxonomy() {
		return taxonomy;
	}

	public void setTaxonomy(String taxonomy) {
		this.taxonomy = taxonomy;
	}

	public String getCommentAuthor() {
		return commentAuthor;
	}
	
	public void setCommentAuthor(String commentAuthor) {
		this.commentAuthor = commentAuthor;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Long getViewCount() {
		return viewCount;
	}

	public void setViewCount(Long viewCount) {
		this.viewCount = viewCount;
	}

	public String getDisplayName() {
		return displayName;
	}

	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getPostAuthor() {
		return postAuthor;
	}

	public void setPostAuthor(Long postAuthor) {
		this.postAuthor = postAuthor;
	}

	public Date getPostDate() {
		return postDate;
	}

	public void setPostDate(Date postDate) {
		this.postDate = postDate;
	}

	public Date getPostDateGmt() {
		return postDateGmt;
	}

	public void setPostDateGmt(Date postDateGmt) {
		this.postDateGmt = postDateGmt;
	}

	public String getPostContent() {
		return postContent;
	}

	public static final int short_number = 200;

	public String getPostShortContent() {
		if (postContent.length() >= short_number) {

			return postContent.substring(0, short_number) + "...";

		} else {

			return postContent;
		}
	}
	
	public static final int short_number1 = 80;
	public String getPostShortContent1() {
		if(postContent == null){
			return "";
		}else if (postContent.length() >= short_number1) {
			return postContent.substring(0, short_number1);
		} else {
			return postContent;
		}
	}

	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}

	public String getPostTitle() {
		return postTitle;
	}

	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}

	public String getPostExcerpt() {
		return postExcerpt;
	}

	public void setPostExcerpt(String postExcerpt) {
		this.postExcerpt = postExcerpt;
	}

	public String getPostStatus() {
		return postStatus;
	}

	public void setPostStatus(String postStatus) {
		this.postStatus = postStatus;
	}

	public String getPingStatus() {
		return pingStatus;
	}

	public void setPingStatus(String pingStatus) {
		this.pingStatus = pingStatus;
	}

	public String getPostPassword() {
		return postPassword;
	}

	public void setPostPassword(String postPassword) {
		this.postPassword = postPassword;
	}

	public String getPostName() {
		return postName;
	}

	public void setPostName(String postName) {
		this.postName = postName;
	}

	public String getToPing() {
		return toPing;
	}

	public void setToPing(String toPing) {
		this.toPing = toPing;
	}

	public String getPinged() {
		return Pinged;
	}

	public void setPinged(String pinged) {
		Pinged = pinged;
	}

	public Date getPostModified() {
		return postModified;
	}

	public void setPostModified(Date postModified) {
		this.postModified = postModified;
	}

	public Date getPostModifiedGmt() {
		return postModifiedGmt;
	}

	public void setPostModifiedGmt(Date postModifiedGmt) {
		this.postModifiedGmt = postModifiedGmt;
	}

	public String getPostContentFiltered() {
		return postContentFiltered;
	}

	public void setPostContentFiltered(String postContentFiltered) {
		this.postContentFiltered = postContentFiltered;
	}

	public Long getPostParent() {
		return postParent;
	}

	public void setPostParent(Long postParent) {
		this.postParent = postParent;
	}

	public String getGuid() {
		return Guid;
	}

	public void setGuid(String guid) {
		Guid = guid;
	}

	public Integer getMenuOrder() {
		return menuOrder;
	}

	public void setMenuOrder(Integer menuOrder) {
		this.menuOrder = menuOrder;
	}

	public String getPostType() {
		return postType;
	}

	public void setPostType(String postType) {
		this.postType = postType;
	}

	public String getPostMimeType() {
		return postMimeType;
	}

	public void setPostMimeType(String postMimeType) {
		this.postMimeType = postMimeType;
	}

	public String getCommentStatus() {
		return commentStatus;
	}

	public void setCommentStatus(String commentStatus) {
		this.commentStatus = commentStatus;
	}

	public Long getCommentCount() {
		return commentCount;
	}

	public void setCommentCount(Long commentCount) {
		this.commentCount = commentCount;
	}

	@Override
	public String toString() {
		return "Post [id=" + id + ", postAuthor=" + postAuthor + ", postDate=" + postDate + ", postDateGmt="
				+ postDateGmt + ", postContent=" + postContent + ", postTitle=" + postTitle + ", postExcerpt="
				+ postExcerpt + ", postStatus=" + postStatus + ", pingStatus=" + pingStatus + ", postPassword="
				+ postPassword + ", postName=" + postName + ", toPing=" + toPing + ", Pinged=" + Pinged
				+ ", postModified=" + postModified + ", postModifiedGmt=" + postModifiedGmt + ", postContentFiltered="
				+ postContentFiltered + ", postParent=" + postParent + ", Guid=" + Guid + ", menuOrder=" + menuOrder
				+ ", postType=" + postType + ", postMimeType=" + postMimeType + ", commentStatus=" + commentStatus
				+ ", commentCount=" + commentCount + ", displayName=" + displayName + ", viewCount=" + viewCount
				+ ", name=" + name + ", commentAuthor=" + commentAuthor + ", commentContent=" + commentContent
				+ ", commentDate=" + commentDate + ", taxonomy=" + taxonomy + ", k=" + k + ", v=" + v + ", a=" + a
				+ ", b=" + b + ", c=" + c + ", c2=" + c2 + "]";
	}

	
}
