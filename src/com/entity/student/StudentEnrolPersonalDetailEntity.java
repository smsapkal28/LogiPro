/**
 * 
 */
package com.entity.student;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * @author Devil
 *
 */
@Entity
@Table(name = "StudentEnrolPersonalDetail")
public class StudentEnrolPersonalDetailEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int studId;
	private int studRegId;
	private int course;
	private int academicYear;
	@Temporal(TemporalType.DATE)
	private Date enrolDate;
	private String studEnrolNo;
	private String firstName;
	private String middleName;
	private String lastName;
	private String gender;
	@Temporal(TemporalType.DATE)
	private Date dob;
	private int age;
	private String bloodGroup;
	private String birthPlace;
	private String nationality;
	private String motherTongue;
	private String religion;
	private String category;
	private String emailId;
	private String adharNo;
	@Lob
	private String currentAddress;
	@Lob
	private String permanentAddress;
	private int country;
	private int state;
	private int city;
	private String pinCode;
	private String contact;
	private String alternateContact;
	private int deleteStatus;
	@OneToOne
	@JoinColumn(name = "studDocId")
	private StudentEnrolDocDetailEntity studentEnrolDocDetailEntity;
	@OneToOne
	@JoinColumn(name = "studParentId")
	private StudentEnrolParentDetailEntity studentEnrolParentDetailEntity;

	public StudentEnrolPersonalDetailEntity() {

	}

	public StudentEnrolPersonalDetailEntity(int studRegId, int academicYear,int course,Date enrolDate, String studEnrolNo, String firstName,
			String middleName, String lastName, String gender, Date dob, int age, String bloodGroup, String birthPlace,
			String nationality, String motherTongue, String religion, String category, String emailId, String adharNo,
			String currentAddress, String permanentAddress, int country, int state, int city, String pinCode,
			String contact, String alternateContact, StudentEnrolDocDetailEntity studentEnrolDocDetailEntity,
			StudentEnrolParentDetailEntity studentEnrolParentDetailEntity) {
		this.studRegId = studRegId;
		this.academicYear = academicYear;
		this.course = course;
		this.enrolDate = enrolDate;
		this.studEnrolNo = studEnrolNo;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.gender = gender;
		this.dob = dob;
		this.age = age;
		this.bloodGroup = bloodGroup;
		this.birthPlace = birthPlace;
		this.nationality = nationality;
		this.motherTongue = motherTongue;
		this.religion = religion;
		this.category = category;
		this.emailId = emailId;
		this.adharNo = adharNo;
		this.currentAddress = currentAddress;
		this.permanentAddress = permanentAddress;
		this.country = country;
		this.state = state;
		this.city = city;
		this.pinCode = pinCode;
		this.contact = contact;
		this.alternateContact = alternateContact;
		this.studentEnrolDocDetailEntity = studentEnrolDocDetailEntity;
		this.studentEnrolParentDetailEntity = studentEnrolParentDetailEntity;
	}

	public int getStudId() {
		return studId;
	}

	public void setStudId(int studId) {
		this.studId = studId;
	}

	public int getStudRegId() {
		return studRegId;
	}

	public void setStudRegId(int studRegId) {
		this.studRegId = studRegId;
	}

	public int getAcademicYear() {
		return academicYear;
	}

	public void setAcademicYear(int academicYear) {
		this.academicYear = academicYear;
	}
	public int getCourse() {
		return course;
	}

	public void setCourse(int course) {
		this.course = course;
	}

	public Date getEnrolDate() {
		return enrolDate;
	}

	public void setEnrolDate(Date enrolDate) {
		this.enrolDate = enrolDate;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getMiddleName() {
		return middleName;
	}

	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}

	public String getBirthPlace() {
		return birthPlace;
	}

	public void setBirthPlace(String birthPlace) {
		this.birthPlace = birthPlace;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getMotherTongue() {
		return motherTongue;
	}

	public void setMotherTongue(String motherTongue) {
		this.motherTongue = motherTongue;
	}

	public String getReligion() {
		return religion;
	}

	public void setReligion(String religion) {
		this.religion = religion;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getAdharNo() {
		return adharNo;
	}

	public void setAdharNo(String adharNo) {
		this.adharNo = adharNo;
	}

	public String getCurrentAddress() {
		return currentAddress;
	}

	public void setCurrentAddress(String currentAddress) {
		this.currentAddress = currentAddress;
	}

	public String getPermanentAddress() {
		return permanentAddress;
	}

	public void setPermanentAddress(String permanentAddress) {
		this.permanentAddress = permanentAddress;
	}

	public int getCountry() {
		return country;
	}

	public void setCountry(int country) {
		this.country = country;
	}

	public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public int getCity() {
		return city;
	}

	public void setCity(int city) {
		this.city = city;
	}

	

	public String getPinCode() {
		return pinCode;
	}

	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getAlternateContact() {
		return alternateContact;
	}

	public void setAlternateContact(String alternateContact) {
		this.alternateContact = alternateContact;
	}

	public int getDeleteStatus() {
		return deleteStatus;
	}

	public void setDeleteStatus(int deleteStatus) {
		this.deleteStatus = deleteStatus;
	}

	public String getStudEnrolNo() {
		return studEnrolNo;
	}

	public void setStudEnrolNo(String studEnrolNo) {
		this.studEnrolNo = studEnrolNo;
	}

	public StudentEnrolDocDetailEntity getStudentEnrolDocDetailEntity() {
		return studentEnrolDocDetailEntity;
	}

	public void setStudentEnrolDocDetailEntity(StudentEnrolDocDetailEntity studentEnrolDocDetailEntity) {
		this.studentEnrolDocDetailEntity = studentEnrolDocDetailEntity;
	}

	public StudentEnrolParentDetailEntity getStudentEnrolParentDetailEntity() {
		return studentEnrolParentDetailEntity;
	}

	public void setStudentEnrolParentDetailEntity(StudentEnrolParentDetailEntity studentEnrolParentDetailEntity) {
		this.studentEnrolParentDetailEntity = studentEnrolParentDetailEntity;
	}

	@Override
	public String toString() {
		return "StudentEnrolPersonalDetailEntity [studId=" + studId + ", studRegId=" + studRegId + ", course=" + course
				+ ", academicYear=" + academicYear + ", enrolDate=" + enrolDate + ", studEnrolNo=" + studEnrolNo
				+ ", firstName=" + firstName + ", middleName=" + middleName + ", lastName=" + lastName + ", gender="
				+ gender + ", dob=" + dob + ", age=" + age + ", bloodGroup=" + bloodGroup + ", birthPlace=" + birthPlace
				+ ", nationality=" + nationality + ", motherTongue=" + motherTongue + ", religion=" + religion
				+ ", category=" + category + ", emailId=" + emailId + ", adharNo=" + adharNo + ", currentAddress="
				+ currentAddress + ", permanentAddress=" + permanentAddress + ", country=" + country + ", state="
				+ state + ", city=" + city + ", pinCode=" + pinCode + ", contact=" + contact + ", alternateContact="
				+ alternateContact + ", deleteStatus=" + deleteStatus + ", studentEnrolDocDetailEntity="
				+ studentEnrolDocDetailEntity + ", studentEnrolParentDetailEntity=" + studentEnrolParentDetailEntity
				+ "]";
	}

}
