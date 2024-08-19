import 'package:flutter/material.dart';

class PlacarTimeView extends StatelessWidget {
  final int pontos;
  final VoidCallback adicionar;
  final VoidCallback remover;
  final Color cor;
  final Color corButton;
  final Color corText;

  const PlacarTimeView({
    super.key,
    required this.pontos,
    required this.adicionar,
    required this.remover,
    required this.cor,
    required this.corButton,
    required this.corText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onDoubleTap: () {
            remover();
          },
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width / 2,
            color: cor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    adicionar();
                  },
                  child: Text(
                    '$pontos',
                    style: TextStyle(
                      height: 0.8,
                      fontWeight: FontWeight.bold,
                      fontSize: 360.0,
                      color: Colors.white,
                      backgroundColor: corText,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
