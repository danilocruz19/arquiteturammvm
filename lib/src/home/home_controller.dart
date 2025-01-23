import 'package:flutter/material.dart';
import 'package:mvvc_arquitetura/src/home/person_model.dart';

class HomeController extends ChangeNotifier {
  double _altura = 0.0;
  double _peso = 0.0;

  void setAltura(String value) => _altura = double.tryParse(value) ?? 0;
  void setPeso(String value) => _peso = double.tryParse(value) ?? 0;

  String result = '';

  void calculateImc() {
    final imcValue = PersonModel(altura: _altura, peso: _peso).getImc();
    final imcText = imcValue.toStringAsFixed(1);
    if (imcValue < 18) {
      result = 'O imc é $imcText, ce ta muito magro';
    } else if (imcValue > 18 && imcValue < 24) {
      result = 'O imc é $imcText. niceee';
    } else {
      result = 'O imc é $imcText. Tá obeso';
    }
    ;
  }

  notifyListeners();
}
