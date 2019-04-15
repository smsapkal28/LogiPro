package com.entity.subject;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="SubjectCategoryEntity")
public class SubjectCategoryEntity {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String subjectCatName;
	private String subjectCatCode;
	private String subjectCatDes;
	private int deleteStatus;
	
	public SubjectCategoryEntity() {
		
	}

	public SubjectCategoryEntity(String subjectCatName, String subjectCatCode, String subjectCatDes) {

		this.subjectCatName = subjectCatName;
		this.subjectCatCode = subjectCatCode;
		this.subjectCatDes = subjectCatDes;
		this.deleteStatus=0;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getSubjectCatName() {
		return subjectCatName;
	}

	public void setSubjectCatName(String subjectCatName) {
		this.subjectCatName = subjectCatName;
	}

	public String getSubjectCatCode() {
		return subjectCatCode;
	}

	public void setSubjectCatCode(String subjectCatCode) {
		this.subjectCatCode = subjectCatCode;
	}

	public String getSubjectCatDes() {
		return subjectCatDes;
	}

	public void setSubjectCatDes(String subjectCatDes) {
		this.subjectCatDes = subjectCatDes;
	}

	public int getDeleteStatus() {
		return deleteStatus;
	}

	public void setDeleteStatus(int deleteStatus) {
		this.deleteStatus = deleteStatus;
	}
	
	
	

}
