import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService{
  FirebaseAuth _auth= FirebaseAuth.instance;
  Future<User ?>SignUpUserWithEmailAndPassword(String email, String password) async{
    print('email $email and $password');
    try{
      UserCredential userCredential=await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return userCredential.user;
    }
    catch(e){
      print('something went wrong $e');
    }
    return null;
  }

Future<User?>SignInUserWithEmailAndPassword(String email, String password) async {
  try {
    UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    return userCredential.user;
  }
  catch (e) {
    print('something went wrong $e');
  }
  return null;
}

  void signOutUser() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print('something went wrong');
    }
  }
}