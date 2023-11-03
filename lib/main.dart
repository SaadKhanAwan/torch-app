import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:torch_app/homepage.dart';

void main() {
  runApp(const TorchApp());
}

class TorchApp extends StatefulWidget {
  const TorchApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TorchAppState createState() => _TorchAppState();
}

class _TorchAppState extends State<TorchApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      supportedLocales: [Locale('en', '')],
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      home: TorchController(),
    );
  }
}
