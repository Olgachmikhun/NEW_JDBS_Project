package com.cydeo.jdbctests.day01;

import org.junit.jupiter.api.Test;

import java.sql.*;

public class P02_FlexibleNavigation {
    String dbUrl = "jdbc:oracle:thin:@3.84.251.99:1521:XE";
    String dbUserName = "hr";
    String dbPassword = "hr";

    @Test
    public void test2() throws SQLException {
        Connection conn = DriverManager.getConnection(dbUrl, dbUserName, dbPassword);

        // Create statement from Connection to runQueries
        Statement statement = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        // using with statement we will execute query
        ResultSet rs = statement.executeQuery("select first_name,last_name from employees");
        rs.next();
        //first row
        System.out.println(rs.getString(1) + "-" + rs.getString(2));
        //second row
        rs.next();
        System.out.println(rs.getString(1) + "-" + rs.getString(2));
        //last row
        rs.last();
        System.out.println(rs.getString(1) + "-" + rs.getString(2));


        int row = rs.getRow();
        System.out.println("row = " + row);
        //jump to row 8
        rs.absolute(8);
        row = rs.getRow();
        System.out.println("row = " + row);
        System.out.println(rs.getString(1) + "-" + rs.getString(2));

        rs.previous();
        row = rs.getRow();
        System.out.println("row = " + row);
        System.out.println(rs.getString(1) + "-" + rs.getString(2));

        rs.last();
        row = rs.getRow();
        System.out.println("row = " + row);


        rs.beforeFirst();

        while (rs.next()) {
            System.out.println(rs.getString(1) + "-" + rs.getString(2));
        }

        rs.first();
        System.out.println("row = " + row);



        rs.close();
        statement.close();
        conn.close();

    }
}