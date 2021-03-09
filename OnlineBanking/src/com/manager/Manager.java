package com.manager;

public class Manager {

	private String staffId;
	private String firstname;
	private String lastname;
	private String email;
	private String password;
	
	/**
	 * 
	 * @param staffId
	 * @param firstname
	 * @param lastname
	 * @param email
	 * @param password
	 */

	public Manager(String staffId, String firstname, String lastname, String email, String password) {

		this.staffId = staffId;
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.password = password;
	}
	/** 
	 * return staffId
	 */
	public String getStaffId() {
		return staffId;
	}
	/** 
	 * return first name
	 */

	public String getFirstname() {
		return firstname;
	}
	/** 
	 * return last name
	 */
	public String getLastname() {
		return lastname;
	}
	/** 
	 * return email
	 */

	public String getEmail() {
		return email;
	}

	/** 
	 * return password
	 */

	public String getPassword() {
		return password;
	}

}
