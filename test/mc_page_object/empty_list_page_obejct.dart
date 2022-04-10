import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_page_object/src/base_page_object.dart';
import 'package:flutter_test_page_object/src/page_element.dart';
import 'package:flutter_test_page_object/src/page_object_find_extensions.dart';

import '../mc_presentation/mc_list_view.dart';

class EmptyListPageObject extends BasePageObject {
  EmptyListPageObject(
    WidgetTester tester,
    Finder finder,
  ) : super(tester, finder);

  factory EmptyListPageObject.descendantOf(
    WidgetTester tester, {
    required Finder parent,
  }) =>
      EmptyListPageObject(
        tester,
        find.descendant(
          of: parent,
          matching: find.byKey(McListView.emptyKey),
        ),
      );

  PageElement get refreshButton => elementByType(ElevatedButton);
}
