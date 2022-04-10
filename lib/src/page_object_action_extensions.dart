import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_page_object/src/base_page_object.dart';

/// Basic action extensions for [BasePageObject]
extension ActionExt on BasePageObject {
  /// Dispatch [WidgetController.tap] action
  Future<void> tap() async {
    await tester.tap(this);
  }

  /// Dispatch [WidgetTester.enterText] action
  Future<void> enterText(String text) async {
    await tester.enterText(this, text);
  }
}
