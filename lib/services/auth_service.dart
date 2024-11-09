import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;
  Future<String> signupUser(
    {
      required String name,
      required String address,
      required String email,
      required String password

    }
  )async{
    try{
      UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password
        );
        await _firebaseFirestore.collection('user').doc(userCredential.user?.uid).set({
          'name':name,
          'address':address,
          'email': email,
          'password':password
        });
        return "Successfull";
    }catch(e){
      return "An error occurred : $e";
    }

  }
}