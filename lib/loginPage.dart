import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _formKey = GlobalKey<FormState>();
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Login'),
        centerTitle:true,
      ),
      body: Form(
        key: _formKey,
        child:Column(
          children:[
            TextFormField(
              controller: _userNameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter a username',
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              obscureText: true,
              controller: _passwordController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter a password',
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){},
                child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
