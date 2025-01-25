import 'package:flutter/material.dart';
import 'barcode_scanner_screen.dart'; // Import the barcode scanner page

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            // Navigate to the Barcode Scanner Page
            final scannedBarcode = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BarcodeScannerScreen()),
            );

            // Handle the scanned barcode result if any
            if (scannedBarcode != null) {
              print('Scanned Barcode: $scannedBarcode');
            }
          },
          child: Text('Scan Barcode'),
        ),
      ),
    );
  }
}

