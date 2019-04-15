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
@Table(name="student_fee_payment_type")
public class StudentFeePaymentTypeEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int payment_Id;
	private int student_Id;
	private int fee_Freq_Id;
	private int delete_Status;
	public StudentFeePaymentTypeEntity() {
		// TODO Auto-generated constructor stub
	}
	
	
	public StudentFeePaymentTypeEntity(int student_Id, int fee_Freq_Id) {
		this.student_Id = student_Id;
		this.fee_Freq_Id = fee_Freq_Id;
		this.delete_Status = 0;
	}


	public int getStudent_Id() {
		return student_Id;
	}
	public void setStudent_Id(int student_Id) {
		this.student_Id = student_Id;
	}
	public int getFee_Freq_Id() {
		return fee_Freq_Id;
	}
	public void setFee_Freq_Id(int fee_Freq_Id) {
		this.fee_Freq_Id = fee_Freq_Id;
	}
	public int getDelete_Status() {
		return delete_Status;
	}
	public void setDelete_Status(int delete_Status) {
		this.delete_Status = delete_Status;
	}


	@Override
	public String toString() {
		return "StudentFeePaymentTypeEntity [payment_Id=" + payment_Id + ", student_Id=" + student_Id + ", fee_Freq_Id="
				+ fee_Freq_Id + ", delete_Status=" + delete_Status + "]";
	}
	
	
	
}
