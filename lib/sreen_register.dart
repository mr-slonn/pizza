import 'package:flutter/material.dart';
import 'package:pizza/resources/resources.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const outlineInputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(color: Colors.transparent));
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: <Widget>[
                  const SizedBox(
                    height: 34,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        const WidgetSpan(
                          child: Padding(
                            padding: EdgeInsets.only(right: 9),
                            child: Image(
                              image: AssetImage(Ico.union),
                            ),
                          ),
                        ),
                        TextSpan(
                          text: 'Регистрация',
                          style: GoogleFonts.nunito(
                            color: const Color(0xFF5C5C5C),
                            fontSize: 20,
                            letterSpacing: -0.01,
                            height: 0.87,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Padding(
                      child: Divider(
                        color: Color(0xFFC4C4C4),
                      ),
                      padding: EdgeInsets.only(left: 10, right: 10)),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                      child: Text(
                        'Чтобы зарегистрироваться введите\u00A0свой\u00A0номер телефона\u00A0и\u00A0почту',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          color: const Color(0xFFC4C4C4),
                          fontSize: 16,
                          letterSpacing: -0.015,
                          height: 1.18,
                        ),
                      ),
                      padding: const EdgeInsets.only(left: 38, right: 38)),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    'Телефон',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      color: const Color.fromRGBO(0, 0, 0, 0.6),
                      fontSize: 16,
                      letterSpacing: -0.015,
                      height: 1.18,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  SizedBox(
                    width: 244,
                    height: 34,
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          labelStyle: GoogleFonts.roboto(
                            color: const Color.fromRGBO(0, 0, 0, 0.6),
                            fontSize: 16,
                            letterSpacing: -0.015,
                            height: 1.18,
                          ),
                          hintText: '+7',
                          hintStyle: const TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 0.4),
                          ),
                          contentPadding: const EdgeInsets.only(left: 12),
                          filled: true,
                          fillColor: const Color(0xFFECEFF1),
                          focusedBorder: outlineInputBorder,
                          enabledBorder: outlineInputBorder),
                    ),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  Text(
                    'Почта',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      color: const Color.fromRGBO(0, 0, 0, 0.6),
                      fontSize: 16,
                      letterSpacing: -0.015,
                      height: 1.18,
                    ),
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  SizedBox(
                    width: 244,
                    height: 34,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
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
                    height: 24,
                  ),
                  Padding(
                      child: Text(
                        'Вам придет четырехзначный\u00A0код, который\u00A0будет вашим\u00A0паролем',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          color: const Color(0xFFC4C4C4),
                          fontSize: 16,
                          letterSpacing: -0.015,
                          height: 1.18,
                        ),
                      ),
                      padding: const EdgeInsets.only(left: 38, right: 38)),
                  const SizedBox(
                    height: 14,
                  ),
                  Padding(
                      child: Text(
                        'Изменить пароль можно будет в\u00A0личном\u00A0кабинете после\u00A0регистрации',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                          color: const Color(0xFFC4C4C4),
                          fontSize: 16,
                          letterSpacing: -0.015,
                          height: 1.18,
                        ),
                      ),
                      padding: const EdgeInsets.only(left: 38, right: 38)),
                  const SizedBox(
                    height: 32,
                  ),
                  SizedBox(
                    height: 42,
                    //width: 154,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF0079D0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22.0),
                          )),
                      onPressed: () {},
                      child: Text(
                        'Отправить код',
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1.18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
