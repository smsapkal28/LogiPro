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

/**
 * @author Devil
 *
 */

@Entity
@Table(name = "vehicle_category")
public class VehicleCategoryEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int vehicle_Cat_Id;
	private String vehicle_Category_Name;
	private String vehicle_Category_Code;
	private Date creation_Date;
	private Date deletion_Date;
	private int delete_Status;

	public VehicleCategoryEntity() {
		// TODO Auto-generated constructor stub
	}

	public VehicleCategoryEntity(String vehicle_Category_Name, String vehicle_Category_Code) {
		this.vehicle_Category_Name = vehicle_Category_Name;
		this.vehicle_Category_Code = vehicle_Category_Code;
		this.creation_Date = new Date();
		this.deletion_Date = new Date();
		this.delete_Status = 0;
	}

	public int getVehicle_Cat_Id() {
		return vehicle_Cat_Id;
	}

	public void setVehicle_Cat_Id(int vehicle_Cat_Id) {
		this.vehicle_Cat_Id = vehicle_Cat_Id;
	}

	public String getVehicle_Category_Name() {
		return vehicle_Category_Name;
	}

	public void setVehicle_Category_Name(String vehicle_Category_Name) {
		this.vehicle_Category_Name = vehicle_Category_Name;
	}

	public String getVehicle_Category_Code() {
		return vehicle_Category_Code;
	}

	public void setVehicle_Category_Code(String vehicle_Category_Code) {
		this.vehicle_Category_Code = vehicle_Category_Code;
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

	public int getDelete_Status() {
		return delete_Status;
	}

	public void setDelete_Status(int delete_Status) {
		this.delete_Status = delete_Status;
	}

	@Override
	public String toString() {
		return "VehicleCategoryEntity [vehicle_Cat_Id=" + vehicle_Cat_Id + ", vehicle_Category_Name="
				+ vehicle_Category_Name + ", vehicle_Category_Code=" + vehicle_Category_Code + ", creation_Date="
				+ creation_Date + ", deletion_Date=" + deletion_Date + ", delete_Status=" + delete_Status + "]";
	}

	

}
