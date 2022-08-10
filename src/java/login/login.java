package login; // security login module created to authorization as requested.

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import javax.faces.bean.ManagedBean; // Import of managed bean functionality for Java containers 
import javax.faces.bean.RequestScoped; // Import of managed bean functionality to scope requests accordingly
import java.sql.Connection; // Import of Java linked SQL functionality involving creating and handling connections
import java.sql.DriverManager; // Import of Java linked SQL functionality for loading and preparing of API drivers and associated resources
import java.sql.PreparedStatement; // Import of Java linked SQL functionality to accommodate packaging and deploying of SQL commands
import java.sql.ResultSet; // Import of Java linked SQL functionality to accommodate returning data from packaged SQL commands
import java.sql.SQLException; // Import of Java linked SQL functionality to allow the processing of errors or exceptions experienced through computation
/**
 *
 * @author seanb
 */
@ManagedBean // declaration
@RequestScoped // declaration
public class login { // initial constructor
    private String userName = ""; // internal username entry string container
    private String passWD = ""; // internal password entry string container

    private String dbfounduser = " "; // String container for sourced relative string from DB extract
    private String dbfoundPassword = " "; // String container for sourced relative string from DB extract
    private String authuser = " "; // // String container for authorization switch - preferable to boolean for casting

    /**
     * Creates a new instance of login
     */
    
    // Creds and URL for DB connection
    private String userDB = "root";
    private String pwdDB = "admin";
    private String DBconnectURL = "jdbc:mysql://localhost:3307/menu_schema?";
    
    // Initialised objects to accommodate DB connection stream
    private Connection DBconnection = null;
    private PreparedStatement SecurityPrep = null;
    private ResultSet SecurityResult = null;
    
    
    // Constructor
    public login() throws SQLException, ClassNotFoundException {
                        System.out.println("Created Security table LOGIN instance...");   
                        Class.forName("com.mysql.jdbc.Driver");
                        // Establishing connection to database using properties supplied
                        DBconnection = DriverManager.getConnection(DBconnectURL, userDB, pwdDB);
                        // Basic query for pulling data for menu - packaged for use by mySQL
                        SecurityPrep = DBconnection.prepareStatement("select * from security;");
                        // Execution of the query for pulling of data to be use for use from running memory during session
                        SecurityResult = SecurityPrep.executeQuery();
    }
    
    // Getter of username
    public String getUserName() {
        return this.userName.trim();
    }
    
    // Getter of password
    public String getPassWord() {
        return this.passWD.trim();
    }
     
    // Setter of username
    public void setUserName(String userName) {
        this.userName = userName.trim();
    }
    
    // Setter of password
    public void setPassWord(String passWD) {
        this.passWD = passWD.trim();
    }
    
    // Data extract and verification against each possible value for login authorization
    public void loginUser() throws SQLException, ClassNotFoundException{ 
        //while(SecurityResult.next()){
        if(SecurityResult.absolute(1)){
                    dbfounduser = SecurityResult.getString("username");
                    dbfoundPassword = SecurityResult.getString("password");
                    if(userName.equals(dbfounduser) && passWD.equals(dbfoundPassword)){ 
                        userName = dbfounduser; passWD = dbfoundPassword; authuser="YES";
                    }else{
                        if(SecurityResult.absolute(2)){
                                    dbfounduser = SecurityResult.getString("username");
                                    dbfoundPassword = SecurityResult.getString("password");
                                    if(userName.equals(dbfounduser) && passWD.equals(dbfoundPassword)){ 
                                        userName = dbfounduser; passWD = dbfoundPassword; authuser="YES";
                                    }else{
                                        if(SecurityResult.absolute(3)){
                                                    dbfounduser = SecurityResult.getString("username");
                                                    dbfoundPassword = SecurityResult.getString("password");
                                                    if(userName.equals(dbfounduser) && passWD.equals(dbfoundPassword)){ 
                                                        userName = dbfounduser; passWD = dbfoundPassword; authuser="YES";
                                                    }else{
                                                        authuser="NO";
                                                    }
                                        }
                                    }
                        }
                    }
        }
    }
    
    // Getter for authorization approved or not
    public String alloweduser(){
        return authuser;
    }
}
    
