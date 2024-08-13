import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app_placar/views/placar_view.dart';

void main() {
  // Garantir que o Flutter esteja inicializado antes de qualquer outra coisa
  WidgetsFlutterBinding.ensureInitialized();

  //orientação horizontal
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]);

  // Ocultar a barra de status e a barra de navegação
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);

  //ir no manifest.xml
  //android:screenOrientation ao elemento <activity>
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: PlacarView(),
    );
  }
}
