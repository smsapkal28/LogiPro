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
@Table(name = "library_book_damaged")
public class LibraryBookDamagedEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int damage_Id;
	private int lib_Id;
	private int book_Id;
	private int quantity;
	@Temporal(TemporalType.DATE)
	private Date Damage_Date;
	private int delete_Status;
	public LibraryBookDamagedEntity() {
		// TODO Auto-generated constructor stub
	}
	public LibraryBookDamagedEntity(int lib_Id,int book_Id, int quantity, Date damage_Date) {
		this.lib_Id = lib_Id;
		this.book_Id = book_Id;
		this.quantity = quantity;
		Damage_Date = damage_Date;
		this.delete_Status = 0;
	}
	
	public LibraryBookDamagedEntity(int damage_Id,int lib_Id,int book_Id, int quantity, Date damage_Date) {
		this.damage_Id = damage_Id;
		this.lib_Id = lib_Id;
		this.book_Id = book_Id;
		this.quantity = quantity;
		Damage_Date = damage_Date;
		
	}
	public int getDamage_Id() {
		return damage_Id;
	}
	public void setDamage_Id(int damage_Id) {
		this.damage_Id = damage_Id;
	}
	
	
	public int getLib_Id() {
		return lib_Id;
	}
	public void setLib_Id(int lib_Id) {
		this.lib_Id = lib_Id;
	}
	public int getBook_Id() {
		return book_Id;
	}
	public void setBook_Id(int book_Id) {
		this.book_Id = book_Id;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Date getDamage_Date() {
		return Damage_Date;
	}
	public void setDamage_Date(Date damage_Date) {
		Damage_Date = damage_Date;
	}
	public int getDelete_Status() {
		return delete_Status;
	}
	public void setDelete_Status(int delete_Status) {
		this.delete_Status = delete_Status;
	}
	@Override
	public String toString() {
		return "LibraryBookDamagedEntity [damage_Id=" + damage_Id + ", book_Id=" + book_Id + ", quantity=" + quantity
				+ ", Damage_Date=" + Damage_Date + ", delete_Status=" + delete_Status + "]";
	}
	
	
	
}
