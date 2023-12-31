import 'package:flutter/material.dart';
import 'package:tstask1/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';




void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent.shade200),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}


