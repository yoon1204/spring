package com.acorn.day2.실습;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MovieDAO {
	
	@Autowired
	DataSource ds;
	
	public ArrayList<Movie> movieSelectAll() {
		
		String sql="select * from movie_tbl";
		
		ArrayList<Movie> list= new ArrayList<>();
	
		try {
			Connection con = ds.getConnection();
			PreparedStatement  pst =con.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
		
			while(rs.next()) {
				String genre=rs.getString(1); 
				String title=rs.getString(2);
				String actors=rs.getString(3);
				
				list.add(new Movie(genre, title, actors));
			}
			rs.close();
			pst.close();
			con.close();
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
			
		return list;
	
			
	}
}


