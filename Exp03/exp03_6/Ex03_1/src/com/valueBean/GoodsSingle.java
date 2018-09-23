package com.valueBean;

public class GoodsSingle {
	private String name;	
	private String product; 
	private float price;
	private int num;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}	
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	@Override
	public String toString() {
		return "GoodsSingle [name=" + name + ", product=" + product + ", price=" + price + ", num=" + num + "]";
	}
}
