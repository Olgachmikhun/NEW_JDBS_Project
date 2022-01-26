package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P01_JDBCIntro {
    String dbUrl = "jdbc:oracle:thin:@3.84.251.99:1521:XE";
    String dbUserName = "hr";
    String dbPassword = "hr";



    @Test
    public void task1() throws SQLException {
    Connection conn = DriverManager.getConnection(dbUrl, dbUserName, dbPassword);

    // Create statement from Connection to runQueries
    Statement statement = conn.createStatement();

    // using with statement we will execute query
    ResultSet rs=statement.executeQuery("select * from departments where manager_id is not null");


    while (rs.next())
       System.out.println(rs.getInt(1)+" - "+rs.getString("department_name")+ rs.getInt(3)+"-"+rs.getInt(4));

rs=statement.executeQuery("select *from regions");
while (rs.next()){
    System.out.println(rs.getInt(1) );
    System.out.println(rs.getString(2));
}
        rs.close();
        statement.close();
        conn.close();


    }
}





