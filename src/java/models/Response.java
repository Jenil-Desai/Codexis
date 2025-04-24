package models;

public class Response<T> {
    private boolean success;
    private String message;
    private String userId;
    private T data; // generic data field

    // Constructor without data
    public Response(boolean success, String message) {
        this.success = success;
        this.message = message;
    }

    // Constructor with userId
    public Response(boolean success, String message, String userId) {
        this.success = success;
        this.message = message;
        this.userId = userId;
    }

    // Constructor with data
    public Response(boolean success, String message, T data) {
        this.success = success;
        this.message = message;
        this.data = data;
    }

    // Constructor with all fields
    public Response(boolean success, String message, String userId, T data) {
        this.success = success;
        this.message = message;
        this.userId = userId;
        this.data = data;
    }

    public boolean isSuccess() {
        return success;
    }

    public String getMessage() {
        return message;
    }

    public String getUserId() {
        return userId;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }
}
