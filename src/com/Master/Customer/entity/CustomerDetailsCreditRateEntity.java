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
@Table(name = "customerdetailscreditrate",catalog = "envosys", 
uniqueConstraints ={
@UniqueConstraint(columnNames = "ID")})
public class CustomerDetailsCreditRateEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID", unique = true, nullable = false)
	private Integer id;
	private String customername;
	private String shiptype_cr;
	private String pdc;
	private Integer noofdays;
	private Double amount_cr;
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

	public String getShiptype_cr() {
		return shiptype_cr;
	}

	public void setShiptype_cr(String shiptype_cr) {
		this.shiptype_cr = shiptype_cr;
	}

	public String getPdc() {
		return pdc;
	}

	public void setPdc(String pdc) {
		this.pdc = pdc;
	}

	public Integer getNoofdays() {
		return noofdays;
	}

	public void setNoofdays(Integer noofdays) {
		this.noofdays = noofdays;
	}

	public Double getAmount_cr() {
		return amount_cr;
	}

	public void setAmount_cr(Double amount_cr) {
		this.amount_cr = amount_cr;
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
