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
@Table(name = "customerdetailsgst",catalog = "envosys", 
uniqueConstraints ={
@UniqueConstraint(columnNames = "ID")})
public class CustomerDetailsGstEntity {
	
private static final long serialVersionUID = -6790693372846798580L;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ID", unique = true, nullable = false)
	private Integer id;
	private String customername;
	private String gst;
	private String address;
	private String state;
	private String city;
	private String postal_code;
	private String telephone;
	private String fax;
	private String email;
	private String contact_person;
	private String sez;
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

	public String getGst() {
		return gst;
	}

	public void setGst(String gst) {
		this.gst = gst;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPostal_code() {
		return postal_code;
	}

	public void setPostal_code(String postal_code) {
		this.postal_code = postal_code;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContact_person() {
		return contact_person;
	}

	public void setContact_person(String contact_person) {
		this.contact_person = contact_person;
	}

	public String getSez() {
		return sez;
	}

	public void setSez(String sez) {
		this.sez = sez;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
}
