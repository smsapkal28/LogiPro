/**
 * 
 */
package com.ex.documentation.entity;


import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;



/**
 * @author USER 13
 *
 */
@Entity
@Table(name = "export_hbldetails" , catalog = "envosys")
public class HouseBLEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	private Integer id;
	private String hblno;
	
	@OneToMany(cascade = {CascadeType.ALL}, fetch = FetchType.LAZY)
	@JoinColumn(name ="ID")
	private java.util.List <HouseBLContainerEntity> contDetails;
	
	public HouseBLEntity()
	{}

	public long getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getHblno() {
		return hblno;
	}

	public void setHblno(String hblno) {
		this.hblno = hblno;
	}

	public java.util.List<HouseBLContainerEntity> getContDetails() {
		return contDetails;
	}

	public void setContDetails(java.util.List<HouseBLContainerEntity> contDetails) {
		this.contDetails = contDetails;
	}

}
