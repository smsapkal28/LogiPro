/**
 * 
 */
package com.entity.fee;

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
@Table(name="FeeAmount")
public class FeeAmountEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int feeAmountId;
	private int academicYearId;
	private int courseId;
	private int feeCatId;
	private Float FeeAmount;
	private int deleteStatus;
	public FeeAmountEntity() {
		
	}
	public FeeAmountEntity(int academicYearId, int courseId, int feeCatId, Float feeAmount) {
		
		this.academicYearId = academicYearId;
		this.courseId = courseId;
		this.feeCatId = feeCatId;
		this.FeeAmount = feeAmount;
		this.deleteStatus=0;
	}
	public int getFeeAmountId() {
		return feeAmountId;
	}
	public void setFeeAmountId(int feeAmountId) {
		this.feeAmountId = feeAmountId;
	}
	public int getAcademicYearId() {
		return academicYearId;
	}
	public void setAcademicYearId(int academicYearId) {
		this.academicYearId = academicYearId;
	}
	public int getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	public int getFeeCatId() {
		return feeCatId;
	}
	public void setFeeCatId(int feeCatId) {
		this.feeCatId = feeCatId;
	}
	
	public Float getFeeAmount() {
		return FeeAmount;
	}
	public void setFeeAmount(Float feeAmount) {
		FeeAmount = feeAmount;
	}
	public int getDeleteStatus() {
		return deleteStatus;
	}
	public void setDeleteStatus(int deleteStatus) {
		this.deleteStatus = deleteStatus;
	}
	
	
	
	
	
	
}
