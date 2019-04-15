/**
 * 
 */
package com.entity.transport;

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
@Table(name = "driver_vehicle_allocation")
public class DriverVehicleAlloactionEntity {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int drive_Vehicle_Id;
	private int driver_Id;
	private int vehicle_Id;
	private int delete_Status;
	
	public DriverVehicleAlloactionEntity() {
		
	}

	public DriverVehicleAlloactionEntity(int driver_Id, int vehicle_Id) {
		this.driver_Id = driver_Id;
		this.vehicle_Id = vehicle_Id;
		this.delete_Status = 0;
	}

	public int getDrive_Vehicle_Id() {
		return drive_Vehicle_Id;
	}

	public void setDrive_Vehicle_Id(int drive_Vehicle_Id) {
		this.drive_Vehicle_Id = drive_Vehicle_Id;
	}

	public int getDriver_Id() {
		return driver_Id;
	}

	public void setDriver_Id(int driver_Id) {
		this.driver_Id = driver_Id;
	}

	public int getVehicle_Id() {
		return vehicle_Id;
	}

	public void setVehicle_Id(int vehicle_Id) {
		this.vehicle_Id = vehicle_Id;
	}

	public int getDelete_Status() {
		return delete_Status;
	}

	public void setDelete_Status(int delete_Status) {
		this.delete_Status = delete_Status;
	}

	@Override
	public String toString() {
		return "DriverVehicleAlloactionEntity [drive_Vehicle_Id=" + drive_Vehicle_Id + ", driver_Id=" + driver_Id
				+ ", vehicle_Id=" + vehicle_Id + ", delete_Status=" + delete_Status + "]";
	}

	
}
