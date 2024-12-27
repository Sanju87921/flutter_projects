import 'package:flutter/material.dart';

class CurrencyApp extends StatefulWidget {
  const CurrencyApp({super.key});
  @override
  State<CurrencyApp> createState() => _CurrencyAppState();
}

class _CurrencyAppState extends State<CurrencyApp> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 85.235;
    });
  }

  @override
  Widget build(BuildContext context) {
    print('rebulit');
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 3.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(20),
        top: Radius.circular(20),
      ),
    );
    return Scaffold(
      backgroundColor: const Color.fromRGBO(3, 93, 196, 0.724),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text("CURRENCY CONVERTER"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'INR ${result.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 249, 238, 238),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: "ENTER THE AMOUNT IN USD",
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: convert,
                style: TextButton.styleFrom(
                  backgroundColor: (Colors.black),
                  foregroundColor: (Colors.white),
                  fixedSize: Size(double.infinity, 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(),
                  ),
                ),
                child: const Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
