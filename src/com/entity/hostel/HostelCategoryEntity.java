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
@Table(name = "hostel_category")
public class HostelCategoryEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int hostel_Id;
	private String hostel_Cat_Name;
	private String hostel_Cat_Code;
	private int delete_Status;
	
	public HostelCategoryEntity() {
		
	}

	public HostelCategoryEntity(String hostel_Cat_Name, String hostel_Cat_Code) {
		this.hostel_Cat_Name = hostel_Cat_Name;
		this.hostel_Cat_Code = hostel_Cat_Code;
		this.delete_Status = 0;
	}

	public int getHostel_Id() {
		return hostel_Id;
	}

	public void setHostel_Id(int hostel_Id) {
		this.hostel_Id = hostel_Id;
	}

	public String getHostel_Cat_Name() {
		return hostel_Cat_Name;
	}

	public void setHostel_Cat_Name(String hostel_Cat_Name) {
		this.hostel_Cat_Name = hostel_Cat_Name;
	}

	public String getHostel_Cat_Code() {
		return hostel_Cat_Code;
	}

	public void setHostel_Cat_Code(String hostel_Cat_Code) {
		this.hostel_Cat_Code = hostel_Cat_Code;
	}

	public int getDelete_Status() {
		return delete_Status;
	}

	public void setDelete_Status(int delete_Status) {
		this.delete_Status = delete_Status;
	}

	@Override
	public String toString() {
		return "HostelCategoryEntity [hostel_Id=" + hostel_Id + ", hostel_Cat_Name=" + hostel_Cat_Name
				+ ", hostel_Cat_Code=" + hostel_Cat_Code + ", delete_Status=" + delete_Status + "]";
	}
	

	
}
