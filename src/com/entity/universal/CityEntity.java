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
@Table(name="cities")
public class CityEntity {

	@Id
	private int id;
	private String name;
	private int state_id;
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public int getState_id() {
		return state_id;
	}
	
	
}
