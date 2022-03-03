import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future signInAnonymously() async {
    try {
      UserCredential userCredential = await _auth.signInAnonymously();
      return userCredential;
    } catch (e) {
      return e;
    }
  }

  static Future signOut() {
    return _auth.signOut();
  }
}
