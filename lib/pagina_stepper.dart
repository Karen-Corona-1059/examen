import 'package:flutter/material.dart';

class EjemploDos extends StatefulWidget {
  const EjemploDos({Key? key}) : super(key: key);

  @override
  State<EjemploDos> createState() => _EjemploDosState();
}

class _EjemploDosState extends State<EjemploDos> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stepper widget',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff55cf79),
      ),
      body: Center(
        child: Stepper(
          steps: const [
            Step(
              title: Text('Step 1'),
              content: Text('Information for step 1'),
            ),
            Step(
              title: Text('Step 2'),
              content: Text('Information for step 2'),
            ),
            Step(
              title: Text('Step 3'),
              content: Text('Information for step 3'),
            ),
            Step(
              title: Text('Step 4'),
              content: Text('Information for step 4'),
            ),
          ],
          onStepTapped: (int newIndex) {
            setState(() {
              _currentStep = newIndex;
            });
          },
          currentStep: _currentStep,
          onStepContinue: () {
            if (_currentStep != 3) {
              setState(() {
                _currentStep += 1;
              });
            }
          },
          onStepCancel: () {
            if (_currentStep != 0) {
              setState(() {
                _currentStep = 0;
              });
            }
          },
        ),
      ),
    );
  }
}
