import 'package:flutter/material.dart';

class EjemploTres extends StatefulWidget {
  const EjemploTres({Key? key}) : super(key: key);

  @override
  State<EjemploTres> createState() => _EjemploTresState();
}

class _EjemploTresState extends State<EjemploTres> {
  bool _isFade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ejemplo 30',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff8c1616),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedCrossFade(
              firstChild: Image.asset(
                'assets/dog.jpeg',
                width: 350,
                height: 350,
                fit: BoxFit.cover,
              ),
              secondChild: Image.asset(
                'assets/lion.jpeg',
                width: 350,
                height: 350,
                fit: BoxFit.cover,
              ),
              crossFadeState: _isFade
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(seconds: 1),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isFade = !_isFade;
                });
              },
              child: const Text('Cambiar Imagen'),
            ),
          ],
        ),
      ),
    );
  }
}
