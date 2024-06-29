import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

extension WrapTester on Widget {
  /// Wrapper of [WidgetTester.pumpWidget],
  /// especially useful in chain style programming with `modifier`.
  Future<void> pump(WidgetTester t) async => t.pumpWidget(this);
}
