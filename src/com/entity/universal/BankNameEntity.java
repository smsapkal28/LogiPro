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
@Table(name="bankname")
public class BankNameEntity {

	@Id
	private int bankid;
	private String bank_name;
	public int getId() {
		return bankid;
	}
	public String getBank_name() {
		return bank_name;
	}
	
	
	
}
