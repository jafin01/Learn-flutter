import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final _textController = TextEditingController();
  late String name;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Text('Flutter Actions'),
        ),
        body: Container(
          color: Colors.orangeAccent[50],
          height: double.infinity,
          padding: const EdgeInsets.all(50),
          child: SafeArea(
            child: Column(
              children: [
                const Expanded(
                    child: Column(
                  children: [
                    Text(
                      "Here is the Entered Text: ",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 32,
                          fontFamily: "Poppins"),
                    ),
                    Text(
                      "Entered text here",
                      style: TextStyle(fontSize: 26, fontFamily: "Poppins"),
                    )
                  ],
                )),
                Expanded(
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextField(
                            controller: _textController,
                            autofocus: false,
                            decoration: const InputDecoration(
                                labelText: 'Enter your name',
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.deepPurple, width: 2.0),
                                ),
                                labelStyle: TextStyle(
                                    color: Colors.deepPurple, fontSize: 14),
                                contentPadding: EdgeInsets.all(12)),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.deepOrange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32.0),
                          ),
                        ),
                        onPressed: () {
                          name = _textController.text;
                        },
                        child: const Text('Submit'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
