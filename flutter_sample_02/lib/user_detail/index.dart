import 'package:flutter/material.dart';

class UserDetail extends StatelessWidget {
  const UserDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;

    return Scaffold(
        appBar: AppBar(
          title: Text(arguments['title']),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  Center(child: Text(arguments['title'])),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.blue),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () => {Navigator.of(context).pop()},
                    child: const Text('Go back'),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
