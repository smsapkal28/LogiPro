/**
 * 
 */
package com.entity.hostel;

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
@Table(name = "hostel_student_detail")
public class HostelStudentDetailEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int stud_Hostel_Id;
	private int stud_Id;
	private String stud_Name;
	private String stud_Contact;
	private String gaurdian_Name;
	private String gaurdian_Contact;
	@Temporal(TemporalType.DATE)
	private Date enroll_Date;
	@Temporal(TemporalType.DATE)
	private Date renewal_Date;
	private int room_Allocation_Status;
	private int delete_Status;
	
	
	public HostelStudentDetailEntity() {
		
	}


	public HostelStudentDetailEntity(int stud_Id, String stud_Name, String stud_Contact, String gaurdian_Name,
			String gaurdian_Contact, Date enroll_Date, Date renewal_Date) {
		this.stud_Id = stud_Id;
		this.stud_Name = stud_Name;
		this.stud_Contact = stud_Contact;
		this.gaurdian_Name = gaurdian_Name;
		this.gaurdian_Contact = gaurdian_Contact;
		this.enroll_Date = enroll_Date;
		this.renewal_Date = renewal_Date;
		this.room_Allocation_Status = 0;
		this.delete_Status = 0;
	}


	public int getStud_Hostel_Id() {
		return stud_Hostel_Id;
	}


	public void setStud_Hostel_Id(int stud_Hostel_Id) {
		this.stud_Hostel_Id = stud_Hostel_Id;
	}


	public int getStud_Id() {
		return stud_Id;
	}


	public void setStud_Id(int stud_Id) {
		this.stud_Id = stud_Id;
	}


	public String getStud_Name() {
		return stud_Name;
	}


	public void setStud_Name(String stud_Name) {
		this.stud_Name = stud_Name;
	}


	public String getStud_Contact() {
		return stud_Contact;
	}


	public void setStud_Contact(String stud_Contact) {
		this.stud_Contact = stud_Contact;
	}


	public String getGaurdian_Name() {
		return gaurdian_Name;
	}


	public void setGaurdian_Name(String gaurdian_Name) {
		this.gaurdian_Name = gaurdian_Name;
	}


	public String getGaurdian_Contact() {
		return gaurdian_Contact;
	}


	public void setGaurdian_Contact(String gaurdian_Caontact) {
		this.gaurdian_Contact = gaurdian_Caontact;
	}


	public Date getEnroll_Date() {
		return enroll_Date;
	}


	public void setEnroll_Date(Date enroll_Date) {
		this.enroll_Date = enroll_Date;
	}


	public Date getRenewal_Date() {
		return renewal_Date;
	}


	public void setRenewal_Date(Date renewal_Date) {
		this.renewal_Date = renewal_Date;
	}


	public int getRoom_Allocation_Status() {
		return room_Allocation_Status;
	}


	public void setRoom_Allocation_Status(int room_Allocation_Status) {
		this.room_Allocation_Status = room_Allocation_Status;
	}


	public int getDelete_Status() {
		return delete_Status;
	}


	public void setDelete_Status(int delete_Status) {
		this.delete_Status = delete_Status;
	}


	@Override
	public String toString() {
		return "HostelStudentDetail [stud_Hostel_Id=" + stud_Hostel_Id + ", stud_Id=" + stud_Id + ", stud_Name="
				+ stud_Name + ", stud_Contact=" + stud_Contact + ", gaurdian_Name=" + gaurdian_Name
				+ ", gaurdian_Caontact=" + gaurdian_Contact + ", enroll_Date=" + enroll_Date + ", renewal_Date="
				+ renewal_Date + ", delete_Status=" + delete_Status + "]";
	}
	
	

}
