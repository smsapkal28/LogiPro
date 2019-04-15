package com.Accounts.Master.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.Master.Customer.entity.CustomerEntity;

@Entity
@Table(name = "accountmaster" , catalog = "envosys")
public class AccountDetails {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	private Integer id;
	private String accountname;
	private String location;
	private String accountcode;
	private String pgroup;
	private Double opbal;
	private String crdr;
	private boolean common;
	private boolean status;
	private String username;
	private Date lastmoddate;

	@ManyToOne
	private CustomerEntity custentity;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getAccountname() {
		return accountname;
	}

	public void setAccountname(String accountname) {
		this.accountname = accountname;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getAccountcode() {
		return accountcode;
	}

	public void setAccountcode(String accountcode) {
		this.accountcode = accountcode;
	}

	public String getPgroup() {
		return pgroup;
	}

	public void setPgroup(String pgroup) {
		this.pgroup = pgroup;
	}

	public Double getOpbal() {
		return opbal;
	}

	public void setOpbal(Double opbal) {
		this.opbal = opbal;
	}

	public String getCrdr() {
		return crdr;
	}

	public void setCrdr(String crdr) {
		this.crdr = crdr;
	}

	public boolean isCommon() {
		return common;
	}

	public void setCommon(boolean common) {
		this.common = common;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
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

	public CustomerEntity getCustentity() {
		return custentity;
	}

	public void setCustentity(CustomerEntity custentity) {
		this.custentity = custentity;
	}



}
