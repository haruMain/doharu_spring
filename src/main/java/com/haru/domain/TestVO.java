package com.haru.domain;

public class TestVO {
	private int num;
	private String title;
	private String content;
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
	@Override
	public String toString() {
		return "TestVO [num=" + num + ", title=" + title + ", content=" + content + "]";
	}
	
	
}
