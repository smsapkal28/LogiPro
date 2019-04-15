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
@Table(name = "hostel_room_detail")
public class HostelRoomDetailEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int room_Id;
	private int hostel_Id;
	private int no_Of_Beds;
	private int allocated_Beds;
	private String room_Name;
	private int delete_Status;
	
	public HostelRoomDetailEntity() {
		
	}
	public HostelRoomDetailEntity(int hostel_Id, int no_Of_Beds, int allocated_Beds, String room_Name) {
		this.hostel_Id = hostel_Id;
		this.no_Of_Beds = no_Of_Beds;
		this.allocated_Beds = allocated_Beds;
		this.room_Name = room_Name;
		this.delete_Status = 0;
	}

	public int getRoom_Id() {
		return room_Id;
	}
	public void setRoom_Id(int room_Id) {
		this.room_Id = room_Id;
	}
	public int getHostel_Id() {
		return hostel_Id;
	}
	public void setHostel_Id(int hostel_Id) {
		this.hostel_Id = hostel_Id;
	}
	public int getNo_Of_Beds() {
		return no_Of_Beds;
	}
	public void setNo_Of_Beds(int no_Of_Beds) {
		this.no_Of_Beds = no_Of_Beds;
	}
	public int getAllocated_Beds() {
		return allocated_Beds;
	}
	public void setAllocated_Beds(int allocated_Beds) {
		this.allocated_Beds = allocated_Beds;
	}
	public String getRoom_Name() {
		return room_Name;
	}
	public void setRoom_Name(String room_Name) {
		this.room_Name = room_Name;
	}
	public int getDelete_Status() {
		return delete_Status;
	}
	public void setDelete_Status(int delete_Status) {
		this.delete_Status = delete_Status;
	}
	@Override
	public String toString() {
		return "HostelRoomDetailEntity [room_Id=" + room_Id + ", hostel_Id=" + hostel_Id + ", no_Of_Beds=" + no_Of_Beds
				+ ", allocated_Beds=" + allocated_Beds + ", room_Name=" + room_Name + ", delete_Status=" + delete_Status
				+ "]";
	}
	
	
}
