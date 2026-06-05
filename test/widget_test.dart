import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:image_viewer_app/main.dart';

void main() {
  testWidgets('shows the gallery screen', (WidgetTester tester) async {
    await tester.pumpWidget(const ImageViewerApp());

    expect(find.text('Gallery'), findsOneWidget);
    expect(find.byIcon(Icons.slideshow_rounded), findsOneWidget);
    expect(find.byType(GridView), findsOneWidget);
  });

  testWidgets('opens the swipe viewer from the app bar', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const ImageViewerApp());

    await tester.tap(find.byIcon(Icons.slideshow_rounded));
    await tester.pumpAndSettle();

    expect(find.text('Image 1'), findsOneWidget);
    expect(find.text('1 / 5'), findsOneWidget);
    expect(find.byIcon(Icons.chevron_left_rounded), findsOneWidget);
    expect(find.byIcon(Icons.chevron_right_rounded), findsOneWidget);
  });
}
