package com.Master.PreDetails.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "statemaster" , catalog = "envosys")
public class StateEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	private Integer id;
	private String state;
	private Integer statecode;
	private String gststate;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Integer getStatecode() {
		return statecode;
	}
	public void setStatecode(Integer statecode) {
		this.statecode = statecode;
	}
	public String getGststate() {
		return gststate;
	}
	public void setGststate(String gststate) {
		this.gststate = gststate;
	}
	
	
}
