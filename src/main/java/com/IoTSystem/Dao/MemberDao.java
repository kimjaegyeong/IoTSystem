package com.IoTSystem.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDao {

		private String driver = "com.mysql.cj.jdbc.Driver";
		private	String url = "jdbc:mysql://localhost:3306/iotsystem?characterEncoding=utf-8&serverTimezone=UTC&useSSL=false&useUnicode=true";

		private String user = "root";
		private String password = "password";
		
		
		public MemberDao() { 
			try {
				
				Class.forName(driver);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		/** 
		 * 로그인 
		 */
		
		public String login(String memberId, String memberPw) {
			try {
		
				Connection conn= DriverManager.getConnection(url, user, password);
			
			String sql = "select grade from member where id=? and password=?";
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, memberId); 
				pstmt.setString(2, memberPw); 
				
				ResultSet rs= pstmt.executeQuery();
		
				if(rs.next()) {
		
					return rs.getString("grade");
				}
				
				rs.close();
				pstmt.close();
				conn.close();
			}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return null;
			
		
		}
	
	public boolean join(String memberId, String memberPw, String name, String mobile, String grade) {
		try {
			
			Connection conn= DriverManager.getConnection(url, user, password);
		
			String sql = "insert into member values(?,?,?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,memberId);
			pstmt.setString(2, memberPw); 
			pstmt.setString(3, name);
			pstmt.setString(4, mobile);
			pstmt.setString(5, grade);
			int rows = pstmt.executeUpdate();

	
			if (rows == 1) {
				return true;
			}
			pstmt.close();
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		} 
		return false;
	}
	
	
}
