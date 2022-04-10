import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_page_object/src/base_page_object.dart';
import 'package:flutter_test_page_object/src/page_element.dart';

/// Basic find extensions for [BasePageObject]
/// Used in group page objects for retreivind nested widgets
extension FindExt on BasePageObject {
  /// [CommonFinders.descendant]
  PageElement elementByKey(Key key) => element(
        find.descendant(of: this, matching: find.byKey(key)),
      );

  /// [CommonFinders.descendant]
  PageElement elementByType(Type type) => element(
        find.descendant(of: this, matching: find.byType(type)),
      );

  /// Construct [PageElement] for given finder
  ///
  /// @param finder
  PageElement element(Finder finder) => PageElement(
        tester,
        finder,
      );
}

/// Find extensions for list with additional index param
/// Used in group page objects for retreivind nested widgets
extension ListFinderExt on BasePageObject {
  /// Find element by type and position in group
  PageElement listElementByType(Type type, int index) => element(
        find.descendant(of: this, matching: find.byType(type).at(index)),
      );

  /// Find element by key and position in group
  PageElement listElementByKey(Key key, int index) => element(
        find.descendant(of: this, matching: find.byKey(key).at(index)),
      );
}
