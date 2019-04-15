/**
 * @author Devil IndiatechSoft
 * 
 */
package com.entity.course;

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
@Table(name = "coursecategory")
public class CourseCategoryEntity {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String catName;
	private String catCode;
	private int deleteStatus;
	
	public CourseCategoryEntity() {}
	
	
	public CourseCategoryEntity(String catName, String catCode) {
		
		this.catName = catName;
		this.catCode = catCode;
		this.deleteStatus =0;
	}
	
	public int getDeleteStatus() {
		return deleteStatus;
	}
	public void setDeleteStatus(int deleteStatus) {
		this.deleteStatus = deleteStatus;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCatName() {
		return catName;
	}
	public void setCatName(String catName) {
		this.catName = catName;
	}
	public String getCatCode() {
		return catCode;
	}
	public void setCatCode(String catCode) {
		this.catCode = catCode;
	}
	
	
	
}
