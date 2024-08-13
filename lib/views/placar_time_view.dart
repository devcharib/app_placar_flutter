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
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width / 2,
          color: cor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  adicionar();
                },
                child: Container(
                  width: 100.0,
                  height: 50.0,
                  color: corButton,
                ),
              ),
              Text(
                '$pontos',
                style: TextStyle(
                  height: 0.8,
                  fontWeight: FontWeight.bold,
                  fontSize: 350.0,
                  color: Colors.white,
                  backgroundColor: corText,
                ),
                textAlign: TextAlign.center,
              ),
              InkWell(
                onTap: () {
                  remover();
                },
                child: Container(
                  width: 100.0,
                  height: 50.0,
                  color: corButton,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
