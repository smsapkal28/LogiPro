package com.Master.Customer.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity(name = "ForeignKeyAssoAccountEntity")
@Table(name = "customerdetailsalert", catalog = "envosys", uniqueConstraints = {
		@UniqueConstraint(columnNames = "ID") })
public class CustomerDetailsAlertEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID", unique = true, nullable = false)
	private Integer id;
	private String customername;
	private String alertname;
	private String shiptype;
	private String toname;
	private String toemaiid;
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

	public String getCustomername() {
		return customername;
	}

	public void setCustomername(String customername) {
		this.customername = customername;
	}

	public String getAlertname() {
		return alertname;
	}

	public void setAlertname(String alertname) {
		this.alertname = alertname;
	}

	public String getShiptype() {
		return shiptype;
	}

	public void setShiptype(String shiptype) {
		this.shiptype = shiptype;
	}

	public String getToname() {
		return toname;
	}

	public void setToname(String toname) {
		this.toname = toname;
	}

	public String getToemaiid() {
		return toemaiid;
	}

	public void setToemaiid(String toemaiid) {
		this.toemaiid = toemaiid;
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
