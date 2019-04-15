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
@Table(name="FeeCategory")
public class FeeCategoryEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int feeCatId;
	private String feeCatName;
	private String feeCatCode;
	private String feeRefundable;
	private int deleteStatus;
	
	public FeeCategoryEntity() {
		
		
	}

	public FeeCategoryEntity(String feeCatName, String feeCatCode,String feeRefundable) {
		super();
		this.feeCatName = feeCatName;
		this.feeCatCode = feeCatCode;
		this.feeRefundable = feeRefundable;
		this.deleteStatus = 0;
	}

	public int getFeeCatId() {
		return feeCatId;
	}

	public void setFeeCatId(int feeCatId) {
		this.feeCatId = feeCatId;
	}

	public String getFeeCatName() {
		return feeCatName;
	}

	public void setFeeCatName(String feeCatName) {
		this.feeCatName = feeCatName;
	}

	public String getFeeCatCode() {
		return feeCatCode;
	}

	public void setFeeCatCode(String feeCatCode) {
		this.feeCatCode = feeCatCode;
	}

	public String getFeeRefundable() {
		return feeRefundable;
	}

	public void setFeeRefundable(String feeRefundable) {
		this.feeRefundable = feeRefundable;
	}

	public int getDeleteStatus() {
		return deleteStatus;
	}

	public void setDeleteStatus(int deleteStatus) {
		this.deleteStatus = deleteStatus;
	}


	
}
