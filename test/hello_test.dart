// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter_test/flutter_test.dart';
import 'package:mastercard/main.dart' as mastercard;

void main() {
  testWidgets('Hello world smoke test', (WidgetTester tester) async {
    mastercard
        .main(); // builds the app and schedules a frame but doesn't trigger one
    await tester.pump(); // triggers a frame

    expect(find.text('Hello, world!'), findsOneWidget);
  });
}
