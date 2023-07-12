package com.haru.domain;

import java.util.Date;

public class TestVO {
	private String contentTitle;
	private String contents;
	private Date insDt;
	
	public String getContentTitle() {
		return contentTitle;
	}
	public void setContentTitle(String contentTitle) {
		this.contentTitle = contentTitle;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public Date getInsDt() {
		return insDt;
	}
	public void setInsDt(Date insDt) {
		this.insDt = insDt;
	}
	@Override
	public String toString() {
		return "TestVO [contentTitle=" + contentTitle + ", contents=" + contents + ", insDt=" + insDt + "]";
	}
	
	

	
	
	
	
}
