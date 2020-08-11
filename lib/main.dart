import 'package:flutter/material.dart';
import 'LoginScreen.dart';
void main(){
  runApp(MaterialApp(
    title: "Login Screen 2",
    home: HomePage(),
  ));
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
    );

  }
}


