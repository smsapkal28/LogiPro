package com.Master.Vessel.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "vessel", catalog = "envosys")
public class VesselEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	private Integer id;
	private String vesselname;
	private String linename;
	private String igmvcode;
	private String imocode;
	private String status;
	private String username;
	private Date lastmoddate;
	private String location;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getVesselname() {
		return vesselname;
	}
	public void setVesselname(String vesselname) {
		this.vesselname = vesselname;
	}
	public String getLinename() {
		return linename;
	}
	public void setLinename(String linename) {
		this.linename = linename;
	}
	public String getIgmvcode() {
		return igmvcode;
	}
	public void setIgmvcode(String igmvcode) {
		this.igmvcode = igmvcode;
	}
	public String getImocode() {
		return imocode;
	}
	public void setImocode(String imocode) {
		this.imocode = imocode;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Date getLastmoddate() {
		return lastmoddate;
	}
	public void setLastmoddate(Date lastmoddate) {
		this.lastmoddate = lastmoddate;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
}
