/**
 * 
 */
package com.entity.fee;

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
@Table(name="Fee_Frequency")
public class FeeFrequencyEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int feqId;
	private String feqName;
	private String feqCode;
	private int noOfInstallement;
	private int deleteStatus;
	public FeeFrequencyEntity() {
		
	}
	public FeeFrequencyEntity(String feqName, String feqCode,int noOfInstallement ) {
		this.feqName = feqName;
		this.feqCode = feqCode;
		this.noOfInstallement = noOfInstallement;
		this.deleteStatus = 0;
	}
	public int getFeqId() {
		return feqId;
	}
	public void setFeqId(int feqId) {
		this.feqId = feqId;
	}
	public String getFeqName() {
		return feqName;
	}
	public void setFeqName(String feqName) {
		this.feqName = feqName;
	}
	public String getFeqCode() {
		return feqCode;
	}
	public void setFeqCode(String feqCode) {
		this.feqCode = feqCode;
	}
	public int getNoOfInstallement() {
		return noOfInstallement;
	}
	public void setNoOfInstallement(int noOfInstallement) {
		this.noOfInstallement = noOfInstallement;
	}
	public int getDeleteStatus() {
		return deleteStatus;
	}
	public void setDeleteStatus(int deleteStatus) {
		this.deleteStatus = deleteStatus;
	}
	
	
	
	
}
