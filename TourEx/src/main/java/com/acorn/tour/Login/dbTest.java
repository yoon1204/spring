package com.acorn.tour.Login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class dbTest {
	public static void main(String[] args) throws ClassNotFoundException, SQLException {

        String driver = "oracle.jdbc.driver.OracleDriver";
        String url = "jdbc:oracle:thin:@localhost:1521:testdb";
        String user = "scott";
        String password = "tiger";

        Class.forName(driver);
        Connection con = DriverManager.getConnection(url, user, password);
        if (con != null) {
            System.out.println("연결 성공!");
            
            String sql = "select * from usertbl";
            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                System.out.println(rs.getString(1));
                System.out.println(rs.getString(2));
                System.out.println(rs.getString(3));
                System.out.println(rs.getString(4));
                System.out.println(rs.getString(5));
            }
            
            con.close(); // 연결을 닫음
        } else {
            System.out.println("연결 실패!");
        }
    }
}