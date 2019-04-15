package com.entity.batch;

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
@Table(name = "BatchEntity")
public class BatchEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private int courseCode;
	private int academicYear;

	private String batchName;
	private String batchCode;
	@Temporal(TemporalType.DATE)
	private Date startDate;
	@Temporal(TemporalType.DATE)
	private Date endDate;
	private int maxStud;

	private int minAttend;
	private int deleteStatus;

	public BatchEntity() {
	}

	public BatchEntity(int courseCode, int academicYear,  String batchName, String batchCode,
			Date startDate, Date endDate, int maxStud, int minAttend) {

		this.courseCode = courseCode;
		this.academicYear = academicYear;
		
		this.batchName = batchName;
		this.batchCode = batchCode;
		this.startDate = startDate;
		this.endDate = endDate;
		this.maxStud = maxStud;
		this.minAttend = minAttend;
		this.deleteStatus = 0;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCourseCode() {
		return courseCode;
	}

	public void setCourseCode(int courseCode) {
		this.courseCode = courseCode;
	}

	public int getAcademicYear() {
		return academicYear;
	}

	public void setAcademicYear(int academicYear) {
		this.academicYear = academicYear;
	}


	public String getBatchName() {
		return batchName;
	}

	public void setBatchName(String batchName) {
		this.batchName = batchName;
	}

	public String getBatchCode() {
		return batchCode;
	}

	public void setBatchCode(String batchCode) {
		this.batchCode = batchCode;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public int getMaxStud() {
		return maxStud;
	}

	public void setMaxStud(int maxStud) {
		this.maxStud = maxStud;
	}

	public int getMinAttend() {
		return minAttend;
	}

	public void setMinAttend(int minAttend) {
		this.minAttend = minAttend;
	}

	public int getDeleteStatus() {
		return deleteStatus;
	}

	public void setDeleteStatus(int deleteStatus) {
		this.deleteStatus = deleteStatus;
	}

}
