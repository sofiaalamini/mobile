import 'package:edit_profile/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('vai da tela inicial para o login', (tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Switch accounts'), findsOneWidget);

    await tester.tap(find.text('Log in'));
    await tester.pumpAndSettle();

    expect(find.text('Forgot password?'), findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(2));
  });
}
