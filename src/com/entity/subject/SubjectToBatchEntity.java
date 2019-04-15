/**
 * 
 */
package com.entity.subject;


import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Devil
 *
 */
@Entity
@Table(name="SubjectToBatchEntity")
public class SubjectToBatchEntity {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private int courseCode;
	private int batchCode;
	private int subCatCode;
	
	private String subjectsList;
	private int deleteStatus;
	public SubjectToBatchEntity() {
		
	}
	public SubjectToBatchEntity(int courseCode, int batchCode, int subCatCode, String subjectsList) {
		super();
		this.courseCode = courseCode;
		this.batchCode = batchCode;
		this.subCatCode = subCatCode;
		this.subjectsList = subjectsList;
		this.deleteStatus=0;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCourseCode() {
		return courseCode;
	}
	public void setCourseCode(int courseCode) {
		this.courseCode = courseCode;
	}
	public int getBatchCode() {
		return batchCode;
	}
	public void setBatchCode(int batchCode) {
		this.batchCode = batchCode;
	}
	public int getSubCatCode() {
		return subCatCode;
	}
	public void setSubCatCode(int subCatCode) {
		this.subCatCode = subCatCode;
	}
	public String getSubjectsList() {
		return subjectsList;
	}
	public void setSubjectsList(String subjectsList) {
		this.subjectsList = subjectsList;
	}
	public int getDeleteStatus() {
		return deleteStatus;
	}
	public void setDeleteStatus(int deleteStatus) {
		this.deleteStatus = deleteStatus;
	}
	
}
