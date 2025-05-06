import 'package:flutter/material.dart';

class EjemploCinco extends StatelessWidget {
  const EjemploCinco({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Aspect Ratio',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff168c6e),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 10),
            AspectRatio(
              aspectRatio: 3 / 2,
              child: Image.asset('assets/aspect-ratio.png'),
            ),
            const Text(
              'AspectRation of 3/2',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            AspectRatio(
              aspectRatio: 3 / 1,
              child: Image.asset('assets/aspect-ratio.png'),
            ),
            const Text(
              'AspectRation of 3/1',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            AspectRatio(
              aspectRatio: 5 / 1,
              child: Image.asset('assets/aspect-ratio.png'),
            ),
            const Text(
              'AspectRation of 5/1',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
