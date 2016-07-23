package com.joshuait.sbswf.vo;

public class Page {
	private Long pageNum;// 当前显示的第几页
	private Long pageSize;// 一页显示多少数据
	private Long elementCount;// 总共多少条数据

	// 开始行号（mysql limit 第一个参数）
	public Long getStartNum() {
		// (2-1)*3
		return (this.getPageNum() - 1) * this.getPageSize();
	}

	// 是否有上一页
	public boolean getHasPrePage() {
		boolean hasPrePage = true;
		Long pageCount = this.getPageCount();// 总计有多少页
		if (pageCount <= 1) {
			hasPrePage = false;
		} else if (getPageNum() == 1) {
			hasPrePage = false;
		}

		return hasPrePage;
	}

	// 是否有下一页
	public boolean getHasNextPage() {
		boolean hasNextPage = true;
		Long pageCount = this.getPageCount();// 总计有多少页
		if (getPageNum() >= pageCount) {
			hasNextPage = false;
		}

		return hasNextPage;
	}

	// 总共多少页
	public Long getPageCount() {
		long n = this.elementCount / this.getPageSize();
		long m = this.elementCount % this.getPageSize() == 0 ? 0 : 1;
		return n + m;
	}

	// 每页显示几条数据
	public Long getPageSize() {
		return pageSize == null ? 10 : pageSize;
	}

	public void setPageSize(Long pageSize) {
		this.pageSize = pageSize;
	}

	// 当前显示第几页
	public Long getPageNum() {
		return pageNum == null ? 1 : pageNum;
	}

	public void setPageNum(Long pageNum) {
		this.pageNum = pageNum;
	}

	public Long getElementCount() {
		return elementCount;
	}

	public void setElementCount(Long elementCount) {
		this.elementCount = elementCount;
	}

}
