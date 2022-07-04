
import 'dart:math';
import 'package:flutter_test/flutter_test.dart';
import 'package:rpg/features/dice_page/view/view_dice_page.dart';




void main() {
  testWidgets('DiceHome Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const ViewHomeDice());
    expect(find.text(diceTest()), findsOneWidget);
    await tester.pump();
    expect(find.text(diceTest()), findsNothing);
    
  });
}
String diceTest() {
    int random(min, max) {
      return min + Random().nextInt(max - min);
    }

    return random(Random(), Random()).toString();
  }