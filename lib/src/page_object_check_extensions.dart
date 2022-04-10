import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test/flutter_test.dart' as ft;
import 'package:flutter_test_page_object/src/base_page_object.dart';

/// Basic check extensions for [BasePageObject]
extension CheckExt on BasePageObject {
  /// Extension for [ft.expect]
  void expect(
    Matcher matcher, {
    String? reason,
    dynamic skip,
  }) {
    ft.expect(this, matcher, reason: reason, skip: skip);
  }
}
