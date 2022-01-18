import 'package:flutter/material.dart';
import 'package:pizza/resources/resources.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class SreenPizzCalc extends StatefulWidget {
  SreenPizzCalc({Key? key}) : super(key: key);

  @override
  _SreenPizzCalcState createState() => _SreenPizzCalcState();
}

enum Souce { hot, sweet, cheese }

class _SreenPizzCalcState extends State<SreenPizzCalc> {
  bool _isSlimTesto = false;
  double _pizzaSize = 20.0;
  int _cost = 100;
  Souce? _souce = Souce.hot;
  bool _addCheese = true;
  double _currentSliderValue = 0;

  @override
  Widget build(BuildContext context) {
    const outlineInputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(color: Colors.transparent));
    final mediaQuery = MediaQuery.of(context);
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Align(
                alignment: Alignment.topRight,
                child: Image(
                  image: AssetImage(Disign.pizza),
                ),
              ),
              const SizedBox(
                height: 34,
              ),
              Text(
                'Калькулятор пиццы',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 30,
                  height: 1.2,
                ),
              ),
              const SizedBox(
                height: 9,
              ),
              Text(
                'Выберите параметры:',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 16,
                  height: 1.18,
                ),
              ),
              const SizedBox(
                height: 33,
              ),
              ToggleSwitch(
                minWidth: 150.0,
                cornerRadius: 83.0,
                activeBgColors: const [
                  [Color(0xFF0079D0)],
                  [Color(0xFF0079D0)]
                ],
                activeFgColor: Colors.white,
                inactiveBgColor: const Color(0xFFECEFF1),
                inactiveFgColor: const Color.fromRGBO(0, 0, 0, 0.4),
                initialLabelIndex: 1,
                totalSwitches: 2,
                labels: const ['Обычное тесто', 'Тонкое тесто'],
                radiusStyle: true,
                onToggle: (index) {
                  //print('switched to: $index');
                },
              ),
              const SizedBox(
                height: 19,
              ),
              SizedBox(
                width: 300,
                child: Text(
                  'Размер:',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 18,
                    height: 1.16,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Stack(
                  children: <Widget>[
                    const SizedBox(
                      height: 52,
                      width: 300,
                    ),
                    Container(
                      height: 34,
                      width: 300,
                      decoration: BoxDecoration(
                        color: const Color(0xFFECEFF1),
                        borderRadius: BorderRadius.circular(36),
                      ),
                    ),
                    Container(
                      height: 34,
                      width: 100,
                      decoration: const BoxDecoration(
                        color: Color(0xFF04111A),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(36.0),
                          bottomLeft: Radius.circular(36.0),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Color(0xFF0079D0), Colors.transparent],
                          stops: [
                            0.1,
                            0.1,
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 0,
                      left: 93,
                      child: Image(
                        image: AssetImage(Ico.marker),
                      ),
                    ),
                    Positioned(
                      bottom: 3,
                      left: 75,
                      child: SizedBox(
                        width: 250,
                        child: SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            overlayColor: Colors.transparent,
                            thumbColor: Colors.transparent,
                            disabledThumbColor: Colors.transparent,
                            overlappingShapeStrokeColor: Colors.transparent,
                          ),
                          child: Slider(
                            value: _currentSliderValue,
                            min: 0.0,
                            max: 2.0,
                            divisions: 2,
                            onChanged: (double value) {
                              setState(() {
                                _currentSliderValue = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 300,
                child: Text(
                  'Соус:',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.inter(
                      color: const Color(0xFF263238),
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      height: 1.16,
                      letterSpacing: 0.02),
                ),
              ),
              Container(
                width: 322,
                child: Column(
                  children: <Widget>[
                    RadioListTile<Souce>(
                      title: const Text('Острый'),
                      controlAffinity: ListTileControlAffinity.trailing,
                      contentPadding: const EdgeInsets.only(left: 22, right: 0),
                      activeColor: const Color(0xFF5DB075),
                      visualDensity: const VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.minimumDensity),
                      value: Souce.hot,
                      groupValue: _souce,
                      onChanged: (Souce? value) {
                        setState(() {
                          _souce = value;
                        });
                      },
                    ),
                    const Divider(
                      color: Color(0xFFE8E8E8),
                      indent: 22,
                      endIndent: 11,
                    ),
                    RadioListTile<Souce>(
                      title: const Text('Кисло-сладкий'),
                      controlAffinity: ListTileControlAffinity.trailing,
                      contentPadding: const EdgeInsets.only(left: 22, right: 0),
                      activeColor: const Color(0xFF5DB075),
                      value: Souce.sweet,
                      visualDensity: const VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.minimumDensity),
                      groupValue: _souce,
                      onChanged: (Souce? value) {
                        setState(() {
                          _souce = value;
                        });
                      },
                    ),
                    const Divider(
                      color: Color(0xFFE8E8E8),
                      indent: 22,
                      endIndent: 11,
                    ),
                    RadioListTile<Souce>(
                      title: const Text('Сырный'),
                      activeColor: const Color(0xFF5DB075),
                      controlAffinity: ListTileControlAffinity.trailing,
                      contentPadding: const EdgeInsets.only(left: 22, right: 0),
                      value: Souce.cheese,
                      visualDensity: const VisualDensity(
                          horizontal: VisualDensity.minimumDensity,
                          vertical: VisualDensity.minimumDensity),
                      groupValue: _souce,
                      onChanged: (Souce? value) {
                        setState(() {
                          _souce = value;
                        });
                      },
                    ),
                    const Divider(
                      color: Color(0xFFE8E8E8),
                      indent: 22,
                      endIndent: 11,
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Container(
                      width: mediaQuery.size.width,
                      height: 56,
                      child: SwitchListTile(
                        tileColor: const Color(0xFFF0F0F0),
                        activeColor: const Color(0xFF0E4DA4),
                        contentPadding:
                            const EdgeInsets.only(left: 6, right: 6),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        title: Text(
                          'Дополнительный сыр',
                          style: GoogleFonts.inter(
                            color: const Color(0xFF263238),
                            fontSize: 16,
                            height: 1.5,
                            letterSpacing: 0.01,
                          ),
                        ),
                        value: _addCheese,
                        onChanged: (bool value) {
                          setState(() {
                            _addCheese = value;
                          });
                        },
                        secondary: const Image(image: AssetImage(Ico.cheese)),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 300,
                      child: Text(
                        'Стоимость:',
                        textAlign: TextAlign.left,
                        style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontSize: 18,
                            height: 1.16,
                            letterSpacing: -0.015),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 300,
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
                      height: 33,
                    ),
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
                          'Заказать',
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
            ],
          ),
        ),
      ),
    );
  }
}
