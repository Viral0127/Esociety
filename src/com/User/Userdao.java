package com.User;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.swing.plaf.ComponentInputMapUIResource;



import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;

public class Userdao {

	
	public static Connection getconnect() {
		
		
		Connection con=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/esociety","root","");
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return con;
		
		
	}
	
	
	public static int savedata(Model m) {
		
		
		int status=0;
		
		Connection con=Userdao.getconnect();
		
		try {
			PreparedStatement p=(PreparedStatement) con.prepareStatement("insert into register (name,mobile,gender,email,pincode,pass) values(?,?,?,?,?,?)");
			
			p.setString(1, m.getName());
			p.setString(2, m.getMobile());
			p.setString(3, m.getGender());
			p.setString(4, m.getEmail());
			p.setString(5, m.getPincode());
			p.setString(6, m.getPass());
			
			status=p.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return status;
		
	}
	
	public Model checklogin(Model m) {
		
		boolean flag=false;
		Model ob=null;
		
		
		
		try {
			Connection con=Userdao.getconnect();
			String sql="select *from register where name=? and pass=?";
			PreparedStatement ps=(PreparedStatement) con.prepareStatement(sql);
			
			ps.setString(1, m.getName());
			ps.setString(2, m.getPass());
			
			ResultSet rs=(ResultSet) ps.executeQuery();
			
			
			if(rs.next()) {
				
				
				ob=new Model();
				ob.setName(rs.getString("name"));
				ob.setMobile(rs.getString("mobile"));
				ob.setGender(rs.getString("gender"));
				ob.setEmail(rs.getString("email"));
				ob.setPincode(rs.getString("pincode"));
				ob.setPass(rs.getString("pass"));
				
			}
			
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return ob;
		
		
		
	}
	
	public static List<Model>getalldata()
	{
		
		List<Model>list=new ArrayList<Model>();
		
		Connection con=Userdao.getconnect();
		try 
		{
			PreparedStatement ps=(PreparedStatement) con.prepareStatement("select *from register");
		
			ResultSet set=(ResultSet) ps.executeQuery();
			
			while(set.next())
			{
				
				Model u =new Model();
				u.setId(set.getInt("id"));
				u.setName(set.getString("name"));
				u.setMobile(set.getString("mobile"));
				u.setGender(set.getString("gender"));
				u.setEmail(set.getString("email"));
				u.setPincode(set.getString("pincode"));
				
				
				list.add(u);
			}
		}
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return list;
		
	}
	
	
	
}
