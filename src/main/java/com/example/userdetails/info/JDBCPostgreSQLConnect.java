package com.example.userdetails.info;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCPostgreSQLConnect {

    private final String url= "jdbc:postgresql://localhost/userinfo";
    private final String username= "postgres";
    private final String password= "password";
    private void connect(){
        try(Connection connection= DriverManager.getConnection(url,username,password)){
            if(connection!=null){
                System.out.println("Connected to database");
            }
            else {
                System.out.println("failed to connect");
            }

        }
        catch (SQLException e){
           e.printStackTrace();

        }
    }


}
