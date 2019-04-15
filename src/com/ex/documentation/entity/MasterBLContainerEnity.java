/**
 * 
 */
package com.ex.documentation.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

/**
 * @author USER 13
 *
 */
@Entity(name = "ForeignKeyAssoAccountEntity")
@Table(name = "export_mblcontainerdetails",catalog = "envosys", 
uniqueConstraints ={
@UniqueConstraint(columnNames = "ID")})
public class MasterBLContainerEnity implements Serializable {

	private static final long serialVersionUID = -6790693372846798580L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID", unique = true, nullable = false)
	private Integer id;
	private String mblno;
	private String containerno;
	private String containertype;
	private String customsealno;
	private String agentsealno;
	private String lastmodifiedby;
	private String location;
	
	 
	 @ManyToOne
	 private MasterBLEntity mblentity;

	public MasterBLEntity getMblentity() {
		return mblentity;
	}
	public void setMblentity(MasterBLEntity mblentity) {
		this.mblentity = mblentity;
	}
	
	public MasterBLContainerEnity()
	{}
	public MasterBLContainerEnity(String mblno2, String containerno2, String containertype2, String customsealno2,
			String agentsealno2) {
		// TODO Auto-generated constructor stub
		this.mblno=mblno2;
		this.containerno=containerno2;
		this.containertype=containertype2;
		this.customsealno=customsealno2;
		this.agentsealno=agentsealno2;
	}

	
	public Integer getId() {
		return id;
	}


	public void setId(Integer id) {
		this.id = id;
	}


	public String getMblno() {
		return mblno;
	}

	public void setMblno(String mblno) {
		this.mblno = mblno;
	}

	public String getContainerno() {
		return containerno;
	}

	public void setContainerno(String containerno) {
		this.containerno = containerno;
	}

	public String getContainertype() {
		return containertype;
	}

	public void setContainertype(String containertype) {
		this.containertype = containertype;
	}

	public String getCustomsealno() {
		return customsealno;
	}

	public void setCustomsealno(String customsealno) {
		this.customsealno = customsealno;
	}

	public String getAgentsealno() {
		return agentsealno;
	}

	public void setAgentsealno(String agentsealno) {
		this.agentsealno = agentsealno;
	}

	public String getLastmodifiedby() {
		return lastmodifiedby;
	}

	public void setLastmodifiedby(String lastmodifiedby) {
		this.lastmodifiedby = lastmodifiedby;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}
}
