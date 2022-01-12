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

  @override
  Widget build(BuildContext context) {
    const outlineInputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(color: Colors.transparent));
    final mediaQuery = MediaQuery.of(context);
    return MaterialApp(
      home: Scaffold(
          body: Container(
        width: double.infinity,
        height: double.infinity,
        //color: Colors.amber,
        child: SingleChildScrollView(
          child: Column(children: <Widget>[
            const Align(
              alignment: Alignment.topRight,
              child: Image(
                image: AssetImage(Disign.pizza),
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: FittedBox(
                child: Text(
                  'Калькулятор пиццы',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 30,
                    height: 1.2,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 64),
              child: FittedBox(
                child: Text(
                  'Выберите параметры:',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 16,
                    height: 1.18,
                  ),
                ),
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
              onToggle: (index) {},
            ),
            const SizedBox(
              height: 19,
            ),
          ]),
        ),
      )),
    );
  }
}
