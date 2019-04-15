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
@Table(name = "hostel_student_room_allocation_detail")
public class HostelStudentRoomAllocationDetailEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int stud_Room_Id;
	private int stud_Id;
	private int hostel_Id;
	private int room_Id;
	private int delete_Status;
	
	public HostelStudentRoomAllocationDetailEntity() {
		// TODO Auto-generated constructor stub
	}

	public HostelStudentRoomAllocationDetailEntity(int stud_Id, int hostel_Id, int room_Id) {
		this.stud_Id = stud_Id;
		this.hostel_Id = hostel_Id;
		this.room_Id = room_Id;
		this.delete_Status = 0;
	}

	public int getStud_Room_Id() {
		return stud_Room_Id;
	}

	public void setStud_Room_Id(int stud_Room_Id) {
		this.stud_Room_Id = stud_Room_Id;
	}

	public int getStud_Id() {
		return stud_Id;
	}

	public void setStud_Id(int stud_Id) {
		this.stud_Id = stud_Id;
	}

	public int getHostel_Id() {
		return hostel_Id;
	}

	public void setHostel_Id(int hostel_Id) {
		this.hostel_Id = hostel_Id;
	}

	public int getRoom_Id() {
		return room_Id;
	}

	public void setRoom_Id(int room_Id) {
		this.room_Id = room_Id;
	}

	public int getDelete_Status() {
		return delete_Status;
	}

	public void setDelete_Status(int delete_Status) {
		this.delete_Status = delete_Status;
	}

	@Override
	public String toString() {
		return "HostelStudentRoomAllocationDetailEntity [stud_Room_Id=" + stud_Room_Id + ", stud_Id=" + stud_Id
				+ ", hostel_Id=" + hostel_Id + ", room_Id=" + room_Id + ", delete_Status=" + delete_Status + "]";
	}
	
	

}
