import 'package:e_train/app.dart';
import 'package:e_train/states/app_state.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // FirebaseUIAuth.configureProviders([EmailAuthProvider()]);

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ApplicationState()),
    ],
    builder: ((context, child) => const App()),
  ));
}


//flutter run --debug 