import 'package:flutter/material.dart';

class ShadowDemo extends StatefulWidget {
  const ShadowDemo({Key? key}) : super(key: key);

  @override
  _ShadowDemoState createState() => _ShadowDemoState();
}

class _ShadowDemoState extends State<ShadowDemo> {
  final _image = const NetworkImage('https://placebear.com/300/300');

  var _opacity = 1.0;
  var _xOffset = 0.0;
  var _yOffset = 0.0;
  var _blurRadius = 0.0;
  var _spreadRadius = 0.0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF0099EE),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, _opacity),
                      offset: Offset(_xOffset, _yOffset),
                      blurRadius: _blurRadius,
                      spreadRadius: _spreadRadius,
                    )
                  ],
                ),
                child: Image(
                  image: _image,
                  width: 100,
                  height: 100,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 80.0),
                child: Column(
                  children: <Widget>[
                    const Spacer(),
                    Slider(
                      value: _opacity,
                      min: 0.0,
                      max: 1.0,
                      onChanged: (newValue) => {
                        setState(() => {
                              _opacity = newValue,
                              print('_opacity ${newValue}')
                            })
                      },
                    ),
                    Slider(
                      value: _xOffset,
                      min: -100,
                      max: 100,
                      onChanged: (newValue) => {
                        setState(() => {
                              _xOffset = newValue,
                              print('_xOffset ${newValue}')
                            })
                      },
                    ),
                    Slider(
                      value: _yOffset,
                      min: -100,
                      max: 100,
                      onChanged: (newValue) => {
                        setState(() => {
                              _yOffset = newValue,
                              print('_yOffset ${newValue}')
                            })
                      },
                    ),
                    Slider(
                      value: _blurRadius,
                      min: 0,
                      max: 100,
                      onChanged: (newValue) => {
                        setState(() => {
                              _blurRadius = newValue,
                              print('_blurRadius ${newValue}')
                            })
                      },
                    ),
                    Slider(
                      value: _spreadRadius,
                      min: 0,
                      max: 100,
                      onChanged: (newValue) => {
                        setState(() => {
                              _spreadRadius = newValue,
                              print('_spreadRadius ${newValue}')
                            })
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
