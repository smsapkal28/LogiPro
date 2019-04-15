/**
 * 
 */
package com.entity.hostel;

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
@Table(name = "hostel_student_facility_allocation")
public class HostelStudentFacilityAllocationEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int facility_Allocation_Id;
	private int stud_Id;
	private String facility_Id;
	private int delete_Status;
	
	
	
	public HostelStudentFacilityAllocationEntity() {
		
	}



	public HostelStudentFacilityAllocationEntity(int stud_Id, String facility_Id) {
		this.stud_Id = stud_Id;
		this.facility_Id = facility_Id;
		this.delete_Status = 0;
	}



	public int getFacility_Allocation_Id() {
		return facility_Allocation_Id;
	}



	public void setFacility_Allocation_Id(int facility_Allocation_Id) {
		this.facility_Allocation_Id = facility_Allocation_Id;
	}



	public int getStud_Id() {
		return stud_Id;
	}



	public void setStud_Id(int stud_Id) {
		this.stud_Id = stud_Id;
	}



	public String getFacility_Id() {
		return facility_Id;
	}



	public void setFacility_Id(String facility_Id) {
		this.facility_Id = facility_Id;
	}



	public int getDelete_Status() {
		return delete_Status;
	}



	public void setDelete_Status(int delete_Status) {
		this.delete_Status = delete_Status;
	}



	@Override
	public String toString() {
		return "HostelStudentFacilityAllocationEntity [facility_Allocation_Id=" + facility_Allocation_Id + ", stud_Id="
				+ stud_Id + ", facility_Id=" + facility_Id + ", delete_Status=" + delete_Status + "]";
	}
	
	

}
