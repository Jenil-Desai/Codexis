package models;

public class User {
    private String id;
    private String firstName;
    private String lastName;
    private String email;
    private String password;

    public User(String id, String firstName, String lastName, String email, String password) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.password = password;
    }
}
