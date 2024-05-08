/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package nam;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/login")
public class Cookies extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean rememberMe = request.getParameter("rememberMe") != null; // Check if "Remember Me" checkbox is checked

        // Check if the user has previously logged in by checking for a cookie
        Cookie[] cookies = request.getCookies();
        String rememberedUsername = null;
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("rememberedUsername")) {
                    rememberedUsername = cookie.getValue();
                    break;
                }
            }
        }

        // If the user has previously logged in and "Remember Me" checkbox is checked, automatically populate the username field
        if (rememberedUsername != null && rememberMe) {
            request.setAttribute("rememberedUsername", rememberedUsername);
        }

        // Assuming password is "123456" for all usernames
        if (password != null && password.equals("123456")) {
            HttpSession session = request.getSession();
            session.setAttribute("username", username);

            // If "Remember Me" checkbox is checked, set a cookie to remember the username
            if (rememberMe) {
                Cookie usernameCookie = new Cookie("rememberedUsername", username);
                usernameCookie.setMaxAge(7 * 24 * 60 * 60); // Cookie expires in 7 days
                response.addCookie(usernameCookie);
            } else { // If "Remember Me" checkbox is not checked, delete the cookie
                Cookie deleteCookie = new Cookie("rememberedUsername", "");
                deleteCookie.setMaxAge(0); // Set the cookie's max age to 0 to delete it
                response.addCookie(deleteCookie);
            }

            response.sendRedirect("dashboard.jsp");
        } else {
            response.sendRedirect("login.jsp"); // Redirect back to login page if login fails
        }
    }
}



