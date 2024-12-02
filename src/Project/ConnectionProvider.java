/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Project;
import java.sql.*;
/**
 *
 * @author HP
 */
public class ConnectionProvider {
   public static Connection getCon()
    {
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/qems","root","your_database_password");
            return con;
        }
        catch(Exception e)
        {
            return null;
        }
    }
}  

//package Project;
//
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.SQLException;
//
//public class ConnectionProvider {
//    public static Connection getCon() {
//        try {
//            Class.forName("com.mysql.cj.jdbc.Driver");
//            String url = System.getenv("DB_URL");
//            String user = System.getenv("DB_USER");
//            String password = System.getenv("DB_PASSWORD");
//
//            // Debugging: Print variables to verify correctness
//            System.out.println("DB_URL: " + url);
//            System.out.println("DB_USER: " + user);
//
//            if (url == null || user == null || password == null) {
//                throw new IllegalStateException("Environment variables are not properly set!");
//            }
//
//            return DriverManager.getConnection(url, user, password);
//        } catch (Exception e) {
//            e.printStackTrace(); // Log the actual error
//            return null;
//        }
//    }
//}
