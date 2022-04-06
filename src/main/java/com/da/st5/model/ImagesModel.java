package com.da.st5.model;

public class ImagesModel {
	private int id;
	private int newid;
	private String img1;
	private String img2;
	
	public ImagesModel() {
		
	}
	public ImagesModel(int id,int newid,String img1,
			String img2) {
		this.id = id;
        this.newid = newid;
        this.img1 = img1;
        this.img2 = img2;
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
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}
	
	

}
