/**
 * 
 */
package com.entity.library;

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
@Table(name = "library_student_registration")
public class LibraryStudentRegistrationEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int lib_Stud_Id;
	private String stud_Reg_No;
	private int stud_Enroll_Id;
	private String stud_Name;
	private String stud_Contact;
	private String stud_Email;
	@Temporal(TemporalType.DATE)
	private Date stud_Creation_Date;
	@Temporal(TemporalType.DATE)
	private Date last_Modified_Date;
	@Temporal(TemporalType.DATE)
	private Date stud_Deletion_Date;
	private int delete_Status;

	public LibraryStudentRegistrationEntity() {
		// TODO Auto-generated constructor stub
	}

	public LibraryStudentRegistrationEntity(String stud_Reg_No, int stud_Enroll_Id, String stud_Name,
			String stud_Contact, String stud_Email) {
		this.stud_Reg_No = stud_Reg_No;
		this.stud_Enroll_Id = stud_Enroll_Id;
		this.stud_Name = stud_Name;
		this.stud_Contact = stud_Contact;
		this.stud_Email = stud_Email;
		this.stud_Creation_Date = new Date();
		this.last_Modified_Date = new Date();
		this.stud_Deletion_Date = new Date();
		this.delete_Status = 0;
	}

	public LibraryStudentRegistrationEntity(int lib_Stud_Id,  String stud_Name, String stud_Contact,
			String stud_Email) {
		this.lib_Stud_Id = lib_Stud_Id;
		this.stud_Name = stud_Name;
		this.stud_Contact = stud_Contact;
		this.stud_Email = stud_Email;

		this.last_Modified_Date = new Date();

	}

	public int getLib_Stud_Id() {
		return lib_Stud_Id;
	}

	public void setLib_Stud_Id(int lib_Stud_Id) {
		this.lib_Stud_Id = lib_Stud_Id;
	}

	public String getStud_Reg_No() {
		return stud_Reg_No;
	}

	public void setStud_Reg_No(String stud_Reg_No) {
		this.stud_Reg_No = stud_Reg_No;
	}

	public int getStud_Enroll_Id() {
		return stud_Enroll_Id;
	}

	public void setStud_Enroll_Id(int stud_Enroll_Id) {
		this.stud_Enroll_Id = stud_Enroll_Id;
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

	public String getStud_Email() {
		return stud_Email;
	}

	public void setStud_Email(String stud_Email) {
		this.stud_Email = stud_Email;
	}

	public Date getStud_Creation_Date() {
		return stud_Creation_Date;
	}

	public void setStud_Creation_Date(Date stud_Creation_Date) {
		this.stud_Creation_Date = stud_Creation_Date;
	}

	public Date getLast_Modified_Date() {
		return last_Modified_Date;
	}

	public void setLast_Modified_Date(Date last_Modified_Date) {
		this.last_Modified_Date = last_Modified_Date;
	}

	public Date getStud_Deletion_Date() {
		return stud_Deletion_Date;
	}

	public void setStud_Deletion_Date(Date stud_Deletion_Date) {
		this.stud_Deletion_Date = stud_Deletion_Date;
	}

	public int getDelete_Status() {
		return delete_Status;
	}

	public void setDelete_Status(int delete_Status) {
		this.delete_Status = delete_Status;
	}

	@Override
	public String toString() {
		return "LibraryStudentRegistrationEntity [lib_Stud_Id=" + lib_Stud_Id + ", stud_Reg_No=" + stud_Reg_No
				+ ", stud_Enroll_Id=" + stud_Enroll_Id + ", stud_Name=" + stud_Name + ", stud_Contact=" + stud_Contact
				+ ", stud_Email=" + stud_Email + ", stud_Creation_Date=" + stud_Creation_Date + ", stud_Deletion_Date="
				+ stud_Deletion_Date + ", delete_Status=" + delete_Status + "]";
	}

}
