package com.linsys.model;

import java.sql.Blob;

public class ProductModel {
	int productID;
	String productTag,productName,MFGDate,EXPDate,costPrice,sellingPrice,Description,productType,AddedOn;
	Blob imageFile;
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public String getProductTag() {
		return productTag;
	}
	public void setProductTag(String productTag) {
		this.productTag = productTag;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getMFGDate() {
		return MFGDate;
	}
	public void setMFGDate(String mFGDate) {
		MFGDate = mFGDate;
	}
	public String getEXPDate() {
		return EXPDate;
	}
	public void setEXPDate(String eXPDate) {
		EXPDate = eXPDate;
	}
	public String getCostPrice() {
		return costPrice;
	}
	public void setCostPrice(String costPrice) {
		this.costPrice = costPrice;
	}
	public String getSellingPrice() {
		return sellingPrice;
	}
	public void setSellingPrice(String sellingPrice) {
		this.sellingPrice = sellingPrice;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public String getProductType() {
		return productType;
	}
	public void setProductType(String productType) {
		this.productType = productType;
	}
	public String getAddedOn() {
		return AddedOn;
	}
	public void setAddedOn(String addedOn) {
		AddedOn = addedOn;
	}
	public Blob getImageFile() {
		return imageFile;
	}
	public void setImageFile(Blob imageFile) {
		this.imageFile = imageFile;
	}
	
	
	
}
