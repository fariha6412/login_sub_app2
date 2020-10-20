import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthHelper{
  static FirebaseAuth _auth = FirebaseAuth.instance;
  static signInWithEmail(String email, String password) async {
    final result = await _auth.signInWithEmailAndPassword(email: email, password: password);
    final User user = result.user;
    return user;
  }
  static signInWithGoogle() async{
    GoogleSignIn googleSignIn = GoogleSignIn();
    final acc = await googleSignIn.signIn();
    final auth = await acc.authentication;
    final credential = GoogleAuthProvider.credential(
    accessToken: auth.accessToken,idToken: auth.idToken
    );
    final result = await _auth.signInWithCredential(credential);
    return result.user;
  }

  static logOut(){
    GoogleSignIn().signOut();
    return _auth.signOut();
  }
}