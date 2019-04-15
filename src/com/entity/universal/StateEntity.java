/**
 * @author Devil IndiatechSoft
 * 
 */
package com.entity.universal;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author Devil
 *
 */
@Entity
@Table(name="states")
public class StateEntity {

	@Id
	private int id;
	private String name;
	private int country_id;
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public int getCountry_id() {
		return country_id;
	}
	
	
}
