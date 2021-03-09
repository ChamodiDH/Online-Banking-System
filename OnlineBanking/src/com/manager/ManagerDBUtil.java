package com.manager;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.manager.Manager;
import com.manager.DBConnect;

public class ManagerDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	/** validate the login credentials **/

	public static boolean validate(String staffId, String password) {

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from stafflogin where staffId='" + staffId + "' and password='" + password + "'";
			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;

	}

	/** get profile details **/

	public static List<Manager> view(String staffId) {

		ArrayList<Manager> man = new ArrayList<>();

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from stafflogin where staffId='" + staffId + "'";
			rs = stmt.executeQuery(sql);

			if (rs.next()) {
				String sId = rs.getString(1);
				String firstname = rs.getString(2);
				String lastname = rs.getString(3);
				String email = rs.getString(4);
				String passU = rs.getString(5);

				Manager m = new Manager(sId, firstname, lastname, email, passU);
				man.add(m);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return man;

	}

	/** update profile **/
	
	public static boolean updatemanager(String staffId, String firstname, String lastname, String email,
			String password) {

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update stafflogin set firstname ='" + firstname + "',lastname ='" + lastname + "',email='"
					+ email + "',password='" + password + "'" + "where staffId ='" + staffId + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {

			e.printStackTrace();

		}

		return isSuccess;

	}

	/** get task list **/

	public static List<ManagerTask> taskview() {

		ArrayList<ManagerTask> mt = new ArrayList<>();

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from task";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {
				String sId = rs.getString(1);
				String name = rs.getString(2);
				String department = rs.getString(3);
				String duty = rs.getString(4);

				ManagerTask t = new ManagerTask(sId, name, department, duty);
				mt.add(t);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return mt;

	}

	/** update task list **/

	public static boolean updatetasklist(String staffId, String name, String department, String duty) {

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update task set name ='" + name + "',department ='" + department + "',duty='" + duty + "'"
					+ "where staffId ='" + staffId + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {

			e.printStackTrace();

		}

		return isSuccess;

	}

	/** delete a task **/

	public static boolean deletetasklist(String staffId) {

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "delete from task where staffId ='" + staffId + "'";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {

			e.printStackTrace();

		}

		return isSuccess;

	}

	/** add a task **/

	public static boolean addtask(String staffId, String name, String department, String duty) {

		boolean isSuccess = false;

		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into task values ('" + staffId + "','" + name + "','" + department + "','" + duty
					+ "')";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
	}

}
