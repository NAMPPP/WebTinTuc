package com.da.st5.model;

public class CategoryModel extends AbstractModel<CategoryModel>{
	private String code;
	private String name;
	
	public CategoryModel() {

    }

    public CategoryModel(int id, String name, String code) {
        this.code = code;
        this.name = name;
        this.setId(id);
    }

	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

}
