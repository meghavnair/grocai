import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class BarcodeScannerScreen extends StatefulWidget {
  @override
  _BarcodeScannerScreenState createState() => _BarcodeScannerScreenState();
}

class _BarcodeScannerScreenState extends State<BarcodeScannerScreen> {
  String? barcode;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barcode Scanner'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Expanded(
            child: MobileScanner(
              onDetect: (barcode, args) {
                setState(() {
                  this.barcode = barcode.rawValue;
                });

                // Return the scanned barcode to the previous page
                Navigator.pop(context, barcode.rawValue);
              },
            ),
          ),
          if (barcode != null)
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Scanned Barcode: $barcode',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
        ],
      ),
    );
  }
}
