
package com.connection;
import java.sql.*;
public class connectionProvider {
    
    public static Connection con;
    
    public static Connection getConnection()
            {
               try{ 
                if(con==null){
                    
                    //Driver loaded
                    
                    Class.forName("com.mysql.jdbc.Driver");
                    
                    //connection create
                    
                    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/finalproject","root","");
                }}
               catch(Exception e)
               {
                   e.printStackTrace();
               }
                
              return con;  
            }
    
}
