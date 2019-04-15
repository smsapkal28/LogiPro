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
@Table(name = "hostel_detail")
public class HostelDetailEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int hostel_Id;
	private int hostel_Type;
	private String hostel_For;
	
	private String hostel_No;
	private String hostel_Name;
	private String hostel_Contact;
	private int hostel_No_Of_Floor;
	private int hostel_No_Of_Room;
	private String warden_Name;
	private String warden_Contact;
	private String Owner_Name;
	private String Owner_Contact;
	private String warden_Address;
	private String hostel_Address;
	private int hostel_Room_Allocation_Status;
	private int delete_Status;
	public HostelDetailEntity() {
		
	}
	public HostelDetailEntity(int hostel_Type, String hostel_For, String hostel_No, String hostel_Name,
			String hostel_Contact, int hostel_No_Of_Floor, int hostel_No_Of_Room, String warden_Name,
			String warden_Contact, String owner_Name, String owner_Contact, String warden_Address,
			String hostel_Address) {
		this.hostel_Type = hostel_Type;
		this.hostel_For = hostel_For;
		this.hostel_No = hostel_No;
		this.hostel_Name = hostel_Name;
		this.hostel_Contact = hostel_Contact;
		this.hostel_No_Of_Floor = hostel_No_Of_Floor;
		this.hostel_No_Of_Room = hostel_No_Of_Room;
		this.warden_Name = warden_Name;
		this.warden_Contact = warden_Contact;
		Owner_Name = owner_Name;
		Owner_Contact = owner_Contact;
		this.warden_Address = warden_Address;
		this.hostel_Address = hostel_Address;
		this.hostel_Room_Allocation_Status = 0;
		this.delete_Status = 0;
	}
	public int getHostel_Id() {
		return hostel_Id;
	}
	public void setHostel_Id(int hostel_Id) {
		this.hostel_Id = hostel_Id;
	}
	public int getHostel_Type() {
		return hostel_Type;
	}
	public void setHostel_Type(int hostel_Type) {
		this.hostel_Type = hostel_Type;
	}
	public String getHostel_For() {
		return hostel_For;
	}
	public void setHostel_For(String hostel_For) {
		this.hostel_For = hostel_For;
	}
	public String getHostel_No() {
		return hostel_No;
	}
	public void setHostel_No(String hostel_No) {
		this.hostel_No = hostel_No;
	}
	public String getHostel_Name() {
		return hostel_Name;
	}
	public void setHostel_Name(String hostel_Name) {
		this.hostel_Name = hostel_Name;
	}
	public String getHostel_Contact() {
		return hostel_Contact;
	}
	public void setHostel_Contact(String hostel_Contact) {
		this.hostel_Contact = hostel_Contact;
	}
	public int getHostel_No_Of_Floor() {
		return hostel_No_Of_Floor;
	}
	public void setHostel_No_Of_Floor(int hostel_No_Of_Floor) {
		this.hostel_No_Of_Floor = hostel_No_Of_Floor;
	}
	public int getHostel_No_Of_Room() {
		return hostel_No_Of_Room;
	}
	public void setHostel_No_Of_Room(int hostel_No_Of_Room) {
		this.hostel_No_Of_Room = hostel_No_Of_Room;
	}
	public String getWarden_Name() {
		return warden_Name;
	}
	public void setWarden_Name(String warden_Name) {
		this.warden_Name = warden_Name;
	}
	public String getWarden_Contact() {
		return warden_Contact;
	}
	public void setWarden_Contact(String warden_Contact) {
		this.warden_Contact = warden_Contact;
	}
	public String getOwner_Name() {
		return Owner_Name;
	}
	public void setOwner_Name(String owner_Name) {
		Owner_Name = owner_Name;
	}
	public String getOwner_Contact() {
		return Owner_Contact;
	}
	public void setOwner_Contact(String owner_Contact) {
		Owner_Contact = owner_Contact;
	}
	public String getWarden_Address() {
		return warden_Address;
	}
	public void setWarden_Address(String warden_Address) {
		this.warden_Address = warden_Address;
	}
	public String getHostel_Address() {
		return hostel_Address;
	}
	public void setHostel_Address(String hostel_Address) {
		this.hostel_Address = hostel_Address;
	}
	
	public int getHostel_Room_Allocation_Status() {
		return hostel_Room_Allocation_Status;
	}
	public void setHostel_Room_Allocation_Status(int hostel_Room_Allocation_Status) {
		this.hostel_Room_Allocation_Status = hostel_Room_Allocation_Status;
	}
	public int getDelete_Status() {
		return delete_Status;
	}
	public void setDelete_Status(int delete_Status) {
		this.delete_Status = delete_Status;
	}
	@Override
	public String toString() {
		return "HostelDetailEntity [hostel_Id=" + hostel_Id + ", hostel_Type=" + hostel_Type + ", hostel_For="
				+ hostel_For + ", hostel_No=" + hostel_No + ", hostel_Name=" + hostel_Name + ", hostel_Contact="
				+ hostel_Contact + ", hostel_No_Of_Floor=" + hostel_No_Of_Floor + ", hostel_No_Of_Room="
				+ hostel_No_Of_Room + ", warden_Name=" + warden_Name + ", warden_Contact=" + warden_Contact
				+ ", Owner_Name=" + Owner_Name + ", Owner_Contact=" + Owner_Contact + ", warden_Address="
				+ warden_Address + ", hostel_Address=" + hostel_Address + ", delete_Status=" + delete_Status + "]";
	}
	

}
