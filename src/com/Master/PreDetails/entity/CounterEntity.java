package com.Master.PreDetails.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "codecounter", catalog = "envosys")
public class CounterEntity {
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	private Integer id;
	private Integer custcode;
	private Integer linecode;
	private Integer agentcode;
	private Integer vendorcode;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getCustcode() {
		return custcode;
	}
	public void setCustcode(Integer custcode) {
		this.custcode = custcode;
	}
	public Integer getLinecode() {
		return linecode;
	}
	public void setLinecode(Integer linecode) {
		this.linecode = linecode;
	}
	public Integer getAgentcode() {
		return agentcode;
	}
	public void setAgentcode(Integer agentcode) {
		this.agentcode = agentcode;
	}
	public Integer getVendorcode() {
		return vendorcode;
	}
	public void setVendorcode(Integer vendorcode) {
		this.vendorcode = vendorcode;
	}
}
