package com.entity.academicsetting;

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
@Table(name = "AcademicYearEntity")
public class AcademicYearEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String academicYearName;
	private String startYear;
	private String endYear;
	private int status;
	private int startMonth;
	private int endMonth;
	private int deleteStatus;
	public AcademicYearEntity() {
	}

	public AcademicYearEntity(String academicYearName, String startYear, String endYear, int status, int startMonth,
			int endMonth) {

		this.academicYearName = academicYearName;
		this.startYear = startYear;
		this.endYear = endYear;
		this.status = status;
		this.startMonth = startMonth;
		this.endMonth = endMonth;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAcademicYearName() {
		return academicYearName;
	}

	public void setAcademicYearName(String academicYearName) {
		this.academicYearName = academicYearName;
	}

	public String getStartYear() {
		return startYear;
	}

	public void setStartYear(String startYear) {
		this.startYear = startYear;
	}

	public String getEndYear() {
		return endYear;
	}

	public void setEndYear(String endYear) {
		this.endYear = endYear;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public int getStartMonth() {
		return startMonth;
	}

	public void setStartMonth(int startMonth) {
		this.startMonth = startMonth;
	}

	public int getEndMonth() {
		return endMonth;
	}

	public void setEndMonth(int endMonth) {
		this.endMonth = endMonth;
	}

	public int getDeleteStatus() {
		return deleteStatus;
	}

	public void setDeleteStatus(int deleteStatus) {
		this.deleteStatus = deleteStatus;
	}

}
