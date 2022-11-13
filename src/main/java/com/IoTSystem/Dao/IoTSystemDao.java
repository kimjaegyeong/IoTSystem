package com.IoTSystem.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class IoTSystemDao {

	private String driver = "com.mysql.cj.jdbc.Driver";
	private	String url = "jdbc:mysql://localhost:3306/iotsystem?characterEncoding=utf-8&serverTimezone=UTC&useSSL=false&useUnicode=true";

	private String user = "root";
	private String password = "password";
	
	public IoTSystemDao() { 
		try {
			
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
		
public boolean survey(String product,String IoT_function,int importance,int priority,int weight, String relation_IoT,String testMethod) {
		
		try {


			Connection conn= DriverManager.getConnection(url, user, password);
		
			String sql = "insert into iotsystem values(?,?,?,?,?,?,?,NULL,NULL,NULL,NULL,NULL,NULL,NULL)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,product);
			pstmt.setString(2, IoT_function); 
			pstmt.setInt(3, importance);
			pstmt.setInt(4, priority);
			pstmt.setInt(5, weight);
			pstmt.setString(6, relation_IoT);
			pstmt.setString(7, testMethod);
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

public ArrayList<String> IoTFunctionExtraction(String product){
	try {

	Connection conn= DriverManager.getConnection(url, user, password);

String sql = "select distinct IoT_function from iotsystem where production_field=?";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, product); 
	
	ResultSet rs= pstmt.executeQuery();

	ArrayList<String> list = new ArrayList<String>();
	while(rs.next()) {
		String IoTFunction =rs.getString("IoT_function");
		
		list.add(IoTFunction);
	}
	rs.close();
	pstmt.close();
	conn.close();
	
	return list; 
}catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
ArrayList<String> emptyList= new ArrayList<String>();
return emptyList;

}

public String commonVariableSort(String property,String action,String interface_relationship,String independence,String commonOrVariable, String product, String IoT_function) {
	try {


	Connection conn= DriverManager.getConnection(url, user, password);

	String sql = "update iotsystem set common_variable =?, property =?, action=?, interface_relationship=?, independence=? where production_field=? and IoT_function=? ";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, commonOrVariable);
	pstmt.setString(2,property);
	pstmt.setString(3,action);
	pstmt.setString(4,interface_relationship);
	pstmt.setString(5,independence);
	pstmt.setString(6,product);
	pstmt.setString(7,IoT_function);

	int rows = pstmt.executeUpdate();

	
	
		return commonOrVariable;
	
}catch (SQLException e) {
	e.printStackTrace();
	
} 
	return null;


}

public ArrayList<String> analysis(String product, String IoT_function){
	
	try {

		Connection conn= DriverManager.getConnection(url, user, password);

		String sql = "select avg(importance), avg(priority), avg(weight),relation_IoT from iotsystem where production_field=? and IoT_function=? ";
		

		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, product); 
		pstmt.setString(2, IoT_function);
		ResultSet rs= pstmt.executeQuery();

 		ArrayList<String> list = new ArrayList<String>();
 
 		if(rs.next()) {

			String importance_avg =rs.getString("avg(importance)");
			String priority_avg= rs.getString("avg(priority)");
			String weight_avg= rs.getString("avg(weight)");
			String relation_IoT= rs.getString("relation_IoT");

			if(relation_IoT==null) {
				relation_IoT="없음";
			}
			list.add(importance_avg);
			list.add(priority_avg);
			list.add(weight_avg);
			list.add(relation_IoT);
		
		}
		rs.close();
		pstmt.close();
		conn.close();
		
		return list; 
		
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return null;
	
}

public ArrayList<ArrayList> t_test_value(String product, String IoT_function) {
	try {

		Connection conn= DriverManager.getConnection(url, user, password);

	String sql = "select importance, priority from iotsystem where production_field=? and IoT_function=?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, product); 
		pstmt.setString(2, IoT_function);
		ResultSet rs= pstmt.executeQuery();

		ArrayList<Double> importance_list = new ArrayList<Double>();
		ArrayList<Double> priority_list= new ArrayList<Double>();
		while(rs.next()) {
			double importance =rs.getInt("importance");
			double priority= rs.getInt("priority");
			importance_list.add(importance);
			priority_list.add(priority);
		}
		rs.close();
		pstmt.close();
		conn.close();
		ArrayList<ArrayList> list= new ArrayList<ArrayList>();
		list.add(importance_list);
		list.add(priority_list);

		return list; 
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return null;
}

public boolean t_upsert(String product, String IoT_function, String t_value) {
	
	try {

		double t_value2= Double.parseDouble(t_value);
		
		Connection conn= DriverManager.getConnection(url, user, password);
	
		String sql = "insert into t_test(production_field,IoT_function) values(?,?) on duplicate key update t_value=?";



		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,product);
		pstmt.setString(2, IoT_function); 
		pstmt.setDouble(3, t_value2);
		
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

public ArrayList<Double> t_for_grade(String product, String IoT_function, String t_testValue) {
	try {

		Connection conn= DriverManager.getConnection(url, user, password);

	String sql = "select t_value from t_test ";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs= pstmt.executeQuery(); 
		
		ArrayList<Double> t_value_list = new ArrayList<Double>();
		
		while(rs.next()) {
			double t_value= rs.getDouble("t_value");
			t_value_list.add(t_value);
			
		}
		
		rs.close();
		pstmt.close();
		conn.close();
		
		return t_value_list; 
		
		
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return null;
}
	

	
	

	


public String category_test_items(String product, String IoT_function) {
	try {

		Connection conn= DriverManager.getConnection(url, user, password);

	String sql = "select common_variable, functional_or_useability from iotsystem where production_field=? and IoT_function=? ";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, product); 
		pstmt.setString(2, IoT_function);
		ResultSet rs= pstmt.executeQuery();
		
		
		String category_items="";
 		if(rs.next()) {

			String common_variable =rs.getString("common_variable");
			String functional_or_useability= rs.getString("functional_or_useability");
			if(common_variable.equals("common")) { 
				common_variable="공용성";
			}
			category_items= common_variable+"-"+functional_or_useability;
		}
		rs.close();
		pstmt.close();
		conn.close();
		
		return category_items; 
		
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return null;
}

public String test_method(String product, String IoT_function) {
	try {

		Connection conn= DriverManager.getConnection(url, user, password);

	String sql = "select test_method from iotsystem where production_field=? and IoT_function=? ";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, product); 
		pstmt.setString(2, IoT_function);
		ResultSet rs= pstmt.executeQuery();
		
		
		String test_method="";
 		if(rs.next()) {

 			test_method =rs.getString("test_method");
			}
		rs.close();
		pstmt.close();
		conn.close();
		
		return test_method; 
		
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return null;
}
}

