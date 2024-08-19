import 'package:flutter/material.dart';
import 'package:flutter_app_placar/controllers/placar_controller.dart';
import 'package:flutter_app_placar/views/placar_time_view.dart';
import 'package:provider/provider.dart';

class PlacarView extends StatefulWidget {
  @override
  State<PlacarView> createState() => _PlacarViewState();
}

class _PlacarViewState extends State<PlacarView> {

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<PlacarController>(context);

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
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
                  },
                  remover: () {
                    controller.tirarPontoPlacarUm();
                  },
                ),
                PlacarTimeView(
                  cor: controller.placarDoisCor,
                  corButton: controller.placarDoisCor,
                  corText: controller.placarDoisCor,
                  pontos: controller.placarDois,
                  adicionar: () {
                    controller.addPontoPlacarDois();
                  },
                  remover: () {
                    controller.tirarPontoPlacarDois();
                  },
                ),
              ],
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.width / 5,
            right: MediaQuery.of(context).size.height,
            child: FloatingActionButton(
              backgroundColor: Colors.white38,
              foregroundColor: Colors.white,
              onPressed: () {
                showConfirmationDialog(context, controller);
              },
              child: Icon(Icons.replay),
            ),
          ),
          Positioned(
            left: -19,
            top: -1,
            child: Padding(
              padding: EdgeInsets.only(bottom: 375, left: 18),
              child: Container(
                width: MediaQuery.of(context).size.height + 24,
                child: LinearProgressIndicator(
                  minHeight: 40.0,
                  value: controller.lifeUm,
                  backgroundColor: Color.fromARGB(255, 255, 0, 0),
                  valueColor: AlwaysStoppedAnimation<Color>(
                      const Color.fromARGB(255, 70, 247, 0)),
                ),
              ),
            ),
          ),
          Positioned(
            right: -17,
            top: -1,
            child: Padding(
              padding: EdgeInsets.only(bottom: 375, right: 18),
              child: Container(
                width: MediaQuery.of(context).size.height + 24,
                child: Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(3.14159), //rotaiona em 180 graus
                  child: LinearProgressIndicator(
                    minHeight: 40.0,
                    value: controller.lifeDois,
                    backgroundColor: const Color.fromARGB(255, 255, 0, 0),
                    valueColor: AlwaysStoppedAnimation<Color>(
                        const Color.fromARGB(255, 70, 247, 0)),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void showConfirmationDialog(
      BuildContext context, PlacarController controller) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Resetar Placar?'),
          content: Text('Você tem certeza que deseja realizar esta ação?'),
          actions: <Widget>[
            TextButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.red.shade100)),
              onPressed: () {
                Navigator.of(context).pop(); // Fechar o modal
              },
              child: Text('Não'),
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(Colors.green.shade100)),
              onPressed: () {
                Navigator.of(context).pop(); // Fechar o modal
                controller.resetPlacar();
              },
              child: Text('Sim'),
            ),
          ],
        );
      },
    );
  }
}
