import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:modifier_test/modifier_test.dart';

void main() {
  testWidgets('basic function', (t) async {
    await Builder(builder: (context) {
      final media = MediaQuery.maybeOf(context) ??
          MediaQueryData.fromView(View.of(context));
      return MediaQuery(
        data: media,
        child: const Directionality(
          textDirection: TextDirection.ltr,
          child: Text('it works'),
        ),
      );
    }).pump(t);
    expect(find.text('it works'), findsOneWidget);
  });
}
