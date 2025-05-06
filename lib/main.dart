import 'package:flutter/material.dart';
import 'package:corona/pantallainicial.dart';
import 'package:corona/pagina_stepper.dart';
import 'package:corona/pagina_stateful.dart';
import 'package:corona/pagina_crossfade.dart';
import 'package:corona/pagina_checkbox.dart';
import 'package:corona/pagina_aspectratio.dart';
import 'package:corona/pagina_pageroute.dart';
import 'package:corona/first_page.dart';
import 'package:corona/second_page.dart';
import 'MyCircleAvatar.dart';
import 'pagina_MyNullAwareOperators.dart';

void main() => runApp(MiWidget());

class MiWidget extends StatelessWidget {
  const MiWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widgets entre paginas',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaInicial(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/ejemplo1': (context) => const MyStatufulWidget(number: 0),
        '/ejemplo2': (context) => const EjemploDos(),
        '/ejemplo3': (context) => const EjemploTres(),
        '/ejemplo4': (context) => const MyCheckboxListTile(),
        '/ejemplo5': (context) => const EjemploCinco(),
        '/ejemplo6': (context) => const MyPageRouteBuilder(),
        '/ejemplo7': (context) => const MyCircleAvatar(),
        '/ejemplo8': (context) => const MyNullAwareOperators(),
      },
    );
  }
}
