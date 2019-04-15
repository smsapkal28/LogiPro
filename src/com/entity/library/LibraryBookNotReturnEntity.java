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
@Table(name ="library_book_not_return")
public class LibraryBookNotReturnEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int not_Return_Id;
	private int stud_Id;
	private int lib_Id;
	private int book_Id;
	private int issue_Id;
	private float fine_Amount;
	@Temporal(TemporalType.DATE)
	private Date fine_Date;
	
	@Temporal(TemporalType.DATE)
	private Date delete_Date;
	private int delete_Status;

	public LibraryBookNotReturnEntity() {
		// TODO Auto-generated constructor stub
	}

	public LibraryBookNotReturnEntity(int stud_Id, int lib_Id, int book_Id, int issue_Id, float fine_Amount) {
		this.stud_Id = stud_Id;
		this.lib_Id = lib_Id;
		this.book_Id = book_Id;
		this.issue_Id = issue_Id;
		this.fine_Amount = fine_Amount;
		this.fine_Date = new Date();
		this.delete_Date = new Date();
		this.delete_Status = 0;
	}

	public int getNot_Return_Id() {
		return not_Return_Id;
	}

	public void setNot_Return_Id(int not_Return_Id) {
		this.not_Return_Id = not_Return_Id;
	}

	public int getStud_Id() {
		return stud_Id;
	}

	public void setStud_Id(int stud_Id) {
		this.stud_Id = stud_Id;
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

	public int getIssue_Id() {
		return issue_Id;
	}

	public void setIssue_Id(int issue_Id) {
		this.issue_Id = issue_Id;
	}

	public float getFine_Amount() {
		return fine_Amount;
	}

	public void setFine_Amount(float fine_Amount) {
		this.fine_Amount = fine_Amount;
	}

	public Date getFine_Date() {
		return fine_Date;
	}

	public void setFine_Date(Date fine_Date) {
		this.fine_Date = fine_Date;
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
		return "LibraryBookNotReturnEntity [not_Return_Id=" + not_Return_Id + ", stud_Id=" + stud_Id + ", lib_Id="
				+ lib_Id + ", book_Id=" + book_Id + ", issue_Id=" + issue_Id + ", fine_Amount=" + fine_Amount
				+ ", fine_Date=" + fine_Date + ", delete_Status=" + delete_Status + "]";
	}
	
	
}
