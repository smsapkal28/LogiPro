package com.entity.employee;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Devil
 *
 */
@Entity
@Table(name = "empdoc")
public class EmployeeDocEntity {

	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int empdocId;
	private String empPhoto;
	private String empAdhar;
	private String empAdharNo;
	private String empResume;
	private String empOther;
	private String empPan;
	private String empPanNo;
	private String empExprience;
	
	public int getEmpdocId() {
		return empdocId;
	}
	public void setEmpdocId(int empdocId) {
		this.empdocId = empdocId;
	}
	public String getEmpPhoto() {
		return empPhoto;
	}
	public void setEmpPhoto(String empPhoto) {
		this.empPhoto = empPhoto;
	}
	public String getEmpAdhar() {
		return empAdhar;
	}
	public void setEmpAdhar(String empAdhar) {
		this.empAdhar = empAdhar;
	}
	public String getEmpResume() {
		return empResume;
	}
	public void setEmpResume(String empResume) {
		this.empResume = empResume;
	}
	
	public String getEmpOther() {
		return empOther;
	}
	public void setEmpOther(String empOther) {
		this.empOther = empOther;
	}
	public String getEmpAdharNo() {
		return empAdharNo;
	}
	public void setEmpAdharNo(String empAdharNo) {
		this.empAdharNo = empAdharNo;
	}
	public String getEmpPan() {
		return empPan;
	}
	public void setEmpPan(String empPan) {
		this.empPan = empPan;
	}
	public String getEmpPanNo() {
		return empPanNo;
	}
	public void setEmpPanNo(String empPanNo) {
		this.empPanNo = empPanNo;
	}
	public String getEmpExprience() {
		return empExprience;
	}
	public void setEmpExprience(String empExprience) {
		this.empExprience = empExprience;
	}
	
	
}
