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
@Table(name = "library_book_delay_return_fine")
public class LibraryBookDelayReturnFineEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int delay_Return_Id;
	private int stud_Id;
	private int book_Id;
	private int lib_Id;
	private int issue_Id;
	private int delay_Day;
	private float fine_Amount;
	@Temporal(TemporalType.DATE)
	private Date return_Date;
	private int delete_Status;

	public LibraryBookDelayReturnFineEntity() {
		// TODO Auto-generated constructor stub
	}

	

	public LibraryBookDelayReturnFineEntity(int stud_Id, int book_Id, int lib_Id, int issue_Id, int delay_Day,
			float fine_Amount) {
		this.stud_Id = stud_Id;
		this.book_Id = book_Id;
		this.lib_Id = lib_Id;
		this.issue_Id = issue_Id;
		this.delay_Day = delay_Day;
		this.fine_Amount = fine_Amount;
		this.return_Date = new Date();
		this.delete_Status = 0;
	}



	public int getDelay_Return_Id() {
		return delay_Return_Id;
	}

	public void setDelay_Return_Id(int delay_Return_Id) {
		this.delay_Return_Id = delay_Return_Id;
	}

	public int getStud_Id() {
		return stud_Id;
	}

	public void setStud_Id(int stud_Id) {
		this.stud_Id = stud_Id;
	}

	public int getBook_Id() {
		return book_Id;
	}

	public void setBook_Id(int book_Id) {
		this.book_Id = book_Id;
	}

	public int getDelay_Day() {
		return delay_Day;
	}

	public void setDelay_Day(int delay_Day) {
		this.delay_Day = delay_Day;
	}

	public float getFine_Amount() {
		return fine_Amount;
	}

	public void setFine_Amount(float fine_Amount) {
		this.fine_Amount = fine_Amount;
	}

	

	public int getLib_Id() {
		return lib_Id;
	}



	public void setLib_Id(int lib_Id) {
		this.lib_Id = lib_Id;
	}



	public int getIssue_Id() {
		return issue_Id;
	}



	public void setIssue_Id(int issue_Id) {
		this.issue_Id = issue_Id;
	}



	public Date getReturn_Date() {
		return return_Date;
	}

	public void setReturn_Date(Date return_Date) {
		this.return_Date = return_Date;
	}

	public int getDelete_Status() {
		return delete_Status;
	}

	public void setDelete_Status(int delete_Status) {
		this.delete_Status = delete_Status;
	}

	@Override
	public String toString() {
		return "LibraryBookDelayReturnFineEntity [delay_Return_Id=" + delay_Return_Id + ", stud_Id=" + stud_Id
				+ ", book_Id=" + book_Id + ", delay_Day=" + delay_Day + ", fine_Amount=" + fine_Amount
				+ ", return_Date=" + return_Date + ", delete_Status="
				+ delete_Status + "]";
	}

}
