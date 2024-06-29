import 'package:flutter_test/flutter_test.dart';
import 'package:modifier/modifier.dart';
import 'package:modifier_test/modifier_test.dart';

void main() {
  testWidgets('basic function', (t) async {
    await builder((context) => 'it works'
        .asText
        .center
        .ensureDirection(context)
        .ensureMedia(context)).pump(t);
    expect(find.text('it works'), findsOneWidget);
  });
}
