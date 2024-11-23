import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // For loading HTML file

class WebViewButtonExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("WebView Button Example")),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              print(
                  "Button clicked! Displaying this message instead of navigating.");
            },
            child: Text("Open Local HTML in WebView"),
          ),
        ),
      ),
    );
  }
}
