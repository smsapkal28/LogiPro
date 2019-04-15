package com.entity.employee;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * @author Devil
 *
 */
@Entity
@Table(name = "empjobdetails")
public class EmployeeJobDetailsEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int empJobId;
	private String empDept;
	
	private String empDesg;
	@Temporal(TemporalType.DATE)
	private Date empjoinDate;
	private String empqualification;
	private String empTExp;
	
	
	public int getEmpJobId() {
		return empJobId;
	}
	public void setEmpJobId(int empJobId) {
		this.empJobId = empJobId;
	}
	public String getEmpDept() {
		return empDept;
	}
	public void setEmpDept(String empDept) {
		this.empDept = empDept;
	}

	public String getEmpDesg() {
		return empDesg;
	}
	public void setEmpDesg(String empDesg) {
		this.empDesg = empDesg;
	}
	
	public String getEmpqualification() {
		return empqualification;
	}
	public void setEmpqualification(String empqualification) {
		this.empqualification = empqualification;
	}
	public String getEmpTExp() {
		return empTExp;
	}
	public void setEmpTExp(String empTExp) {
		this.empTExp = empTExp;
	}
	public Date getEmpjoinDate() {
		return empjoinDate;
	}
	public void setEmpjoinDate(Date empjoinDate) {
		this.empjoinDate = empjoinDate;
	}
	
	
	
}
