import 'package:flutter/material.dart';
import 'package:swapi_flutter/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[400],
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          scrolledUnderElevation: 0,
          color: Colors.blueGrey[400],
          titleTextStyle: const TextStyle(
            color: Colors.black,
            fontFamily: 'Poppins',
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
          centerTitle: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(15),
            ),
          ),
          elevation: 0,
        ),
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
      ),
      home: const SplashView(),
    );
  }
}
