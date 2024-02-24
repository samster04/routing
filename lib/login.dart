
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:routing/server/firebase_auth_service.dart';
import 'package:routing/dashboard.dart';

class Login extends StatefulWidget {
  const Login({super.key});


  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey=GlobalKey<FormState>();
  final _usernameController= TextEditingController();
  final _passwordController= TextEditingController();
  bool? _isChecked = false;
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),

      body: Form(
        child: Column(
          children: [
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your email address'
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: _passwordController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your password'
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Checkbox(value: _isChecked ,
                    onChanged:(newValue){
                  setState(() {
                    _isChecked = newValue;
                  });
                  print('The value of check box $newValue');
                }
                ),
                SizedBox(
                  width: 5,
                ),
                Text('I agree to all the condition of this application'),
              ],
            ),
            Wrap(
              children: [
                FractionallySizedBox(
                  widthFactor: 0.3,
                  child: ElevatedButton(onPressed: () async{
                    if(_isChecked!=null){
                      if(_isChecked!){
                        //function haru lekhxau
                        //Navigator.of(context).pushNamed('/list_view_page');//euta screen bata arko screen ma jana lai use hunxa
                        final firebaseAuthService = FirebaseAuthService();
                        final email = _emailController.text;
                        final password = _passwordController.text;
                        final User? user= await firebaseAuthService.SignInUserWithEmailAndPassword( email,  password);
                        if(user!=null){
                          print('login success');
                          Navigator.of(context).pushReplacementNamed('/dashboard');
                        }
                        else{
                          print('login failed ');
                        }
                      }
                      else{
                        print('please CHECK the BOX');
                      }
                    }
                  },
                    child: Text('login'),
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: 0.03,
                ),
                FractionallySizedBox(
                  widthFactor: 0.3,
                  child: ElevatedButton(onPressed: (){},
                    child: Text('reset'),
                  ),
                ),
                FractionallySizedBox(
                  widthFactor: 0.03,
                ),
                FractionallySizedBox(
                  widthFactor: 0.3,
                  child: ElevatedButton(onPressed: (){},
                    child: Text('sign in'),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
