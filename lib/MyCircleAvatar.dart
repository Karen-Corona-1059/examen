import 'package:flutter/material.dart';

class MyCircleAvatar extends StatelessWidget {
  const MyCircleAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        title: const Text(
          'Cricle Avatar',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff83308b),
      ),
      body: Stack(
        // clipBehavior helps to display profile pic like that
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Image.asset('assets/brick_back.jpeg'),
          const Positioned(
            top: 100,
            child: CircleAvatar(
              radius: 70,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(
                'assets/images/profile_pic/profile_pic.jpeg',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
