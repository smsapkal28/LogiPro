/**
 * 
 */
package com.entity.student;

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
@Table(name = "StudentEnrolDocDetail")
public class StudentEnrolDocDetailEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int docId;
	private String markSheet;
	private String birthCertificate;
	private String transferCertificate;
	private String castCertificate;
	private String migrationCertificate;
	private String photo;
	public StudentEnrolDocDetailEntity() {

	}

	

	
	public StudentEnrolDocDetailEntity(String markSheet, String birthCertificate, String transferCertificate,
			String castCertificate, String migrationCertificate, String photo) {
		
		this.markSheet = markSheet;
		this.birthCertificate = birthCertificate;
		this.transferCertificate = transferCertificate;
		this.castCertificate = castCertificate;
		this.migrationCertificate = migrationCertificate;
		this.photo = photo;
	}



	public int getDocId() {
		return docId;
	}

	public void setDocId(int docId) {
		this.docId = docId;
	}

	public String getMarkSheet() {
		return markSheet;
	}

	public void setMarkSheet(String markSheet) {
		this.markSheet = markSheet;
	}

	public String getBirthCertificate() {
		return birthCertificate;
	}

	public void setBirthCertificate(String birthCertificate) {
		this.birthCertificate = birthCertificate;
	}

	public String getTransferCertificate() {
		return transferCertificate;
	}

	public void setTransferCertificate(String transferCertificate) {
		this.transferCertificate = transferCertificate;
	}

	public String getCastCertificate() {
		return castCertificate;
	}

	public void setCastCertificate(String castCertificate) {
		this.castCertificate = castCertificate;
	}

	public String getMigrationCertificate() {
		return migrationCertificate;
	}

	public void setMigrationCertificate(String migrationCertificate) {
		this.migrationCertificate = migrationCertificate;
	}




	public String getPhoto() {
		return photo;
	}




	public void setPhoto(String photo) {
		this.photo = photo;
	}

}
