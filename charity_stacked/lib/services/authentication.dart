import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  Future signInAnonymously() async {
    try {
      UserCredential userCredential =
          await FirebaseAuth.instance.signInAnonymously();
      return userCredential;
    } catch (e) {
      return e;
    }
  }
}
