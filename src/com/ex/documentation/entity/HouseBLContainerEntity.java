/**
 * 
 */
package com.ex.documentation.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author USER 13
 *
 */
@Entity
@Table(name = "export_hblcontainerdetails", catalog = "envosys")
public class HouseBLContainerEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	private Integer id;
	private String hblno;
	private String containerno;
	
	public HouseBLContainerEntity( String string, String string2)
	{
		//this.id=id2;
		this.hblno=string;
		this.containerno=string2;
	}


	public Integer getId() {
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

	public String getContainerno() {
		return containerno;
	}

	public void setContainerno(String containerno) {
		this.containerno = containerno;
	}
	
}
