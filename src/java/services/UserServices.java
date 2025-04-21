package services;

import common.Database;
import models.Response;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.UUID;

public class UserServices {
    final public Response registerUser(String firstName, String lastName, String email, String password) {
        try {
            Connection con = Database.connect();

            String qry = "INSERT INTO users(id,first_name,last_name,email,password) VALUES(?,?,?,?,?)";
            PreparedStatement pr = con.prepareStatement(qry);

            String id = UUID.randomUUID().toString();

            pr.setString(1,id);
            pr.setString(2,firstName);
            pr.setString(3,lastName);
            pr.setString(4,email);
            pr.setString(5,password);

            pr.executeUpdate();
            return new Response(true,"");
        } catch (Exception e) {
            return new Response(false,"Something went wrong: " + e.toString());
        } finally {
            Database.disconnect();
        }
    }

    final public Response loginUser(String email, String password) {
        try {
            Connection con = Database.connect();
            String qry = "SELECT id, email, password FROM users WHERE email = ?";
            PreparedStatement pr = con.prepareStatement(qry);
            pr.setString(1, email);

            ResultSet rs = pr.executeQuery();

            if (rs.next()) {
                String dbPassword = rs.getString("password");
                String userId = rs.getString("id");

                if (password.equals(dbPassword)) {
                    return new Response(true,"Success",userId);
                } else {
                    return new Response(false, "Incorrect password");
                }
            } else {
                return new Response(false, "User not found");
            }
        } catch (Exception e) {
            return new Response(false, "Something went wrong: " + e.getMessage());
        } finally {
            Database.disconnect();
        }
    }

}
