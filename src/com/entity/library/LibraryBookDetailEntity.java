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
@Table(name = "library_book_detail")
public class LibraryBookDetailEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int lib_Book_Id;
	private int lib_Id;
	private String book_Name;
	private String book_Edition;
	private String book_Aurthor;
	private String book_Publisher;
	private float book_Price;
	private int book_Quantity;
	private int book_Issued;
	private int book_Damaged;
	private int book_Not_Returned;
	@Temporal(TemporalType.DATE)
	private Date book_Purchase_Date;
	@Temporal(TemporalType.DATE)
	private Date Last_Change_Date;
	@Temporal(TemporalType.DATE)
	private Date delete_Date;
	private int delete_Status;

	public LibraryBookDetailEntity() {

	}

	public LibraryBookDetailEntity(int lib_Id, String book_Name, String book_Edition, String book_Aurthor,
			String book_Publisher, float book_Price, int book_Quantity, Date book_Purchase_Date) {
		this.lib_Id = lib_Id;
		this.book_Name = book_Name;
		this.book_Edition = book_Edition;
		this.book_Aurthor = book_Aurthor;
		this.book_Publisher = book_Publisher;
		this.book_Price = book_Price;
		this.book_Quantity = book_Quantity;
		this.book_Issued = 0;
		this.book_Damaged = 0;
		this.book_Not_Returned = 0;
		this.book_Purchase_Date = book_Purchase_Date;
		this.Last_Change_Date = new Date();
		this.delete_Status = 0;
	}

	public LibraryBookDetailEntity(int lib_Book_Id, int lib_Id,String book_Name, String book_Edition, String book_Aurthor,
			String book_Publisher, float book_Price, int book_Quantity, Date book_Purchase_Date) {
		this.lib_Book_Id = lib_Book_Id;
		this.lib_Id = lib_Id;
		this.book_Name = book_Name;
		this.book_Edition = book_Edition;
		this.book_Aurthor = book_Aurthor;
		this.book_Publisher = book_Publisher;
		this.book_Price = book_Price;
		this.book_Quantity = book_Quantity;
		this.book_Purchase_Date = book_Purchase_Date;
		this.Last_Change_Date = new Date();
		
	}
	
	public int getLib_Book_Id() {
		return lib_Book_Id;
	}

	public void setLib_Book_Id(int lib_Book_Id) {
		this.lib_Book_Id = lib_Book_Id;
	}

	public int getLib_Id() {
		return lib_Id;
	}

	public void setLib_Id(int lib_Id) {
		this.lib_Id = lib_Id;
	}

	public String getBook_Name() {
		return book_Name;
	}

	public void setBook_Name(String book_Name) {
		this.book_Name = book_Name;
	}

	public String getBook_Edition() {
		return book_Edition;
	}

	public void setBook_Edition(String book_Edition) {
		this.book_Edition = book_Edition;
	}

	public String getBook_Aurthor() {
		return book_Aurthor;
	}

	public void setBook_Aurthor(String book_Aurthor) {
		this.book_Aurthor = book_Aurthor;
	}

	public String getBook_Publisher() {
		return book_Publisher;
	}

	public void setBook_Publisher(String book_Publisher) {
		this.book_Publisher = book_Publisher;
	}

	public float getBook_Price() {
		return book_Price;
	}

	public void setBook_Price(float book_Price) {
		this.book_Price = book_Price;
	}

	public int getBook_Quantity() {
		return book_Quantity;
	}

	public void setBook_Quantity(int book_Quantity) {
		this.book_Quantity = book_Quantity;
	}

	public int getBook_Issued() {
		return book_Issued;
	}

	public void setBook_Issued(int book_Issued) {
		this.book_Issued = book_Issued;
	}

	public int getBook_Damaged() {
		return book_Damaged;
	}

	public void setBook_Damaged(int book_Damaged) {
		this.book_Damaged = book_Damaged;
	}

	public int getBook_Not_Returned() {
		return book_Not_Returned;
	}

	public void setBook_Not_Returned(int book_Not_Returned) {
		this.book_Not_Returned = book_Not_Returned;
	}

	public Date getBook_Purchase_Date() {
		return book_Purchase_Date;
	}

	public void setBook_Purchase_Date(Date book_Purchase_Date) {
		this.book_Purchase_Date = book_Purchase_Date;
	}
	

	public Date getLast_Change_Date() {
		return Last_Change_Date;
	}

	public void setLast_Change_Date(Date last_Change_Date) {
		Last_Change_Date = last_Change_Date;
	}

	public Date getDelete_Date() {
		return delete_Date;
	}

	public void setDelete_Date(Date delete_Date) {
		this.delete_Date = delete_Date;
	}

	public int getDelete_Status() {
		return delete_Status;
	}

	public void setDelete_Status(int delete_Status) {
		this.delete_Status = delete_Status;
	}

	@Override
	public String toString() {
		return "LibraryBookDetailEntity [lib_Book_Id=" + lib_Book_Id + ", lib_Id=" + lib_Id + ", book_Name=" + book_Name
				+ ", book_Edition=" + book_Edition + ", book_Aurthor=" + book_Aurthor + ", book_Publisher="
				+ book_Publisher + ", book_Price=" + book_Price + ", book_Quantity=" + book_Quantity
				+ ", book_Purchase_Date=" + book_Purchase_Date + ", delete_Status=" + delete_Status + "]";
	}

}
