package common;

import jakarta.servlet.http.HttpSession;

public class Session {
    public static String getUserId(HttpSession session) {
        return (String) session.getAttribute("userId");
    }
    
    public static boolean isLoggedIn(HttpSession session) {
        String userId = (String) session.getAttribute("userId");
        if (userId == null) {
            return false;
        } else {
            return true;
        }
    }
}
