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
@Table(name ="hostel_inventory_Detail")
public class HostelInventoryDetailEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int inv_Id;
	private int inv_Cat_Id;
	private int inv_Quantity;
	private int inv_Allocated;
	private int delete_Status;
	
	
	public HostelInventoryDetailEntity() {
		// TODO Auto-generated constructor stub
	}


	public HostelInventoryDetailEntity(int inv_Cat_Id, int inv_Quantity) {
		this.inv_Cat_Id = inv_Cat_Id;
		this.inv_Quantity = inv_Quantity;
		this.inv_Allocated = 0;
		this.delete_Status = 0;
	}


	public int getInv_Id() {
		return inv_Id;
	}


	public void setInv_Id(int inv_Id) {
		this.inv_Id = inv_Id;
	}


	public int getInv_Cat_Id() {
		return inv_Cat_Id;
	}


	public void setInv_Cat_Id(int inv_Cat_Id) {
		this.inv_Cat_Id = inv_Cat_Id;
	}


	public int getInv_Quantity() {
		return inv_Quantity;
	}


	public void setInv_Quantity(int inv_Quantity) {
		this.inv_Quantity = inv_Quantity;
	}


	public int getInv_Allocated() {
		return inv_Allocated;
	}


	public void setInv_Allocated(int inv_Allocated) {
		this.inv_Allocated = inv_Allocated;
	}


	public int getDelete_Status() {
		return delete_Status;
	}


	public void setDelete_Status(int delete_Status) {
		this.delete_Status = delete_Status;
	}


	@Override
	public String toString() {
		return "HostelInventoryDetailEntity [inv_Id=" + inv_Id + ", inv_Cat_Id=" + inv_Cat_Id + ", inv_Quantity="
				+ inv_Quantity + ", delete_Status=" + delete_Status + "]";
	}
	

}
