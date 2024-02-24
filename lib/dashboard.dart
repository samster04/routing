import 'package:flutter/material.dart';
import 'package:routing/server/firebase_auth_service.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder:(BuildContext dialogContext)
        {
              return AlertDialog(
              icon: Icon(Icons.warning),
              title: Text('Sign out User'),
               content: Text('Are you sure you want to sign out?'),
              actions: [
                GestureDetector(child: Text('Yes'),
                onTap: (){
                  final firebaseAuthService= FirebaseAuthService();
                  firebaseAuthService.signOutUser();
                  Navigator.of(dialogContext).pop();
                  Navigator.of(context).pushReplacementNamed('/login');
                },
                ),
                GestureDetector(child: Text('No'),
                  onTap: (){
                    Navigator.of(dialogContext).pop();
                  }
                  ),

         ],
         );
        }
        );
            },
          child: Text('sign out'),
        ),
      ),
    );
  }
}