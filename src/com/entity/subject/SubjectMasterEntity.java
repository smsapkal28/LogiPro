
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
@Table(name="SubjectMasterEntity")
public class SubjectMasterEntity {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private int subCourseCode;

	
	private String subName;
	private String subCode;
	private String subDesc;
	private int deleteStatus;
	public SubjectMasterEntity() {
		
	}
	public SubjectMasterEntity(int subCourseCode,  String subName, String subCode,
			String subDesc) {
		
		this.subCourseCode = subCourseCode;
		
		
		this.subName = subName;
		this.subCode = subCode;
		this.subDesc = subDesc;
		this.deleteStatus=0;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSubCourseCode() {
		return subCourseCode;
	}
	public void setSubCourseCode(int subCourseCode) {
		this.subCourseCode = subCourseCode;
	}
	
	public String getSubName() {
		return subName;
	}
	public void setSubName(String subName) {
		this.subName = subName;
	}
	public String getSubCode() {
		return subCode;
	}
	public void setSubCode(String subCode) {
		this.subCode = subCode;
	}
	public String getSubDesc() {
		return subDesc;
	}
	public void setSubDesc(String subDesc) {
		this.subDesc = subDesc;
	}
	public int getDeleteStatus() {
		return deleteStatus;
	}
	public void setDeleteStatus(int deleteStatus) {
		this.deleteStatus = deleteStatus;
	}
	
	
	

}
