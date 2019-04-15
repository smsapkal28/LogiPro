/**
 * 
 */
package com.entity.student;

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
@Table(name = "StudentRegistrationEntity")
public class StudentRegistrationEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int studId;
	private String studRegId;
	private int regSession;
	private String name;
	private String fatherName;
	private String motherName;
	private String contact;
	private int courseApplied;
	private String gender;
	@Temporal(TemporalType.DATE)
	private Date dob;
	@Temporal(TemporalType.DATE)
	private Date regDate;
	private int enrollStatus;
	private int deleteStatus;

	public StudentRegistrationEntity() {

	}

	public StudentRegistrationEntity(String studRegId, int regSession, String name, String fatherName,
			String motherName, String contact, int courseApplied, String gender, Date dob, Date regDate) {
		this.studRegId = studRegId;
		this.regSession = regSession;
		this.name = name;
		this.fatherName = fatherName;
		this.motherName = motherName;
		this.contact = contact;
		this.courseApplied = courseApplied;
		this.gender = gender;
		this.dob = dob;
		this.regDate = regDate;
		this.enrollStatus = 0;
		this.deleteStatus = 0;
	}

	public int getStudId() {
		return studId;
	}

	public void setStudId(int studId) {
		this.studId = studId;
	}

	public String getStudRegId() {
		return studRegId;
	}

	public void setStudRegId(String studRegId) {
		this.studRegId = studRegId;
	}

	public int getRegSession() {
		return regSession;
	}

	public void setRegSession(int regSession) {
		this.regSession = regSession;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public String getMotherName() {
		return motherName;
	}

	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public int getCourseApplied() {
		return courseApplied;
	}

	public void setCourseApplied(int courseApplied) {
		this.courseApplied = courseApplied;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public int getEnrollStatus() {
		return enrollStatus;
	}

	public void setEnrollStatus(int enrollStatus) {
		this.enrollStatus = enrollStatus;
	}

	public int getDeleteStatus() {
		return deleteStatus;
	}

	public void setDeleteStatus(int deleteStatus) {
		this.deleteStatus = deleteStatus;
	}

}
