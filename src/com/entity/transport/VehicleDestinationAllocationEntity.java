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
@Table(name = "vehicle_destination_allocation")
public class VehicleDestinationAllocationEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int vehicle_Dest_Id;
	private int vehicle_Id;
	
	private String dest_Id;
	private int delete_Status;

	public VehicleDestinationAllocationEntity() {
		// TODO Auto-generated constructor stub
	}

	public VehicleDestinationAllocationEntity(int vehicle_Id, String dest_Id) {
		this.vehicle_Id = vehicle_Id;
		this.dest_Id = dest_Id;
		this.delete_Status = 0;
	}

	public int getVehicle_Dest_Id() {
		return vehicle_Dest_Id;
	}

	public void setVehicle_Dest_Id(int vehicle_Dest_Id) {
		this.vehicle_Dest_Id = vehicle_Dest_Id;
	}

	public int getVehicle_Id() {
		return vehicle_Id;
	}

	public void setVehicle_Id(int vehicle_Id) {
		this.vehicle_Id = vehicle_Id;
	}

	public String getDest_Id() {
		return dest_Id;
	}

	public void setDest_Id(String dest_Id) {
		this.dest_Id = dest_Id;
	}

	public int getDelete_Status() {
		return delete_Status;
	}

	public void setDelete_Status(int delete_Status) {
		this.delete_Status = delete_Status;
	}

	@Override
	public String toString() {
		return "VehicleDestinationAllocationEntity [vehicle_Dest_Id=" + vehicle_Dest_Id + ", vehicle_Id=" + vehicle_Id
				+ ", dest_Id=" + dest_Id + ", delete_Status=" + delete_Status + "]";
	}

}
