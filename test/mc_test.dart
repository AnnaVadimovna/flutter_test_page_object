import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_page_object/src/page_object_action_extensions.dart';
import 'package:flutter_test_page_object/src/page_object_check_extensions.dart';

import 'mc_page_object/list_page_obejct.dart';
import 'mc_presentation/mc_list_view.dart';

void main() async {
  testWidgets('Empty is shown', (WidgetTester tester) async {
    await tester.pumpWidget(McListView());
    final screen = ListPageObject(tester, find.byType(McListView));

    screen.empty.expect(findsOneWidget);
    screen.empty.refreshButton.expect(findsOneWidget);
  });

  testWidgets('State is switched', (WidgetTester tester) async {
    await tester.pumpWidget(McListView());
    final screen = ListPageObject(tester, find.byType(McListView));

    await screen.empty.refreshButton.tap();
    await tester.pump();

    screen.empty.expect(findsNothing);
    screen.list.expect(findsOneWidget);
  });
}
