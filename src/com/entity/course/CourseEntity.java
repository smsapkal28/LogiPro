package com.entity.course;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Devil IndiatechSoft
/**
 * @author Devil
 *
 */

@Entity
@Table(name="course")

public class CourseEntity {

	

	@Id
	@GeneratedValue(strategy =GenerationType.IDENTITY)
	private int id;
	private int catId;
	private String cName;
	private String cCode;
	private int semester;
	private String description;
	private int deleteStatus;
	
	
	public CourseEntity() {}
	
	public CourseEntity(int catId, String cName, String cCode, int semester, String description) {
		super();
		this.catId = catId;
		this.cName = cName;
		this.cCode = cCode;
		this.semester = semester;
		this.description = description;
		this.deleteStatus =0;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCatId() {
		return catId;
	}
	public void setCatId(int catId) {
		this.catId = catId;
	}
	public String getcName() {
		return cName;
	}
	public void setcName(String cName) {
		this.cName = cName;
	}
	public String getcCode() {
		return cCode;
	}
	public void setcCode(String cCode) {
		this.cCode = cCode;
	}
	
	
	public int getSemester() {
		return semester;
	}
	public void setSemester(int semester) {
		this.semester = semester;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getDeleteStatus() {
		return deleteStatus;
	}
	public void setDeleteStatus(int deleteStatus) {
		this.deleteStatus = deleteStatus;
	}
	
	
	
	
	
	
}
