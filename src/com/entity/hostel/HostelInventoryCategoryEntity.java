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
@Table(name = "hostel_inventory_category")
public class HostelInventoryCategoryEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int cat_Id;
	private String cat_Name;
	private String cat_Code;
	private String facility_For_Student;
	private int delete_Status;
	
	public HostelInventoryCategoryEntity() {
		
	}

	public HostelInventoryCategoryEntity(String cat_Name, String cat_Code,String facility_For_Student) {
		this.cat_Name = cat_Name;
		this.cat_Code = cat_Code;
		this.facility_For_Student = facility_For_Student;
		this.delete_Status = 0;
	}

	public int getCat_Id() {
		return cat_Id;
	}

	public void setCat_Id(int cat_Id) {
		this.cat_Id = cat_Id;
	}

	public String getCat_Name() {
		return cat_Name;
	}

	public void setCat_Name(String cat_Name) {
		this.cat_Name = cat_Name;
	}

	public String getCat_Code() {
		return cat_Code;
	}

	public void setCat_Code(String cat_Code) {
		this.cat_Code = cat_Code;
	}

	public String getFacility_For_Student() {
		return facility_For_Student;
	}

	public void setFacility_For_Student(String facility_For_Student) {
		this.facility_For_Student = facility_For_Student;
	}

	public int getDelete_Status() {
		return delete_Status;
	}

	public void setDelete_Status(int delete_Status) {
		this.delete_Status = delete_Status;
	}

	@Override
	public String toString() {
		return "HostelInventoryCategoryEntity [cat_Id=" + cat_Id + ", cat_Name=" + cat_Name + ", cat_Code=" + cat_Code
				+ ", facility_For_Student=" + facility_For_Student + ", delete_Status=" + delete_Status + "]";
	}

	
	

}
