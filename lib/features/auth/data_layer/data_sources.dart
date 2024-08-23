import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:guide_my/core/model/api_result.dart';

class FirebaseAuthDataSource {
  final firebase.FirebaseAuth firebaseAuth = firebase.FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  /// Sign in with Google
  Future<ApiResult> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    if (googleUser == null) {
      // The user canceled the sign-in
      return ApiResult(value: 'The user canceled the sign-in', isError: true);
    }

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final firebase.AuthCredential credential =
        firebase.GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final firebase.UserCredential userCredential =
        await firebaseAuth.signInWithCredential(credential);

    return ApiResult(value: userCredential.user, isError: false);
  }

  /// Sign out
  Future<void> signOut() async {
    await googleSignIn.signOut();
    await firebaseAuth.signOut();
  }
}
