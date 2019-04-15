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
@Table(name = "library_setting")
public class LibrarySettingEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int setting_Id;
	private int lib_Id;
	private int issue_Duration;
	private int delay_Return_Time;
	private float delay_Return_Fine;
	@Temporal(TemporalType.DATE)
	private Date last_Modify_Date;
	@Temporal(TemporalType.DATE)
	private Date deletion_Date;
	private int delete_Status;

	public LibrarySettingEntity() {
		// TODO Auto-generated constructor stub
	}

	public LibrarySettingEntity(int lib_Id, int issue_Duration, int delay_Return_Time, float delay_Return_Fine) {
		this.lib_Id = lib_Id;
		this.issue_Duration = issue_Duration;
		this.delay_Return_Time = delay_Return_Time;
		this.delay_Return_Fine = delay_Return_Fine;
		this.last_Modify_Date = new Date();
		this.deletion_Date = new Date();
		this.delete_Status = 0;
	}

	public LibrarySettingEntity(int setting_Id,int lib_Id, int issue_Duration, int delay_Return_Time, float delay_Return_Fine) {
		this.setting_Id = setting_Id;
		this.lib_Id = lib_Id;
		this.issue_Duration = issue_Duration;
		this.delay_Return_Time = delay_Return_Time;
		this.delay_Return_Fine = delay_Return_Fine;
		this.last_Modify_Date = new Date();
		this.deletion_Date = new Date();
		this.delete_Status = 0;
	}

	public int getSetting_Id() {
		return setting_Id;
	}

	public void setSetting_Id(int setting_Id) {
		this.setting_Id = setting_Id;
	}

	public int getLib_Id() {
		return lib_Id;
	}

	public void setLib_Id(int lib_Id) {
		this.lib_Id = lib_Id;
	}

	public int getIssue_Duration() {
		return issue_Duration;
	}

	public void setIssue_Duration(int issue_Duration) {
		this.issue_Duration = issue_Duration;
	}

	public int getDelay_Return_Time() {
		return delay_Return_Time;
	}

	public void setDelay_Return_Time(int delay_Return_Time) {
		this.delay_Return_Time = delay_Return_Time;
	}

	public float getDelay_Return_Fine() {
		return delay_Return_Fine;
	}

	public void setDelay_Return_Fine(float delay_Return_Fine) {
		this.delay_Return_Fine = delay_Return_Fine;
	}

	public Date getLast_Modify_Date() {
		return last_Modify_Date;
	}

	public void setLast_Modify_Date(Date last_Modify_Date) {
		this.last_Modify_Date = last_Modify_Date;
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
		return "LibrarySettingEntity [setting_Id=" + setting_Id + ", lib_Id=" + lib_Id + ", delay_Return_Time="
				+ delay_Return_Time + ", delay_Return_Fine=" + delay_Return_Fine + ", last_Modify_Date="
				+ last_Modify_Date + ", deletion_Date=" + deletion_Date + ", delete_Status=" + delete_Status + "]";
	}

}
