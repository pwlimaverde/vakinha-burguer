import 'package:dw9_delivery_app/app/core/ui/styles/app_styles.dart';
import 'package:dw9_delivery_app/app/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        primaryColor: ColorsApp.instace.primary,
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorsApp.instace.primary,
          primary: ColorsApp.instace.primary,
          secondary: ColorsApp.instace.secondary,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: AppStyles.instace.primaryButton,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Splash Page"),
        ),
        body: Column(
          children: [
            Container(),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Teste"),
            ),
          ],
        ),
      ),
    );
  }
}
