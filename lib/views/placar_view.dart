import 'package:flutter/material.dart';
import 'package:flutter_app_placar/controllers/placar_controller.dart';
import 'package:flutter_app_placar/views/placar_time_view.dart';

class PlacarView extends StatefulWidget {
  @override
  State<PlacarView> createState() => _PlacarViewState();
}

class _PlacarViewState extends State<PlacarView> {
  final PlacarController controller = PlacarController();

  void updateState() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            PlacarTimeView(
              cor: controller.placarUmCor,
              corButton: controller.placarUmCor,
              corText: controller.placarUmCor,
              pontos: controller.placarUm,
              adicionar: () {
                controller.addPontoPlacarUm();
                updateState();
              },
              remover: () {
                controller.tirarPontoPlacarUm();
                updateState();
              },
            ),
            PlacarTimeView(
              cor: controller.placarDoisCor,
              corButton: controller.placarDoisCor,
              corText: controller.placarDoisCor,
              pontos: controller.placarDois,
              adicionar: () {
                controller.addPontoPlacarDois();
                updateState();
              },
              remover: () {
                controller.tirarPontoPlacarDois();
                updateState();
              },
            ),
          ],
        ),
      ),
    );
  }
}
