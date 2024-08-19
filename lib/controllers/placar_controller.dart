import 'package:flutter/material.dart';

class PlacarController extends ChangeNotifier {
  int _placarUm = 0;
  int _placarDois = 0;
  double _lifeUm = 1.0;
  double _lifeDois = 1.0;
  Color placarUmCor = Colors.black;
  Color placarDoisCor = Colors.orange.shade900;

  double get lifeUm => _lifeUm;
  double get lifeDois => _lifeDois;
  int get placarUm => _placarUm;
  int get placarDois => _placarDois;

  void healthPlacarUm() {
    _lifeUm -= 0.083;
    notifyListeners();
  }

  void addHealthPlacarUm() {
    _lifeUm += 0.083;
    notifyListeners();
  }

  void healthPlacarDois() {
    _lifeDois -= 0.083;
    notifyListeners();
  }

  void addHealthPlacarDois() {
    _lifeDois += 0.083;
    notifyListeners();
  }

  void resetPlacar() {
    _placarUm = 0;
    _placarDois = 0;
    _lifeUm = 1.0;
    _lifeDois = 1.0;
    notifyListeners();
  }

  void addPontoPlacarUm() {
    _placarUm++;
    healthPlacarDois();
    notifyListeners();
  }

  void tirarPontoPlacarUm() {
    _placarUm--;
    addHealthPlacarDois();
    notifyListeners();
  }

  void addPontoPlacarDois() {
    _placarDois++;
    healthPlacarUm();
    notifyListeners();
  }

  void tirarPontoPlacarDois() {
    _placarDois--;
    addHealthPlacarUm();
    notifyListeners();
  }
}
