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
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author seanb
 */
@ManagedBean
@RequestScoped
public class login {
    private String userName = "";
    private String passWD = "";
    
    private String Manager = " ";
    private String Manager1 = " ";
    private String Manager2 = " ";
    
    private String dbfounduser = " ";
    private String dbfoundPassword = " ";
    private String authuser = " ";
    private String authpassword = " ";

    /**
     * Creates a new instance of login
     */
    
    private String userDB = "root";
    private String pwdDB = "admin";
    private String DBconnectURL = "jdbc:mysql://localhost:3307/menu_schema?";
    
    private Connection DBconnection = null;
    private PreparedStatement SecurityPrep = null;
    private ResultSet SecurityResult = null;
    
    
    
    public login() throws SQLException, ClassNotFoundException {
                        System.out.println("Created LOGIN instance...");   
                        Class.forName("com.mysql.jdbc.Driver");
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
        this.passWD = passWD.trim();
    }
     
    public String greetUser() {
        return "Greeting:" + " " + userName + " ";
    }
    
    public void loginUser() throws SQLException, ClassNotFoundException{ 
        
        while(SecurityResult.next()){
                dbfounduser = SecurityResult.getString("username");
                dbfoundPassword = SecurityResult.getString("password");
                if(userName.equals(dbfounduser) && passWD.equals(dbfoundPassword)){
                    authuser="YES";
                }else{
                    authuser="NO";
                }
        }
    }
    
    public String alloweduser(){
        return authuser;
    }
}
    
