import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_page_object/src/base_page_object.dart';
import 'package:flutter_test_page_object/src/page_element.dart';
import 'package:flutter_test_page_object/src/page_object_find_extensions.dart';

import '../mc_presentation/mc_list_view.dart';
import 'empty_list_page_obejct.dart';
import 'list_item_page_obejct.dart';

class ListPageObject extends BasePageObject {
  ListPageObject(
    WidgetTester tester,
    Finder finder,
  ) : super(tester, finder);

  factory ListPageObject.descendantOf(WidgetTester tester,
          {required Finder parent}) =>
      ListPageObject(
          tester, find.descendant(of: parent, matching: find.byType(Text)));

  PageElement get list => elementByKey(McListView.listKey);
  ListItemPageObejct listItem(int position) => ListItemPageObejct.fromElement(
      list.listElementByKey(const Key('value'), position));
  EmptyListPageObject get empty => EmptyListPageObject.descendantOf(
        tester,
        parent: finder,
      );
}
