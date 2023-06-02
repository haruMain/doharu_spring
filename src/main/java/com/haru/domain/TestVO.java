package com.haru.domain;

public class TestVO {
	private int num;
	private String title;
	private String content;
	private String regDate;
	private String modDate;
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
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
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public String getModDate() {
		return modDate;
	}
	public void setModDate(String modDate) {
		this.modDate = modDate;
	}
	@Override
	public String toString() {
		return "TestVO [num=" + num + ", title=" + title + ", content=" + content + ", regDate=" + regDate
				+ ", modDate=" + modDate + "]";
	}
	
	
}
