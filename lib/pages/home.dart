import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        flexibleSpace: const SafeArea(
          child: Icon(
            Icons.photo_camera,
            size: 75.0,
            color: Colors.white70,
          ),
        ),
        bottom: PreferredSize(
          child: Container(
            color: Colors.lightGreen.shade100,
            height: 75.0,
            width: double.infinity,
            child: const Center(child: Text('Bottom')),
          ),
          preferredSize: const Size.fromHeight(75.0),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                ContainerWithBoxDecorationWidget(),
                ColumnWidget(),
                Divider(),
                RowWidget(),
                Divider(),
                ColumnAndRowNestingWidget(),
              ],
            ),
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.play_arrow),
      //   backgroundColor: Colors.lightGreen.shade100,
      // ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.play_arrow),
        backgroundColor: Colors.lightGreen.shade100,
        label: const Text('Play'),
      ),
    );
  }
}

class ColumnAndRowNestingWidget extends StatelessWidget {
  const ColumnAndRowNestingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        const Text('Columns and Rown Nesting 1'),
        const Text('Columns and Rown Nesting 2'),
        const Text('Columns and Rown Nesting 3'),
        const Padding(padding: EdgeInsets.all(16.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text('Row Nesting 1'),
            Text('Row Nesting 2'),
            Text('Row Nesting 3'),
          ],
        ),
      ],
    );
  }
}

class RowWidget extends StatelessWidget {
  const RowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: const [
        Text('Row 1'),
        SizedBox(width: 32.0),
        Text('Row 2'),
        SizedBox(width: 32.0),
        Text('Row 3'),
      ],
    );
  }
}

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: const [
        Text('Column 1'),
        Divider(),
        Text('Column 2'),
        Divider(),
        Text('Column 3'),
      ],
    );
  }
}

class ContainerWithBoxDecorationWidget extends StatelessWidget {
  const ContainerWithBoxDecorationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(100.0),
          bottomRight: Radius.circular(10.0),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Colors.lightGreen.shade500,
          ],
        ),
        boxShadow: const [
          BoxShadow(
            color: Colors.white,
            blurRadius: 10.0,
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
      child: Center(
        child: RichText(
          text: const TextSpan(
              text: 'Flutter World',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.deepPurple,
                decoration: TextDecoration.underline,
                decorationColor: Colors.deepPurpleAccent,
                decorationStyle: TextDecorationStyle.dotted,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.normal,
              ),
              children: [
                TextSpan(text: ' for'),
                TextSpan(
                  text: ' Mobile',
                  style: TextStyle(
                    color: Colors.deepOrange,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
