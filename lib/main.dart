import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:parallax_flutter/screen/home_page.dart';

void main() {
  WidgetsFlutterBinding
      .ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft])
      .then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Parallax JS",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
