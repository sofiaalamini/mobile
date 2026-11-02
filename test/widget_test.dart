import 'package:edit_profile/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('mostra a tela de editar perfil', (tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Editar perfil'), findsOneWidget);
    expect(find.text('Sofia Alamini'), findsOneWidget);
  });
}
