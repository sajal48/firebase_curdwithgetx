import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController extends GetxController {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  Rx<User> firebaseUser;
  var isLoggedIn = false.obs;

  @override
  void onReady() {
    super.onReady();
    firebaseUser = _firebaseAuth.currentUser as Rx<User>;
    firebaseUser.bindStream(_firebaseAuth.userChanges());
    ever(firebaseUser, _iniTialScreen);
  }

  Future<void> signInWithCredential(String email, String password) async {
    try {
      return await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      Get.snackbar("Sign In Failed", "Try again");
    }
  }

  Future<void> signOut() async {
    return await _firebaseAuth.signOut();
  }

  void _iniTialScreen(User user) {
    if (user == null) {
      //Get.offAll() //Login Page
    } else {
      //Get.offAll() //Home Page
    }
  }
}
