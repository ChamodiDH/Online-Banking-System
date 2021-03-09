package com.manager;

public class ManagerTask {

	private String staffId;
	private String name;
	private String department;
	private String duty;
	
	public ManagerTask(String staffId, String name, String department, String duty) {
		
		this.staffId = staffId;
		this.name = name;
		this.department = department;
		this.duty = duty;
	}
	
	
	
	
	/** return staffId **/
	
	public String getStaffId() {
		return staffId;
	}
	
	/** return name **/
	
	public String getName() {
		return name;
	}
	
	/** return department **/
	
	public String getDepartment() {
		return department;
	}
	
	/** return duty **/
	
	public String getDuty() {
		return duty;
	}
	
	
	
	
	
}
