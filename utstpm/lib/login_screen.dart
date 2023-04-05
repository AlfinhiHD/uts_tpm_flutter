import 'package:flutter/material.dart';
import 'package:utstpm/main.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formfield = GlobalKey<FormState>();
  final userController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('UTS - TPM - 123200142'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form(
            key: _formfield,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                Text(
                  "LOGIN FORM",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )
                ),
                SizedBox(height: 100),
                TextFormField(
                  keyboardType: TextInputType.name,
                  controller: userController,
                  decoration: InputDecoration(
                    labelText: "Username",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                  validator: (value) {
                    if(value == "123200142") {
                      return null;
                    } else if(value!.isEmpty) {
                      return "Username is required";
                    } else {
                      return "Invalid username";
                    }
                  },
                ),
                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: passController,
                  obscureText: passToggle,
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          passToggle = !passToggle;
                        });
                      },
                      child: Icon(
                          passToggle ? Icons.visibility : Icons.visibility_off
                      ),
                    ),
                  ),
                  validator: (value) {
                    if(value == "Alfinhi Hajid Dhia") {
                      return null;
                    } else if(value!.isEmpty) {
                      return "Password is required";
                    } else {
                      return "Invalid password";
                    }
                  },
                ),
                SizedBox(height: 50),
                ElevatedButton(
                  onPressed: () {
                    if(_formfield.currentState!.validate()) {
                      print("Login Successful!");
                      userController.clear();
                      passController.clear();

                      Route route = MaterialPageRoute(
                      builder: (context) => HomePage());
                      Navigator.push(context, route);
                    } 
                  },
                  child: Container(
                    height: 50,
                    child: Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}