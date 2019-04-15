/**
 * 
 */
package com.entity.transport;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * @author Devil
 *
 */
@Entity
@Table(name = "driver_detail")
public class DriverDetailEntity {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int driver_Id;
	private String driver_Name;
	@Temporal(TemporalType.DATE)
	private Date birth_Date;
	private String gender;
	private String contact_No;
	private String license_No;
	private String aadhar_No;
	@Lob
	private String present_Add;
	@Lob
	private String permanent_Add;
	private int delete_Status;
	private int allocation_Status;
	public DriverDetailEntity() {
		
	}
	public DriverDetailEntity( String driver_Name, Date birth_Date, String gender, String contact_No,
			String license_No, String aadhar_No, String present_Add, String permanent_Add) {
	
		this.driver_Name = driver_Name;
		this.birth_Date = birth_Date;
		this.gender = gender;
		this.contact_No = contact_No;
		this.license_No = license_No;
		this.aadhar_No = aadhar_No;
		this.present_Add = present_Add;
		this.permanent_Add = permanent_Add;
		this.delete_Status = 0;
		this.allocation_Status = 0;
	}
	public int getDriver_Id() {
		return driver_Id;
	}
	public void setDriver_Id(int driver_Id) {
		this.driver_Id = driver_Id;
	}
	public String getDriver_Name() {
		return driver_Name;
	}
	public void setDriver_Name(String driver_Name) {
		this.driver_Name = driver_Name;
	}
	public Date getBirth_Date() {
		return birth_Date;
	}
	public void setBirth_Date(Date birth_Date) {
		this.birth_Date = birth_Date;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getContact_No() {
		return contact_No;
	}
	public void setContact_No(String contact_No) {
		this.contact_No = contact_No;
	}
	public String getLicense_No() {
		return license_No;
	}
	public void setLicense_No(String license_No) {
		this.license_No = license_No;
	}
	public String getAadhar_No() {
		return aadhar_No;
	}
	public void setAadhar_No(String aadhar_No) {
		this.aadhar_No = aadhar_No;
	}
	public String getPresent_Add() {
		return present_Add;
	}
	public void setPresent_Add(String present_Add) {
		this.present_Add = present_Add;
	}
	public String getPermanent_Add() {
		return permanent_Add;
	}
	public void setPermanent_Add(String permanent_Add) {
		this.permanent_Add = permanent_Add;
	}
	public int getDelete_Status() {
		return delete_Status;
	}
	public void setDelete_Status(int delete_Status) {
		this.delete_Status = delete_Status;
	}
	
	
	public int getAllocation_Status() {
		return allocation_Status;
	}
	public void setAllocation_Status(int allocation_Status) {
		this.allocation_Status = allocation_Status;
	}
	@Override
	public String toString() {
		return "DriverDetailEntity [driver_Id=" + driver_Id + ", driver_Name=" + driver_Name + ", birth_Date="
				+ birth_Date + ", gender=" + gender + ", contact_No=" + contact_No + ", license_No=" + license_No
				+ ", aadhar_No=" + aadhar_No + ", present_Add=" + present_Add + ", permanent_Add=" + permanent_Add
				+ ", delete_Status=" + delete_Status + "]";
	}

	
}
