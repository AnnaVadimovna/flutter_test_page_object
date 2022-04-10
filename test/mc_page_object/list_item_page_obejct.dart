import 'package:flutter/widgets.dart';
import 'package:flutter_test/src/finders.dart';
import 'package:flutter_test/src/widget_tester.dart';
import 'package:flutter_test_page_object/src/base_page_object.dart';
import 'package:flutter_test_page_object/src/page_element.dart';
import 'package:flutter_test_page_object/src/page_object_find_extensions.dart';

class ListItemPageObejct extends BasePageObject {
  ListItemPageObejct(
    WidgetTester tester,
    Finder finder,
  ) : super(tester, finder);

  factory ListItemPageObejct.fromElement(PageElement element) =>
      ListItemPageObejct(element.tester, element.finder);

  PageElement get textField => elementByType(Text);
}
