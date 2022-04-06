package com.da.st5.model;

public class ContentModel {
	private int id;
	private int newid;
	private String content1;
	private String content2;
	private String content3;
	
	public ContentModel() {
		
	}
	public ContentModel(int id,int newid,String content1,
			String content2,String content3) {
		this.id = id;
        this.newid = newid;
        this.content1 = content1;
        this.content2 = content2;
        this.content3 = content3;
	}
	
	@Override
	public String toString() {
		return "ContentModel [id=" + id + ", newid=" + newid + ", content1=" + content1 + ", content2=" + content2
				+ ", content3=" + content3 + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getNewid() {
		return newid;
	}
	public void setNewid(int newid) {
		this.newid = newid;
	}
	public String getContent1() {
		return content1;
	}
	public void setContent1(String content1) {
		this.content1 = content1;
	}
	public String getContent2() {
		return content2;
	}
	public void setContent2(String content2) {
		this.content2 = content2;
	}
	public String getContent3() {
		return content3;
	}
	public void setContent3(String content3) {
		this.content3 = content3;
	}

}
