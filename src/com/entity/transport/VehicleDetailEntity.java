/**
 * 
 */
package com.entity.transport;

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
@Table(name = "vehicle_detail")
public class VehicleDetailEntity {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int vehicle_Id;
	private String Vehicle_No;
	private int no_Of_Seats;
	private int max_Allowed;
	private int vehicle_Cat_Id;
	private String contact_Person_Name;
	private String contact_Person_No;
	@Temporal(TemporalType.DATE)
	private Date insurance_Renewal_Date;
	private String track_Id;
	private int delete_Status;
	private int allocation_Status;
	public VehicleDetailEntity() {
		// TODO Auto-generated constructor stub
	}
	public VehicleDetailEntity(String vehicle_No, int no_Of_Seats, int max_Allowed, int vehicle_Cat_Id,
			String contact_Person_Name, String contact_Person_No, Date insurance_Renewal_Date, String track_Id) {
		Vehicle_No = vehicle_No;
		this.no_Of_Seats = no_Of_Seats;
		this.max_Allowed = max_Allowed;
		this.vehicle_Cat_Id = vehicle_Cat_Id;
		this.contact_Person_Name = contact_Person_Name;
		this.contact_Person_No = contact_Person_No;
		this.insurance_Renewal_Date = insurance_Renewal_Date;
		this.track_Id = track_Id;
		this.delete_Status = 0;
		this.allocation_Status = 0;
	}
	public int getVehicle_Id() {
		return vehicle_Id;
	}
	public void setVehicle_Id(int vehicle_Id) {
		this.vehicle_Id = vehicle_Id;
	}
	public String getVehicle_No() {
		return Vehicle_No;
	}
	public void setVehicle_No(String vehicle_No) {
		Vehicle_No = vehicle_No;
	}
	public int getNo_Of_Seats() {
		return no_Of_Seats;
	}
	public void setNo_Of_Seats(int no_Of_Seats) {
		this.no_Of_Seats = no_Of_Seats;
	}
	public int getMax_Allowed() {
		return max_Allowed;
	}
	public void setMax_Allowed(int max_Allowed) {
		this.max_Allowed = max_Allowed;
	}
	public int getVehicle_Cat_Id() {
		return vehicle_Cat_Id;
	}
	public void setVehicle_Cat_Id(int vehicle_Cat_Id) {
		this.vehicle_Cat_Id = vehicle_Cat_Id;
	}
	public String getContact_Person_Name() {
		return contact_Person_Name;
	}
	public void setContact_Person_Name(String contact_Person_Name) {
		this.contact_Person_Name = contact_Person_Name;
	}
	public String getContact_Person_No() {
		return contact_Person_No;
	}
	public void setContact_Person_No(String contact_Person_No) {
		this.contact_Person_No = contact_Person_No;
	}
	public Date getInsurance_Renewal_Date() {
		return insurance_Renewal_Date;
	}
	public void setInsurance_Renewal_Date(Date insurance_Renewal_Date) {
		this.insurance_Renewal_Date = insurance_Renewal_Date;
	}
	public String getTrack_Id() {
		return track_Id;
	}
	public void setTrack_Id(String track_Id) {
		this.track_Id = track_Id;
	}
	
	public int getDelete_Status() {
		return delete_Status;
	}
	public void setDelete_Status(int delete_Status) {
		this.delete_Status = delete_Status;
	}
	
	public int getAllocation_Status() {
		return allocation_Status;
	}
	public void setAllocation_Status(int allocation_Status) {
		this.allocation_Status = allocation_Status;
	}
	@Override
	public String toString() {
		return "VehicleDetailEntity [vehicle_Id=" + vehicle_Id + ", Vehicle_No=" + Vehicle_No + ", no_Of_Seats="
				+ no_Of_Seats + ", max_Allowed=" + max_Allowed + ", vehicle_Cat_Id=" + vehicle_Cat_Id
				+ ", contact_Person_Name=" + contact_Person_Name + ", contact_Person_No=" + contact_Person_No
				+ ", insurance_Renewal_Date=" + insurance_Renewal_Date + ", track_Id=" + track_Id + ", delete_Id="
				+ delete_Status + "]";
	}
	
	
	
	
}
