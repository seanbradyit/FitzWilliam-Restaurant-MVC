package login;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.mysql.jdbc.Driver;
/**
 *
 * @author seanb
 */
@ManagedBean
@RequestScoped
public class login {
    private String userName = "";
    private String passWD = "";

    /**
     * Creates a new instance of login
     */
    public login() throws SQLException, ClassNotFoundException {
        System.out.println("Created LOGIN instance..."); 
                        String userDB = "root";
			String pwdDB = "admin";
			String DBconnectURL = "jdbc:mysql://localhost:3307/menu_schema?";
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection DBconnection = null;
			PreparedStatement SecurityPrep = null;
			ResultSet SecurityResult = null;
                        
                        // Establishing connection to database using properties supplied
                        DBconnection = DriverManager.getConnection(DBconnectURL, userDB, pwdDB);
                        // Basic query for pulling data for menu - packaged for use by mySQL
                        SecurityPrep = DBconnection.prepareStatement("select * from security;");
                        // Execution of the query for pulling of data to be use for use from running memory during session
                        SecurityResult = SecurityPrep.executeQuery();
    }
    
    public String getUserName() {
        return this.userName.trim();
    }
    
    public String getPassWord() {
        return this.passWD.trim();
    }
     
    public void setUserName(String userName) {
        this.userName = userName.trim();
    }
    
    public void setPassWord(String passWD) {
        this.passWD = userName.trim();
    }
     
    public String greetUser() {
        return "greeting" + " " + userName + " " + passWD;
    }
}
    
