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
@Table(name ="library_book_issued_detail")
public class LibraryBookIssuedDetailEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int issued_Id;
	private int Stud_Id;
	private int book_Id;
	private int lib_Id;
	@Temporal(TemporalType.DATE)
	private Date issue_Date;
	@Temporal(TemporalType.DATE)
	private Date return_Date;
	@Temporal(TemporalType.DATE)
	private Date actual_Return_Date;
	@Temporal(TemporalType.DATE)
	private Date delete_Date;
	private int return_Status;
	private int delete_Status;


	public LibraryBookIssuedDetailEntity() {
		// TODO Auto-generated constructor stub
	}


	public LibraryBookIssuedDetailEntity( int stud_Id, int book_Id, int lib_Id, Date issue_Date,
			Date return_Date) {
		
		Stud_Id = stud_Id;
		this.book_Id = book_Id;
		this.lib_Id = lib_Id;
		this.issue_Date = issue_Date;
		this.return_Date = return_Date;
		this.actual_Return_Date = new Date();
		this.delete_Date = new Date();
		this.return_Status = 0;
		this.delete_Status = 0;
	}


	public int getIssued_Id() {
		return issued_Id;
	}


	public void setIssued_Id(int issued_Id) {
		this.issued_Id = issued_Id;
	}


	public int getStud_Id() {
		return Stud_Id;
	}


	public void setStud_Id(int stud_Id) {
		Stud_Id = stud_Id;
	}


	public int getBook_Id() {
		return book_Id;
	}


	public void setBook_Id(int book_Id) {
		this.book_Id = book_Id;
	}


	

	public int getLib_Id() {
		return lib_Id;
	}


	public void setLib_Id(int lib_Id) {
		this.lib_Id = lib_Id;
	}


	public Date getIssue_Date() {
		return issue_Date;
	}


	public void setIssue_Date(Date issue_Date) {
		this.issue_Date = issue_Date;
	}


	public Date getReturn_Date() {
		return return_Date;
	}


	public void setReturn_Date(Date return_Date) {
		this.return_Date = return_Date;
	}


	public Date getActual_Return_Date() {
		return actual_Return_Date;
	}


	public void setActual_Return_Date(Date actual_Return_Date) {
		this.actual_Return_Date = actual_Return_Date;
	}


	public int getReturn_Status() {
		return return_Status;
	}


	public void setReturn_Status(int return_Status) {
		this.return_Status = return_Status;
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
		return "LibraryBookIssuedDetailEntity [issued_Id=" + issued_Id + ", Stud_Id=" + Stud_Id + ", book_Id=" + book_Id
				+ ", lib_Id=" + lib_Id + ", issue_Date=" + issue_Date + ", return_Date=" + return_Date
				+ ", actual_Return_Date=" + actual_Return_Date + ", delete_Status=" + delete_Status + "]";
	}
	
	
	
}
