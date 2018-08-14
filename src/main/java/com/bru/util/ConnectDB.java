package com.bru.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class ConnectDB {

	public Connection openConnect() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			conn = DriverManager.getConnection("jdbc:mysql://localhost/amnuay?useUnicode=true&characterEncoding=utf-8",
					"root", "");
			// conn = DriverManager.getConnection("jdbc:mysql://localhost/amnuay" +
			// "?user=root&password=");

			Statement statement = conn.createStatement();
			String queryString = "select * from login";
			ResultSet rs = statement.executeQuery(queryString);
			while (rs.next()) {
//				System.out.println(rs.getString(2));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return conn;
	}
	// public static void main(String[] args) {
	// ConnectDB con = new ConnectDB();
	// Connection conn = null;
	// conn = con.openConnect();
	// if (conn != null) {
	// System.out.println("เชื่อมแล้ว");
	// } else {
	// System.out.println("ยังไม่ได้เชื่อม");
	// }
	// }

	// end class
}
