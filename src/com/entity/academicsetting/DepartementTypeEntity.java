package com.entity.academicsetting;

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
@Table(name="DepartementTypeEntity")
public class DepartementTypeEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String deptType;
	private int deleteStatus;
	
	
	public DepartementTypeEntity() {
		
	}
	public DepartementTypeEntity(String deptType) {
		super();
		this.deptType = deptType;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDeptType() {
		return deptType;
	}
	public void setDeptType(String deptType) {
		this.deptType = deptType;
	}
	public int getDeleteStatus() {
		return deleteStatus;
	}
	public void setDeleteStatus(int deleteStatus) {
		this.deleteStatus = deleteStatus;
	}
	

}
