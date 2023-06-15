import 'package:flutter/material.dart';
import 'package:flutter_navigation/custom_app_bar/index.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Padding(
              // padding: EdgeInsets.all(12.0),
              padding: EdgeInsets.only(
                  left: 42.0, right: 42.0, top: 12.0, bottom: 34.0),
              child: Text(
                "Click the button below to navigate to the next screen",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          ElevatedButton(
            // onPressed: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => const Product(),
            //     ),
            //   );
            // },

            onPressed: () => Navigator.pushNamed(context, "product_page"),

            style: ElevatedButton.styleFrom(
              // foregroundColor: Colors.white,
              backgroundColor: Colors.purple,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0),
              ),
              fixedSize: const Size(150, 50),
            ),
            child: const Text(
              'Click Me',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
