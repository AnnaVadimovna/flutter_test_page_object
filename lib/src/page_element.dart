import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

import 'base_page_object.dart';

/// {@template page_element}
/// Basic page object for simple widgets like [Text], [Icon] etc.
/// {@endtemplate}
class PageElement extends BasePageObject {
  /// {@macro page_element}
  PageElement(WidgetTester tester, Finder finder) : super(tester, finder);
}
