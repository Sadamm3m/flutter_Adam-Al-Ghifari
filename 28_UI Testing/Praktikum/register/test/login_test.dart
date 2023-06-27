import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:register/pages/login.dart';

void main() {
  testWidgets('Judul halaman Login', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Login(),
    ));
    expect(find.text('Login'), findsOneWidget);
  });
}
