package services;

import common.Database;
import models.Response;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import models.Snippets;

public class SnippetServices {
    
    final public Response<List<Snippets>> getAllSnippet() {
        List<Snippets> snippetsList = new ArrayList<>();

        try {
            Connection con = Database.connect();
            String qry = "SELECT snippet.*, users.first_name, users.last_name FROM `snippet` INNER JOIN users ON snippet.userId = users.id";
            PreparedStatement pr = con.prepareStatement(qry);
            ResultSet rs = pr.executeQuery();

            while (rs.next()) {
                String id = rs.getString("id");
                String title = rs.getString("title");
                String lang = rs.getString("language");
                String des = rs.getString("des");
                String code = rs.getString("code");
                String tag = rs.getString("tage");
                boolean enhanced = rs.getBoolean("enhanced");
                String fname = rs.getString("first_name");
                String lname = rs.getString("last_name");

                Snippets snippet = new Snippets(id, title, lang, des, code, tag, enhanced,fname,lname);
                snippetsList.add(snippet);
            }

            return new Response<List<Snippets>>(true,"",snippetsList);
        } catch (Exception e) {
            return new Response(false,"Something Went Wrong : " + e.getMessage());
        } finally {
            Database.disconnect();
        }
    }

    final public Response saveSnippet(String title, String language, String description, String code, String tags,String userId) {
        Connection con;
        PreparedStatement pr;

        try {
            
            con = Database.connect();
            String qry = "INSERT INTO snippet(id, title, language, des, code, tage, userId) VALUES (?, ?, ?, ?, ?, ?, ?)";
            pr = con.prepareStatement(qry);

            String id = UUID.randomUUID().toString(); 

            pr.setString(1, id);
            pr.setString(2, title);
            pr.setString(3, language);
            pr.setString(4, description);
            pr.setString(5, code);
            pr.setString(6, tags);
            pr.setString(7, userId);

         
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
    
    final public Response<Integer> totalSnippets(String userId) {
        try {
            Connection con = Database.connect();
            String qry = "SELECT COUNT(id) AS total_snippet FROM snippet WHERE userId = ?";
            PreparedStatement pr = con.prepareStatement(qry);
            
            pr.setString(1, userId);
            ResultSet rs = pr.executeQuery();
            
            int count = 0;
            while (rs.next()) {
                count = rs.getInt("total_snippet");
            }
            
            return new Response<>(true,"",count);
        } catch (Exception e) {
            return new Response(false, "Something Went Wrong : " + e.getMessage());
        } finally {
            Database.disconnect();
        }
    }
    
    final public Response<Integer> totalAiEnhancedSnippets(String userId) {
        try {
            Connection con = Database.connect();
            String qry = "SELECT COUNT(id) AS total_snippet FROM snippet WHERE userId = ? AND enhanced = TRUE";
            PreparedStatement pr = con.prepareStatement(qry);
            
            pr.setString(1, userId);
            ResultSet rs = pr.executeQuery();
            
            int count = 0;
            while (rs.next()) {
                count = rs.getInt("total_snippet");
            }
            
            return new Response<>(true,"",count);
        } catch (Exception e) {
            return new Response(false, "Something Went Wrong : " + e.getMessage());
        } finally {
            Database.disconnect();
        }
    }
    
    final public Response<Integer> totalNonEnhancedSnippets(String userId) {
        try {
            Connection con = Database.connect();
            String qry = "SELECT COUNT(id) AS total_snippet FROM snippet WHERE userId = ? AND enhanced = FALSE";
            PreparedStatement pr = con.prepareStatement(qry);
            
            pr.setString(1, userId);
            ResultSet rs = pr.executeQuery();
            
            int count = 0;
            while (rs.next()) {
                count = rs.getInt("total_snippet");
            }
            
            return new Response<>(true,"",count);
        } catch (Exception e) {
            return new Response(false, "Something Went Wrong : " + e.getMessage());
        } finally {
            Database.disconnect();
        }
    }
}
