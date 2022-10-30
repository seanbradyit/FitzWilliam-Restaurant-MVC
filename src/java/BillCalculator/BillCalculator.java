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
    // JLabel for Restaurant
   private String restaurantJLabel;
   // JPanel to display waiter information
   private String waiterJPanel;
   // JLabel and JTextField for table number
   private String tableNumberJLabel;
   private String tableNumberJTextField;
   // JLabel and JTextField for waiter name
   private String waiterNameJLabel;
   private String waiterNameJTextField;
   // JPanel to display menu items
   private String menuItemsJPanel;
   // JLabel and JComboBox for beverage
   private String beverageJLabel;
   //TODO private RADIOselection beverageJComboBox; !!!!!!!!!!!!!
   // JLabel and JComboBox for appetizer
   private String appetizerJLabel;
   //TODO private RADIOselection appetizerJComboBox; !!!!!!!!!!!!!
   // JLabel and JComboBox for main course
   private String mainCourseJLabel;
   //TODO private RADIOselection mainCourseJComboBox; !!!!!!!!!!!!!
   // JLabel and JComboBox for dessert
   private String dessertJLabel;
   //TODO private RADIOselection dessertJComboBox; !!!!!!!!!!!!!
   // JButton for calculate bill
   //TODO private BUTTONselection calculateBillJButton; !!!!!!!!!!
   // JLabel and JTextField for subtotal
   private String subtotalJLabel;
   private String subtotalJTextField;
   // JLabel and JTextField for tax
   private String taxJLabel;
   private String taxJTextField;
   // JLabel and JTextField for total
   private String totalJLabel;
   private String totalJTextField;
   
   // constant for tax rate
   private final static double TAX_RATE = 0.05;
   
   // declare instance variables for database processing
   private Connection myConnection;
   private PreparedStatement myStatement;
   private ResultSet myResultSet;
   
   // declare instance variable ArrayList to hold menu items
   private ArrayList menuItems = new ArrayList();
   // declare instance variable ArrayList to hold bill items
   private ArrayList billItems = new ArrayList();
   
   //DB extract constant
   private static int limit = 28;
   
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
                        myStatement = myConnection.prepareStatement("select menu_description from menu;");
                        // Execution of the query for pulling of data to be use for use from running memory during session
                        myResultSet = myStatement.executeQuery();
                        while(myResultSet.next()){
                            menuItems.add(myResultSet.getString("menu_description"));
                        }

   } // end constructor
   
   // create and position GUI components; register event handlers
   private void createUserInterface()
   {
       
   }
   
   // test to return output from DB extraction...
   public void ShowSelection()
   {
       //return menuItems;
       for(int i = 0; i < 28; i++){
           menuItems.get(i);
       }
   }
   
   // **** TODO ****** set up waiterJPanel
   private void createWaiterJPanel()
   {
       
   }
   
   // **** TODO ****** create menuItemsJPanel
   private void createMenuItemsJPanel()
   {
       
   }
   
   // **** TODO ****** add items to JComboBox
   private void loadCategory(
      String category, String categoryJComboBox )
   {
            
   }
   
   // **** TODO ****** user select beverage
   private void beverageJComboBoxItemStateChanged( /*ItemEvent event*/ )
   {
      
   }
   
   // **** TODO ****** user select appetizer
   private void appetizerJComboBoxItemStateChanged( /*ItemEvent event*/ )
   {
      
   }
   
   // **** TODO ****** user select main course
   private void mainCourseJComboBoxItemStateChanged( /*ItemEvent event*/ )
   {
      
   }
   
   // **** TODO ****** user select dessert
   private void dessertJComboBoxItemStateChanged( /*ItemEvent event*/ )
   {
      
   }
   
   // **** TODO ****** user click Calculate Bill JButton
   private void calculateBillJButtonActionPerformed( /*ActionEvent event*/ )
   {
      
   }
   
   // **** TODO ****** calculate subtotal
   private double calculateSubtotal()
   {
      return 0;

   }
   
   // **** TODO ****** user close window
   private void frameWindowClosing( /*WindowEvent event*/ )
   {
      
   }
   
   // **** TODO ****** method main translated to already in use app. !!!!!!!!!!
   // **** TODO ****** check command-line arguments
   // **** TODO ****** get command-line arguments
   // **** TODO ****** create new RestaurantBillCalculator
   
}
