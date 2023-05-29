import 'package:flutter/material.dart';

main() {
  runApp(const MyFirstApp());
}

String heading = "WELCOME!";

class MyFirstApp extends StatelessWidget {
  const MyFirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My first app',
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        home: const MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: const Text('My first app'),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    heading,
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () => print('button clicked'),
                        child: const Text('Click me!'),
                      ),
                      IconButton(
                        onPressed: () => print('icon button clicked'),
                        icon: const Icon(Icons.mic),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () => print('elevated button clicked'),
                    child: const Text('Click me!'),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                  border: Border.all(color: Colors.black, width: 2.0)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5),
                      // color: Colors.yellow,
                      width: 130,
                      height: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.yellow,
                          border: Border.all(color: Colors.black, width: 2.0)),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.yellow,
                        border: Border.all(color: Colors.black, width: 2.0),
                      ),
                      width: 130,
                      height: 200,
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.yellow,
                        border: Border.all(color: Colors.black, width: 2.0),
                      ),
                      width: 130,
                      height: 200,
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.orange,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    heading,
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () => print('button clicked'),
                        child: const Text('Click me!'),
                      ),
                      IconButton(
                        onPressed: () => print('icon button clicked'),
                        icon: const Icon(Icons.mic),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () => print('elevated button clicked'),
                    child: const Text('Click me!'),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
