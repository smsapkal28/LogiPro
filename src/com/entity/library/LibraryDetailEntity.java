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
@Table(name = "library_detail")
public class LibraryDetailEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int lib_Id;
	private String lib_Name;
	private String lib_Code;
	@Temporal(TemporalType.DATE)
	private Date creation_Date;
	@Temporal(TemporalType.DATE)
	private Date last_Modified_Date;
	@Temporal(TemporalType.DATE)
	private Date deletion_Date;
	private int setting_Status;
	private int delete_Status;

	public LibraryDetailEntity() {

	}

	public LibraryDetailEntity(String lib_Name, String lib_Code) {
		this.lib_Name = lib_Name;
		this.lib_Code = lib_Code;
		this.creation_Date = new Date();
		this.last_Modified_Date = new Date();
		this.deletion_Date = new Date();
		this.setting_Status = 0;
		this.delete_Status = 0;
	}

	public LibraryDetailEntity(int lib_Id,String lib_Name, String lib_Code) {
		this.lib_Id = lib_Id;
		this.lib_Name = lib_Name;
		this.lib_Code = lib_Code;
		this.last_Modified_Date = new Date();
		
	}
	public int getLib_Id() {
		return lib_Id;
	}

	public void setLib_Id(int lib_Id) {
		this.lib_Id = lib_Id;
	}

	public String getLib_Name() {
		return lib_Name;
	}

	public void setLib_Name(String lib_Name) {
		this.lib_Name = lib_Name;
	}

	public String getLib_Code() {
		return lib_Code;
	}

	public void setLib_Code(String lib_Code) {
		this.lib_Code = lib_Code;
	}

	public Date getCreation_Date() {
		return creation_Date;
	}

	public void setCreation_Date(Date creation_Date) {
		this.creation_Date = creation_Date;
	}

	public Date getDeletion_Date() {
		return deletion_Date;
	}

	public void setDeletion_Date(Date deletion_Date) {
		this.deletion_Date = deletion_Date;
	}



	public Date getLast_Modified_Date() {
		return last_Modified_Date;
	}

	public void setLast_Modified_Date(Date last_Modified_Date) {
		this.last_Modified_Date = last_Modified_Date;
	}

	public int getSetting_Status() {
		return setting_Status;
	}

	public void setSetting_Status(int setting_Status) {
		this.setting_Status = setting_Status;
	}

	public int getDelete_Status() {
		return delete_Status;
	}

	public void setDelete_Status(int delete_Status) {
		this.delete_Status = delete_Status;
	}

	@Override
	public String toString() {
		return "LibraryDetail [lib_Id=" + lib_Id + ", lib_Name=" + lib_Name + ", lib_Code=" + lib_Code
				+ ", delete_Status=" + delete_Status + "]";
	}

}
