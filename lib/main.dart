// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

cleavoid main() => runApp(SimpleLabelAndButton());

class SimpleLabelAndButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Simple Master Card Checkout Flow"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Label
              Text(
                "Master Card Checkout",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20), // Space between label and button
              // Button
              ElevatedButton(
                onPressed: () {
                  print("Button clicked!");
                },
                child: Text("Click Me"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class WebViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Local HTML")),
      body: WebView(
        initialUrl: 'assets/index.html', // Load local HTML file
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
