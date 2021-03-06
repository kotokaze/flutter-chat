import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:chat/pages/signin.dart';
import 'package:chat/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // Uncomment this to use the auth emulator for testing
  // await FirebaseAuth.instance.useEmulator('http://localhost:9099');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),
      home: SignInPage(),
      onGenerateRoute: PageRouter.generate,
    );
  }
}
