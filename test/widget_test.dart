import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:jsonplacehoder/main.dart';

void main() {
  testWidgets('App renders tabs smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('JSONPlaceholder API'), findsOneWidget);
    expect(find.byType(TabBar), findsOneWidget);
    expect(find.text('Posts (100)'), findsOneWidget);
    expect(find.text('Comments (500)'), findsOneWidget);
    expect(find.text('Albums (100)'), findsOneWidget);
    expect(find.text('Photos (5000)'), findsOneWidget);
    expect(find.text('Todos (200)'), findsOneWidget);
    expect(find.text('Users (10)'), findsOneWidget);
  });
}
