/**
 * 
 */
package com.Admin.USER.Entity;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


import javax.persistence.UniqueConstraint;

import org.hibernate.Session;

/**
 * @author USER 14
 *
 */
@Entity
@Table(name = "userdetails",
uniqueConstraints = {
@UniqueConstraint(columnNames = "id"),
@UniqueConstraint(columnNames = "username")})
public class NewUserRegisteEntity {
	
	@Id
	@GeneratedValue(strategy= GenerationType.IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	private long id;
	private String firstname;
	private String lastname;
	private String username;
	private String password;
	@Temporal(TemporalType.DATE)
	private Date dob;
	private String mobile;
	private String emailid;
	@Temporal(TemporalType.DATE)
	private Date lastmoddate;
	private String lastmodby;
	private String status;
	private String location;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public Date getLastmoddate() {
		return lastmoddate;
	}
	public void setLastmoddate(Date lastmoddate) {
		this.lastmoddate = lastmoddate;
	}
	public String getLastmodby() {
		return lastmodby;
	}
	public void setLastmodby(String lastmodby) {
		this.lastmodby = lastmodby;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}

	
}
