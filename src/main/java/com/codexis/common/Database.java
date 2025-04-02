package com.codexis.common;

import java.sql.Connection;
import java.sql.DriverManager;

public class Database {
    static public Connection connect() {
        try {
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/codexis", "root", "root");
            return con;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
