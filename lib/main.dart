import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tsports/Features/authentication/screens/login/LoginScreen.dart';
import 'package:tsports/Utils/Theme/theme.dart';

void main() {
  // Todo : Add Widgets Binding
  // Todo : Init Local Storage
  // Todo : Await Native Splash
  // Todo : Initialize firebase
  // Todo : Initialize Authentication

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: myAppTheme.lightTheme,
      darkTheme: myAppTheme.darkTheme,
      home: const LoginScreen(),
    );
  }
}
