package com.codexis.services;

import com.codexis.models.User;

public class UserServices {
    public User registerUser(String firstName, String lastName, String email, String password) {
        User user = new User("1", firstName, lastName, email, password);
        return user;
    }
}
