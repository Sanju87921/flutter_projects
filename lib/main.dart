import 'package:flutter/material.dart';

import 'package:flutter_app/currency_app.dart';


void main() {
  runApp(const flutter_app());
}

class flutter_app extends StatelessWidget {
  const flutter_app({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyApp(        
      ),
    );
  }
}
