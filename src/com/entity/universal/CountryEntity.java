/**
 * @author Devil IndiatechSoft
 * 
 */
package com.entity.universal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Devil
 *
 */


@Entity
@Table(name="countries")
public class CountryEntity {

	@Id
	private int id;
	@Column(name="sortname")
	private String sortName;
	private String name;
	@Column(name="phonecode")
	private int phoneCode;
	
	
	
	public int getId() {
		return id;
	}
	public String getSortName() {
		return sortName;
	}
	public String getName() {
		return name;
	}
	public int getPhoneCode() {
		return phoneCode;
	}
	
	
	
}
