package com.haru.domain;


public class BoardVO {
		
		
	 	private Long seq;
	    private String title;
	    private String content;
	    private String insDt;
	    private String updDt;
	    
		public Long getSeq() {
			return seq;
		}
		public void setSeq(Long seq) {
			this.seq = seq;
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
		public String getInsDt() {
			return insDt;
		}
		public void setInsDt(String insDt) {
			this.insDt = insDt;
		}
		public String getUpdDt() {
			return updDt;
		}
		public void setUpdDt(String updDt) {
			this.updDt = updDt;
		}
		@Override
		public String toString() {
			return "BoardVO [seq=" + seq + ", title=" + title + ", content=" + content + ", insDt=" + insDt + ", updDt="
					+ updDt + "]";
		}
	    
	    

}
