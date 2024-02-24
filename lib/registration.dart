//one build has multiple widgets but if u make a small change it will rebuild. so if u need 100 widgets u can make 10 diff pages with 10 widgets init
//to make changes in form widget we make a different page for form and rebuild init
import 'package:flutter/material.dart';
import 'package:routing/server/firebase_auth_service.dart';

class RegistrationForm extends StatelessWidget {
   RegistrationForm({super.key});

  final _formKey= GlobalKey<FormState>();
  final _fullNameController = TextEditingController();
  final _emailAddressController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();
  /*final _mobileNumberController = TextEditingController();
  final _addressController = TextEditingController(); */


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key : _formKey,
        child:SingleChildScrollView(
      
      
          child: Padding(
            padding: const EdgeInsets.all(9.0),
            child: Column(
              children: [
                TextFormField(
                  controller: _fullNameController,
                  keyboardType: TextInputType.text,
                  maxLength: 20,
                  decoration: InputDecoration(
      
                    labelText: 'Enter your name',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _emailAddressController,
                  keyboardType: TextInputType.emailAddress,
                  maxLength: 30,
                  decoration: InputDecoration(
                    labelText: 'Enter your Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _phoneNumberController,
                  keyboardType: TextInputType.phone,
                  maxLength: 10,
                  decoration: InputDecoration(
                    labelText: 'Enter your phone number',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  maxLength: 15,
                  decoration: InputDecoration(
                    labelText: 'Enter your password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.streetAddress,
      
                  decoration: InputDecoration(
                    labelText: 'Enter your address',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed:() {
                      if(_formKey.currentState!=null){
                        if(_formKey.currentState!.validate()){
                          final email= _emailAddressController.text;
                          final password= _passwordController.text;
                          final firebaseAuthService = FirebaseAuthService();
                          firebaseAuthService.SignUpUserWithEmailAndPassword(email,password);
                        }
                        }
                      },
                      /*print('the full name is ${_fullNameController.text}');
                      print('the full name is ${_emailAddressController.text}');
                      print('the full name is ${_phoneNumberController.text}');
                    },*/
                    child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
