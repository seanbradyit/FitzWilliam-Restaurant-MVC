package BillCalculator;

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
import java.util.ArrayList;

/**
 *
 * @author seanb
 */

@ManagedBean // declaration
@RequestScoped // declaration

public class BillCalculator {

   
   // constant for tax rate
   private final static double TAX_RATE = 0.05;
   
   // declare instance variables for database processing
   private Connection myConnection;
   private PreparedStatement myStatement;
   private ResultSet myResultSet;
   
   // declare instance variable ArrayList to hold menu items
   private ArrayList<String> menuItems = new ArrayList();
   // declare instance variable ArrayList to hold bill items
   private ArrayList<String> billItems = new ArrayList();
   
   //DB extract limit and iterator variable
   private int limit = 27;
   private int pullcounter = 0;
   
   // Creds and URL for DB connection
   private String userDB = "root";
   private String pwdDB = "admin";
   private String DBconnectURL = "jdbc:mysql://localhost:3307/menu_schema?";
   
   
   public BillCalculator() throws SQLException, ClassNotFoundException{
      //createUserInterface(); // set up GUI  

      // TODO: code to connect to the database
                        System.out.println("Created Pricing table instance...");   
                        Class.forName("com.mysql.jdbc.Driver");
                        // Establishing connection to database using properties supplied
                        myConnection = DriverManager.getConnection(DBconnectURL, userDB, pwdDB);
                        // Basic query for pulling data for menu - packaged for use by mySQL
                        myStatement = myConnection.prepareStatement("select menu_description, menu_price from menu;");
                        // Execution of the query for pulling of data to be use for use from running memory during session
                        myResultSet = myStatement.executeQuery();
                        while(myResultSet.next()){
                                menuItems.add(myResultSet.getString("menu_description"));
                                billItems.add(myResultSet.getString("menu_price"));
                        }

   } // end constructor
   
   public String ShowSelectionMenu(int index)
   {
       //return menuItems;
       //for(int i = 0; i < 28; i++){
           //System.out.println("Menu entry... " + menuItems.get(i));
           return menuItems.get(index);
       //}
       //return null;
   }
   
   public String SourcePrices(int index)
   {
       return billItems.get(index);
   }
   
}
