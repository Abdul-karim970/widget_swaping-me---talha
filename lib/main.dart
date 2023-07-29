import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> listOfColorFullWidget = [
    const MyWidget(
      color: Colors.blue,
      // key: UniqueKey(),
      // key: ObjectKey('value'),
    ),
    const MyWidget(
      color: Colors.black,
      // key: ObjectKey('value'),
      // key: UniqueKey(),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Swapping the continers'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: listOfColorFullWidget,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          swapContainerFun();
        },
        tooltip: 'Swap the container',
        child: const Icon(Icons.swap_calls),
      ),
    );
  }

  void swapContainerFun() {
    setState(() {
      listOfColorFullWidget.insert(1, listOfColorFullWidget.removeAt(0));
    });
  }
}

class MyWidget extends StatefulWidget {
  final Color color;
  const MyWidget({super.key, required this.color});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  // late Color color;
  // @override
  // void initState() {
  //   super.initState();
  //   color = widget.color;
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      color: widget.color,
    );
  }
}
