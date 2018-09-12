package com;

public class Student {
	private String id;
	private String name;
    private String sex;
    private String classes;
    private double grade;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getClasses() {
		return classes;
	}
	public void setClasses(String classes) {
		this.classes = classes;
	}
	public double getGrade() {
		return grade;
	}
	public void setGrade(double grade) {
		this.grade = grade;
	}
	 public Student(String id, String name, String sex, String classes, double grade) {
			super();
			this.id = id;
			this.name = name;
			this.sex = sex;
			this.classes = classes;
			this.grade = grade;
		}
}
