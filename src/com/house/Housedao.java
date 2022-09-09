package com.house;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.User.Userdao;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;


public class Housedao {
	
	public static Connection getconnection()
	{
		Connection con=null;
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/esociety","root","");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		return con;
	}
	
public static int Savedata(Housemodel m) {
		
		
		int status=0;
		
		Connection con = Housedao.getconnection();
		
		try {
			
			PreparedStatement ps =(PreparedStatement) con.prepareStatement("insert into house_details (owner_fname,owner_lname,mobile,email,house_name,society_name,address,pcode,hcity,hstatus,htype,harea,hage,hprize,hfile) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			
			ps.setString(1, m.getOwner_fname());
			ps.setString(2, m.getOwner_lname());
			ps.setString(3, m.getMobile());
			ps.setString(4, m.getEmail());
			ps.setString(5, m.getHouse_name());
			ps.setString(6, m.getSociety_name());
			ps.setString(7, m.getAddress());
			ps.setString(8, m.getPcode());
			ps.setString(9, m.getHcity());
			ps.setString(10, m.getHstatus());
			ps.setString(11, m.getHtype());
			ps.setString(12, m.getHarea());
			ps.setString(13, m.getHage());
			ps.setString(14, m.getHprize());
			ps.setString(15, m.getHfile());
			
			
			status=ps.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
		
		return status;
		
	}

public static List<Housemodel> getAll()
{
	List<Housemodel> list = new ArrayList<Housemodel>();
	Housemodel m = null;
	
	try {
		
		Connection con = Housedao.getconnection();
		
		
		PreparedStatement ps=(PreparedStatement) con.prepareStatement("select *from house_details");
		ResultSet rs = ps.executeQuery();
		
		
		while(rs.next())
		{
			m = new Housemodel();
			m.setId(rs.getInt("id"));
			m.setOwner_fname(rs.getString("owner_fname"));
			m.setOwner_lname(rs.getString("owner_lname"));
			m.setMobile(rs.getString("mobile"));
			m.setEmail(rs.getString("email"));
			m.setHouse_name(rs.getString("house_name"));
			m.setSociety_name(rs.getString("society_name"));
			m.setAddress(rs.getString("address"));
			m.setPcode(rs.getString("pcode"));
			m.setHcity(rs.getString("hcity"));
			m.setHstatus(rs.getString("hstatus"));
			m.setHtype(rs.getString("htype"));
			m.setHarea(rs.getString("harea"));
			m.setHage(rs.getString("hage"));
			m.setHprize(rs.getString("hprize"));
			m.setHfile(rs.getString("hfile"));
			
			
			list.add(m);
		}
		
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	
	return list;
}

public static List<Housemodel> cityrecord(String hcity)
{
	
	
	List<Housemodel>list=new ArrayList<Housemodel>();
	Connection con=Userdao.getconnect();
	
	
	try 
	{
		
		PreparedStatement ps=(PreparedStatement) con.prepareStatement("select * from house_details where hcity=?");
		ps.setString(1, hcity);
		ResultSet rs=ps.executeQuery();
		
		while(rs.next())
		{
			Housemodel m=new Housemodel();
			
			m.setOwner_fname(rs.getString("owner_fname"));
			m.setOwner_lname(rs.getString("owner_lname"));
			m.setMobile(rs.getString("mobile"));
			m.setEmail(rs.getString("email"));
			m.setHouse_name(rs.getString("house_name"));
			m.setSociety_name(rs.getString("society_name"));
			m.setAddress(rs.getString("address"));
			m.setPcode(rs.getString("pcode"));
			m.setHcity(rs.getString("hcity"));
			m.setHstatus(rs.getString("hstatus"));
			m.setHtype(rs.getString("htype"));
			m.setHarea(rs.getString("harea"));
			m.setHage(rs.getString("hage"));
			m.setHprize(rs.getString("hprize"));
			m.setHfile(rs.getString("hfile"));
			
			list.add(m);
		}
	} 
	catch (SQLException e)
	{
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return list;
	
}


public static int deletedata(int id)
{
	
	int status=0;
	
	Connection con=Userdao.getconnect();
	try 
	{
		PreparedStatement ps=(PreparedStatement) con.prepareStatement("delete from house_details where id=? ");
		ps.setInt(1, id);
		status=ps.executeUpdate();
		con.close();
		
	} 
	catch (SQLException e) 
	{
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	
	return status;
	
}




}
