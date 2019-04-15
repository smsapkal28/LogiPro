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
@Table(name = "DesignationEntity") 
public class DesignationEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String desigation;
	private int deleteStatus;
	
	public DesignationEntity() {}
	
	public DesignationEntity(int id, String desigation, int deleteStatus) {
		super();
		this.id = id;
		this.desigation = desigation;
		this.deleteStatus = deleteStatus;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDesigation() {
		return desigation;
	}

	public void setDesigation(String desigation) {
		this.desigation = desigation;
	}

	public int getDeleteStatus() {
		return deleteStatus;
	}

	public void setDeleteStatus(int deleteStatus) {
		this.deleteStatus = deleteStatus;
	}

	

	
	
	

}