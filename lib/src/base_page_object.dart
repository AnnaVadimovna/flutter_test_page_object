import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

/// {@template base_page_object}
/// [BasePageObject] delegates [Finder] functionality
/// {@endtemplate}
abstract class BasePageObject extends Finder {
  /// {@macro base_page_object}
  BasePageObject(this.tester, this.finder);

  /// Link to tester for easier use of extension
  final WidgetTester tester;

  /// Link to object's finder for creaty copy of object
  @protected
  final Finder finder;

  @override
  Iterable<Element> apply(Iterable<Element> candidates) =>
      finder.apply(candidates);

  @override
  String get description => finder.description;

  @override
  Iterable<Element> evaluate() => finder.evaluate();

  @override
  bool precache() => finder.precache();
}
