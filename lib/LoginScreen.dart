import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';



class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final userNameController= TextEditingController();
  final passwordController= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("adarsh"),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset("assets/images/adarsh.jpg",
          fit: BoxFit.cover,
          color: Colors.black.withOpacity(0.5),
            colorBlendMode: BlendMode.darken,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Form(
                            child: Column(
                              children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    icon: Icon(
                                      Icons.email
                                    ),

                                    hintText: "Enter email",
                                    labelText: "Email",

                                  ),
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                SizedBox(height: 5.0,),
                                TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Enter password",
                                      labelText: "Password",
                                    icon: Icon(
                                        Icons.vpn_key
                                    ),
                                  ),
                                  obscureText: true,

                                ),
                                SizedBox(height: 20.0,),
                                RaisedButton(
                                    onPressed: (){
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => HomePage()));
                                    },
                                  child: Text("Sign in"),
                                )
                              ],
                            )
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),



        ],
      ),
    );
  }
}
