import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //   statusBarColor: Colors.transparent,
  //   statusBarIconBrightness: Brightness.dark,
  // ));

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pizza',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: ChangeAnnotatedRegion(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

        // body: SafeArea(
        //   child: Text('sdfsdf'),
        // ),
        );
  }
}

class ChangeAnnotatedRegion extends StatelessWidget {
  const ChangeAnnotatedRegion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
          statusBarBrightness:
              MediaQuery.of(context).platformBrightness == Brightness.dark
                  ? Brightness.light
                  : Brightness.dark,
          statusBarIconBrightness:
              MediaQuery.of(context).platformBrightness == Brightness.dark
                  ? Brightness.light
                  : Brightness.dark,
          statusBarColor: Colors.transparent),
      child: const Scaffold(
        //backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Text("Hi there Annotated"),
          ),
        ),
      ),
    );
  }
}
