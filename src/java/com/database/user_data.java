
package com.database;
import com.entities.user;
import java.sql.*;
public class user_data {
    
    private Connection con;

    public user_data(Connection con) {
        this.con = con;
    }
    
    //method to insert user into database
    
    public boolean save_user_data(user user){
        
        boolean f=false;
        try{
            
            //user--->database
            
            String query="insert into user_details(username,email,password,phone,gender,Description) values(?,?,?,?,?,?)";
            
            // prepare query
            
            PreparedStatement pst=this.con.prepareStatement(query);
            
            pst.setString(1,user.getUsername());
            pst.setString(2,user.getEmail());
            pst.setString(3,user.getPassword());
            pst.setString(4,user.getPhone());
            pst.setString(5,user.getGender());
            pst.setString(6,user.getDescription());
            
            pst.executeUpdate();
            
            f=true;
            
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return f;
    }
    
    
    
    
    
    //login page database interaction means get user by its username or password
    
    public user getuserbyemailandpassword(String email,String password){
        user user=null;
        
        try{
            String query="select * from user_details where email=? and password=?";
            PreparedStatement pst=con.prepareStatement(query);
            pst.setString(1,email);
            pst.setString(2,password);
            
            ResultSet rs=pst.executeQuery();
            
            if(rs.next())
            {
                user = new user();
                
                // data from database
                String username=rs.getString("username");
                
                //set to user object
                user.setUsername(username);
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setGender(rs.getString("gender"));
                user.setDescription(rs.getString("Description"));
                
            }
            
        }catch(Exception e)
        {
            e.printStackTrace();
        }
     
        
        
        return user;
    }
    
    
    
    //update database with new data 
    
    public boolean updateUser(user user){
        
        boolean f=false;
        try{
            
            String query="update user_details set name=? , password= ? , phone=? , description=? where email=?";
            
            PreparedStatement pst=con.prepareStatement(query);
            pst.setString(1,user.getUsername());
            pst.setString(2,user.getPassword());
            pst.setString(3,user.getPhone());
            pst.setString(4,user.getDescription());
            
            pst.setString(5,user.getEmail());
            
            pst.executeUpdate();
            
            f=true;
            
            
            
            
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
    
    
    
    
    public boolean delete(user user)
    {
        boolean f=false;
        try{
            String query="delete * from user_details where email=? and password=?";
            PreparedStatement pst=con.prepareStatement(query);
            
            pst.setString(1,user.getEmail());
            pst.setString(2,user.getPassword());
            
            pst.executeUpdate();
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
    
}