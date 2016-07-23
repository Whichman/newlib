package com.joshuait.sbswf.entity;

import java.io.Serializable;

public class Option implements Serializable {
	private Long optionId;
	private String optionName;
	private String optionValue;
	private String autoLoad;

	public Long getOptionId() {
		return optionId;
	}

	public void setOptionId(Long optionId) {
		this.optionId = optionId;
	}

	public String getOptionName() {
		return optionName;
	}

	public void setOptionName(String optionName) {
		this.optionName = optionName;
	}

	public String getOptionValue() {
		return optionValue;
	}

	public void setOptionValue(String optionValue) {
		this.optionValue = optionValue;
	}

	public String getAutoLoad() {
		return autoLoad;
	}

	public void setAutoLoad(String autoLoad) {
		this.autoLoad = autoLoad;
	}

	@Override
	public String toString() {
		return "Option [optionId=" + optionId + ", optionName=" + optionName + ", optionValue=" + optionValue
				+ ", autoLoad=" + autoLoad + "]";
	}

}
