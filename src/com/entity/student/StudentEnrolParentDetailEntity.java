package com.entity.student;

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
@Table(name = "StudentEnrolParentDetail")
public class StudentEnrolParentDetailEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int parentId;
	private String fatherName;
	private String fatherQualification;
	private String fatherOcupation;
	private String fatherContact;
	private String fatherAdharNo;
	private String motherName;
	private String motherQualification;
	private String motherOcupation;
	private String motherContact;
	private String motherAdharNo;
	private int deleteStatus;

	public StudentEnrolParentDetailEntity() {

	}

	/**
	 * @param fatherName
	 * @param fatherQualification
	 * @param fatherOcupation
	 * @param fatherContact
	 * @param fatherAdharNo
	 * @param motherName
	 * @param motherQualification
	 * @param motherOcupation
	 * @param motherContact
	 * @param motherAdharNo
	 */
	public StudentEnrolParentDetailEntity(String fatherName, String fatherQualification, String fatherOcupation,
			String fatherContact, String fatherAdharNo, String motherName, String motherQualification,
			String motherOcupation, String motherContact, String motherAdharNo) {
		super();
		this.fatherName = fatherName;
		this.fatherQualification = fatherQualification;
		this.fatherOcupation = fatherOcupation;
		this.fatherContact = fatherContact;
		this.fatherAdharNo = fatherAdharNo;
		this.motherName = motherName;
		this.motherQualification = motherQualification;
		this.motherOcupation = motherOcupation;
		this.motherContact = motherContact;
		this.motherAdharNo = motherAdharNo;
	}

	public int getParentId() {
		return parentId;
	}

	public void setParentId(int parentId) {
		this.parentId = parentId;
	}

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public String getFatherQualification() {
		return fatherQualification;
	}

	public void setFatherQualification(String fatherQualification) {
		this.fatherQualification = fatherQualification;
	}

	public String getFatherOcupation() {
		return fatherOcupation;
	}

	public void setFatherOcupation(String fatherOcupation) {
		this.fatherOcupation = fatherOcupation;
	}

	public String getFatherContact() {
		return fatherContact;
	}

	public void setFatherContact(String fatherContact) {
		this.fatherContact = fatherContact;
	}

	public String getFatherAdharNo() {
		return fatherAdharNo;
	}

	public void setFatherAdharNo(String fatherAdharNo) {
		this.fatherAdharNo = fatherAdharNo;
	}

	public String getMotherName() {
		return motherName;
	}

	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}

	public String getMotherQualification() {
		return motherQualification;
	}

	public void setMotherQualification(String motherQualification) {
		this.motherQualification = motherQualification;
	}

	public String getMotherOcupation() {
		return motherOcupation;
	}

	public void setMotherOcupation(String motherOcupation) {
		this.motherOcupation = motherOcupation;
	}

	public String getMotherContact() {
		return motherContact;
	}

	public void setMotherContact(String motherContact) {
		this.motherContact = motherContact;
	}

	public String getMotherAdharNo() {
		return motherAdharNo;
	}

	public void setMotherAdharNo(String motherAdharNo) {
		this.motherAdharNo = motherAdharNo;
	}

	public int getDeleteStatus() {
		return deleteStatus;
	}

	public void setDeleteStatus(int deleteStatus) {
		this.deleteStatus = deleteStatus;
	}

}
