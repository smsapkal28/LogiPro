package com.entity.employee;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "empdetails")
public class EmployeeDetailsEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int empId;
	private String fName;
	private String mName;
	private String lName;
	@Temporal(TemporalType.DATE)
	private Date dob;
	private String gender;
	private String email;
	private String contact;
	private String aContact;
	@Lob
	private String pAddress;
	@Lob
	private String cAddress;
	private String country;
	private String state;
	private String city;
	private int pinCode;
	private String empCode;
	private int deleteStatus;

	@OneToOne
	@JoinColumn(name = "empjdid")
	EmployeeJobDetailsEntity empjdm;
	@OneToOne
	@JoinColumn(name = "empbdid")
	EmployeeBankDetailsEntity empbdm;
	@OneToOne
	@JoinColumn(name = "empdid")
	EmployeeDocEntity empdm;

	public EmployeeDetailsEntity() {
	}

	public String getEmpCode() {
		return empCode;
	}

	public void setEmpCode(String empCode) {
		this.empCode = empCode;
	}

	public int getDeleteStatus() {
		return deleteStatus;
	}

	public void setDeleteStatus(int deleteStatus) {
		this.deleteStatus = deleteStatus;
	}

	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public String getlName() {
		return lName;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getaContact() {
		return aContact;
	}

	public void setaContact(String aContact) {
		this.aContact = aContact;
	}

	public String getpAddress() {
		return pAddress;
	}

	public void setpAddress(String pAddress) {
		this.pAddress = pAddress;
	}

	public String getcAddress() {
		return cAddress;
	}

	public void setcAddress(String cAddress) {
		this.cAddress = cAddress;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public EmployeeJobDetailsEntity getEmpjdm() {
		return empjdm;
	}

	public void setEmpjdm(EmployeeJobDetailsEntity empjdm) {
		this.empjdm = empjdm;
	}

	public EmployeeBankDetailsEntity getEmpbdm() {
		return empbdm;
	}

	public void setEmpbdm(EmployeeBankDetailsEntity empbdm) {
		this.empbdm = empbdm;
	}

	public EmployeeDocEntity getEmpdm() {
		return empdm;
	}

	public void setEmpdm(EmployeeDocEntity empdm) {
		this.empdm = empdm;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public int getPinCode() {
		return pinCode;
	}

	public void setPinCode(int pinCode) {
		this.pinCode = pinCode;
	}

}
