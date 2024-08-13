import 'package:flutter/material.dart';

class PlacarController {
  int placarUm = 0;
  int placarDois = 0;
  Color placarUmCor = Colors.black;
  Color placarDoisCor = Colors.orange.shade900;
 
  void addPontoPlacarUm() {
    placarUm++;
  }

  void tirarPontoPlacarUm() {
    placarUm--;
  }

  void addPontoPlacarDois() {
    placarDois++;
  }

  void tirarPontoPlacarDois() {
    placarDois--;
  }
}
