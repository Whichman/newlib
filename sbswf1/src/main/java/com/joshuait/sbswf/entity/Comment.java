package com.joshuait.sbswf.entity;

import java.io.Serializable;
import java.util.Date;

public class Comment implements Serializable {
	private Long commentId;
	private Long commentPostId;
	private String commentAuthor;
	private String commentAuthorEmail;
	private String commentAuthorUrl;
	private String commentAuthorIp;
	private Date commentDate;
	private Date commentDateGmt;
	private String commentContent;
	private Integer commentKarma;
	private String commentApproved;
	private String commentAgent;
	private String commentType;
	private Long commentParent;
	private Long userId;

	public Long getCommentId() {
		return commentId;
	}

	public void setCommentId(Long commentId) {
		this.commentId = commentId;
	}

	public Long getCommentPostId() {
		return commentPostId;
	}

	public void setCommentPostId(Long commentPostId) {
		this.commentPostId = commentPostId;
	}

	public String getCommentAuthor() {
		return commentAuthor;
	}

	public void setCommentAuthor(String commentAuthor) {
		this.commentAuthor = commentAuthor;
	}

	public String getCommentAuthorEmail() {
		return commentAuthorEmail;
	}

	public void setCommentAuthorEmail(String commentAuthorEmail) {
		this.commentAuthorEmail = commentAuthorEmail;
	}

	public String getCommentAuthorUrl() {
		return commentAuthorUrl;
	}

	public void setCommentAuthorUrl(String commentAuthorUrl) {
		this.commentAuthorUrl = commentAuthorUrl;
	}

	public String getCommentAuthorIp() {
		return commentAuthorIp;
	}

	public void setCommentAuthorIp(String commentAuthorIp) {
		this.commentAuthorIp = commentAuthorIp;
	}

	public Date getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(Date commentDate) {
		this.commentDate = commentDate;
	}

	public Date getCommentDateGmt() {
		return commentDateGmt;
	}

	public void setCommentDateGmt(Date commentDateGmt) {
		this.commentDateGmt = commentDateGmt;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public Integer getCommentKarma() {
		return commentKarma;
	}

	public void setCommentKarma(Integer commentKarma) {
		this.commentKarma = commentKarma;
	}

	public String getCommentApproved() {
		return commentApproved;
	}

	public void setCommentApproved(String commentApproved) {
		this.commentApproved = commentApproved;
	}

	public String getCommentAgent() {
		return commentAgent;
	}

	public void setCommentAgent(String commentAgent) {
		this.commentAgent = commentAgent;
	}

	public String getCommentType() {
		return commentType;
	}

	public void setCommentType(String commentType) {
		this.commentType = commentType;
	}

	public Long getCommentParent() {
		return commentParent;
	}

	public void setCommentParent(Long commentParent) {
		this.commentParent = commentParent;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	@Override
	public String toString() {
		return "Comment [commentId=" + commentId + ", commentPostId=" + commentPostId + ", commentAuthor="
				+ commentAuthor + ", commentAuthorEmail=" + commentAuthorEmail + ", commentAuthorUrl="
				+ commentAuthorUrl + ", commentAuthorIp=" + commentAuthorIp + ", commentDate=" + commentDate
				+ ", commentDateGmt=" + commentDateGmt + ", commentContent=" + commentContent + ", commentKarma="
				+ commentKarma + ", commentApproved=" + commentApproved + ", commentAgent=" + commentAgent
				+ ", commentType=" + commentType + ", commentParent=" + commentParent + ", userId=" + userId + "]";
	}
}
