package com.da.st5.model;


public class NewsModel extends AbstractModel<NewsModel> {
	private String title;
	private String thumbnail;
	private String shortDescription;
	private String content;
	private int categoryid;

	
	public NewsModel() {

	}

	public NewsModel(int id,String title,String thumbnail,
			String shortDescription,String content,int categoryid,String createdDate,
			String createdBy) {
		this.title = title;
        this.thumbnail = thumbnail;
        this.shortDescription = shortDescription;
        this.content = content;
        this.categoryid = categoryid;
        this.setCreatedDate(createdDate);
        this.setCreatedBy(createdBy);
        this.setId(id);
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public String getShortDescription() {
		return shortDescription;
	}

	public void setShortDescription(String shortDescription) {
		this.shortDescription = shortDescription;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getCategoryid() {
		return categoryid;
	}

	public void setCategoryid(int categoryid) {
		this.categoryid = categoryid;
	}

}
