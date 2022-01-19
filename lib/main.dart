import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pizza/resources/resources.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pizza/sreen_pizza.dart';
import 'package:pizza/sreen_register.dart';
import 'package:pizza/demoshadows.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //   statusBarColor: Colors.transparent,
  //   statusBarIconBrightness: Brightness.dark,
  // ));

  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/LICENSE.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

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
      // themeMode: ThemeMode.system,
      // theme: ThemeData(
      //   brightness: Brightness.light,
      // ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      // ),
      //home: ChangeAnnotatedRegion(),
      //home: const RegisterScreen(),
      home: SreenPizzCalc(),
      //home: ShadowDemo(),
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
    const linkTextStyle = TextStyle(
      fontSize: 16,
      letterSpacing: -0.015,
      fontWeight: FontWeight.w500,
      color: Color(0xFF0079D0),
    );
    const outlineInputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(color: Colors.transparent));
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
      child: Scaffold(
        //backgroundColor: Colors.teal,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(
                    height: 81,
                  ),
                  const Image(
                    image: AssetImage(Logo.dartLogo),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  const Padding(
                      child: Text(
                        'Введите логин в\u00A0виде 10\u00A0цифр номера\u00A0телефона',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(0, 0, 0, 0.6),
                          height: 1.18,
                        ),
                      ),
                      padding: EdgeInsets.only(left: 38, right: 38)),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 244,
                    height: 34,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                          hintText: '+7',
                          hintStyle: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.4),
                          ),
                          contentPadding: EdgeInsets.only(left: 12),
                          filled: true,
                          fillColor: Color(0xFFECEFF1),
                          focusedBorder: outlineInputBorder,
                          enabledBorder: outlineInputBorder),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 244,
                    height: 34,
                    child: TextFormField(
                      obscureText: true,
                      obscuringCharacter: '*',
                      decoration: const InputDecoration(
                          hintText: '******',
                          hintStyle: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.4),
                          ),
                          contentPadding: EdgeInsets.only(left: 12),
                          filled: true,
                          fillColor: Color(0xFFECEFF1),
                          focusedBorder: outlineInputBorder,
                          enabledBorder: outlineInputBorder),
                    ),
                  ),
                  const SizedBox(height: 28),
                  SizedBox(
                    height: 42,
                    width: 154,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF0079D0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0),
                          )),
                      onPressed: () {},
                      child: Text(
                        'Войти',
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1.18,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 61,
                  ),
                  InkWell(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 4),
                      child: const Text(
                        'Регистрация',
                        style: linkTextStyle,
                      ),
                    ),
                    onTap: () {},
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  InkWell(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 2, horizontal: 4),
                      child: const Text(
                        'Забыли пароль?',
                        style: linkTextStyle,
                      ),
                    ),
                    onTap: () {},
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
