import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:running_flutter/features/mapp/splash_screen/splash_screen.dart';
import 'package:running_flutter/features/user_auth/presentation/pages/login_page.dart';

Future main() async {
  //Initialising firebase
  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(options: const FirebaseOptions(apiKey: "AIzaSyCeR15Zx28NXhWWHLdtyMq5TqEoh8Vi0mY", appId: "1:158443455975:web:497a79f7df0fd108d56942",
    messagingSenderId: "158443455975", 
    projectId:"flutfire-2baec"));
  }
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase',
      home:SplashScreen(
        child: LoginPage()
        ) ,
    );
  }
}