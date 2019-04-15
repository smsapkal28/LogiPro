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
@Table(name = "transport_destination_detail")
public class TransportDestinationDetailEntity {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int dest_Id;
	private String dest_Name;
	private String dest_Code;
	private Float dest_Fare;
	private int delete_Status;
	
	public TransportDestinationDetailEntity() {
		// TODO Auto-generated constructor stub
	}

	public TransportDestinationDetailEntity(String dest_Name, String dest_Code, Float dest_Fare) {
		this.dest_Name = dest_Name;
		this.dest_Code = dest_Code;
		this.dest_Fare = dest_Fare;
		this.delete_Status = 0;
	}

	public int getDest_Id() {
		return dest_Id;
	}

	public void setDest_Id(int dest_Id) {
		this.dest_Id = dest_Id;
	}

	public String getDest_Name() {
		return dest_Name;
	}

	public void setDest_Name(String dest_Name) {
		this.dest_Name = dest_Name;
	}

	public String getDest_Code() {
		return dest_Code;
	}

	public void setDest_Code(String dest_Code) {
		this.dest_Code = dest_Code;
	}

	public Float getDest_Fare() {
		return dest_Fare;
	}

	public void setDest_Fare(Float dest_Fare) {
		this.dest_Fare = dest_Fare;
	}

	public int getDelete_Status() {
		return delete_Status;
	}

	public void setDelete_Status(int delete_Status) {
		this.delete_Status = delete_Status;
	}

	@Override
	public String toString() {
		return "TransportDestinationDetailEntity [dest_Id=" + dest_Id + ", dest_Name=" + dest_Name + ", dest_Code="
				+ dest_Code + ", dest_Fare=" + dest_Fare + ", delete_Status=" + delete_Status + "]";
	}

	
}
