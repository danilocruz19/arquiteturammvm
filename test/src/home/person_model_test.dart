import 'package:flutter_test/flutter_test.dart';
import 'package:mvvc_arquitetura/src/home/person_model.dart';

void main() {
  test('Get imc deve retornar 27.7', () {
    final person = PersonModel(altura: 1.84, peso: 70);
    expect(person.getImc().round(), 21);
  });
}
