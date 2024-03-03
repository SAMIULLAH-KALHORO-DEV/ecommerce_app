import 'package:ecommerce_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';

// -- use this class to setup themes, initial bindings, any animations and much more

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
    );
  }
}
