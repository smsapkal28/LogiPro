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
@Table(name = "hostel_facility")
public class HostelFacilityEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int facility_Id;
	private int hostel_Id;
	private String hostel_Facility;
	private int delete_Status;
	public HostelFacilityEntity() {
		
	}
	public HostelFacilityEntity(int hostel_Id, String hostel_Facility) {
		
		this.hostel_Id = hostel_Id;
		this.hostel_Facility = hostel_Facility;
		this.delete_Status = 0;
	}
	public int getFacility_Id() {
		return facility_Id;
	}
	public void setFacility_Id(int facility_Id) {
		this.facility_Id = facility_Id;
	}
	public int getHostel_Id() {
		return hostel_Id;
	}
	public void setHostel_Id(int hostel_Id) {
		this.hostel_Id = hostel_Id;
	}
	public String getHostel_Facility() {
		return hostel_Facility;
	}
	public void setHostel_Facility(String hostel_Facility) {
		this.hostel_Facility = hostel_Facility;
	}
	public int getDelete_Status() {
		return delete_Status;
	}
	public void setDelete_Status(int delete_Status) {
		this.delete_Status = delete_Status;
	}
	@Override
	public String toString() {
		return "HostelFacilityEntity [facility_Id=" + facility_Id + ", hostel_Id=" + hostel_Id + ", hostel_Facility="
				+ hostel_Facility + ", delete_Status=" + delete_Status + "]";
	}
	
	
}
