import 'package:flutter/material.dart';

class ButtonsRowsWidget extends StatelessWidget {
  const ButtonsRowsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(onPressed: () {}, child: const Text('Flag')),
            TextButton(
              onPressed: () {},
              child: const Icon(Icons.flag, color: Colors.white),
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightGreen,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MaterialButton(
              onPressed: () {},
              child: const Text('Save'),
              color: Colors.grey.shade300,
            ),
            MaterialButton(
              onPressed: () {},
              child: const Icon(Icons.save),
              color: Colors.lightGreen,
            ),
          ],
        ),
        const SizedBox(height: 16.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.flight),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.flight, color: Colors.lightGreen),
              color: Colors.white,
              tooltip: 'Flight',
              iconSize: 42.0,
            ),
          ],
        ),
      ],
    );
  }
}
