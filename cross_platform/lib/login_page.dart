import 'package:cross_platform/forgot_password.dart';
import 'package:flutter/material.dart';
import 'package:cross_platform/home_page/my_home_page.dart'; // Ensure this import is correct

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Define the theme color
    final Color themeColor = Color.fromARGB(255, 82, 191, 245);

    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        backgroundColor: themeColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          // Added Center widget here
          child: SingleChildScrollView(
            // Use SingleChildScrollView to ensure the view adjusts for keyboard overlay
            child: Column(
              mainAxisSize: MainAxisSize.min, // Use min to reduce excess space
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Let's get started!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: themeColor,
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  cursorColor: themeColor, // Use theme color for cursor
                  decoration: InputDecoration(
                    labelText: "Username",
                    hintText: "Enter your username",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.person, color: themeColor),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  cursorColor: themeColor, // Use theme color for cursor
                  decoration: InputDecoration(
                    labelText: "Password",
                    hintText: "Enter your password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.lock, color: themeColor),
                  ),
                ),
                SizedBox(height: 10),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      // Navigate to Forgot Password page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                ForgotPasswordPage()), // Make sure to implement ForgotPasswordPage
                      );
                    },
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(
                        color: themeColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: themeColor, // Text color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                    // Perform login logic
                  },
                  child: Text("Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
