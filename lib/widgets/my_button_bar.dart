import 'package:flutter/material.dart';

class MyButtonBar extends StatelessWidget {
  const MyButtonBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.map)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.airport_shuttle)),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.brush),
            highlightColor: Colors.purple,
          ),
        ],
      ),
    );
  }
}
