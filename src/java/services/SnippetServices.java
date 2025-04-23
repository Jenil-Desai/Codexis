package services;

import common.Database;
import models.Response;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.UUID;

public class SnippetServices {

    final public Response saveSnippet(String title, String language, String description, String code, String tags) {
        Connection con;
        PreparedStatement pr;

        try {
            
            con = Database.connect();
            String qry = "INSERT INTO snippet(id, title, language, des, code, tage) VALUES (?, ?, ?, ?, ?, ?)";
            pr = con.prepareStatement(qry);

            String id = UUID.randomUUID().toString(); 

            
            System.out.println("Executing SQL: " + qry);
            pr.setString(1, id);
            pr.setString(2, title);
            pr.setString(3, language);
            pr.setString(4, description);
            pr.setString(5, code);
            pr.setString(6, tags);

         
            int rowsAffected = pr.executeUpdate();
            if (rowsAffected > 0) {
                return new Response(true, "Snippet saved successfully!");
            } else {
                return new Response(false, "Failed to save snippet. No rows affected.");
            }
        } catch (Exception e) { 
                 return new Response(false, "Something went wrong: " + e.getMessage());
        }
        
    }
}
