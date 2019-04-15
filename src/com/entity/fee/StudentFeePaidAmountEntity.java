/**
 * 
 */
package com.entity.fee;


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
@Table(name="Student_Fee_PaidAmount")
public class StudentFeePaidAmountEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int feePaidId;
	private int studId;
	@Temporal(TemporalType.DATE)
	private Date feePaidDate;
	private Float feePaidAmount;
	private int deleteStatus;
	public StudentFeePaidAmountEntity() {
		
	}

	public StudentFeePaidAmountEntity(int studId, Float feePaidAmount) {
		this.studId = studId;
		this.feePaidDate = new Date();
		this.feePaidAmount = feePaidAmount;
		this.deleteStatus = 0;
	}

	public int getFeePaidId() {
		return feePaidId;
	}

	public void setFeePaidId(int feePaidId) {
		this.feePaidId = feePaidId;
	}

	public int getStudId() {
		return studId;
	}

	public void setStudId(int studId) {
		this.studId = studId;
	}

	
	public Date getFeePaidDate() {
		return feePaidDate;
	}

	public void setFeePaidDate(Date feePaidDate) {
		this.feePaidDate = feePaidDate;
	}

	public Float getFeePaidAmount() {
		return feePaidAmount;
	}

	public void setFeePaidAmount(Float feePaidAmount) {
		this.feePaidAmount = feePaidAmount;
	}

	public int getDeleteStatus() {
		return deleteStatus;
	}

	public void setDeleteStatus(int deleteStatus) {
		this.deleteStatus = deleteStatus;
	}

	
	
}
