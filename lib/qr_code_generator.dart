import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'pdf_generator.dart'; // PDF oluşturma işlevselliğini içeren dosyayı import edin

class QRCodeGeneratorPage extends StatefulWidget {
  @override
  _QRCodeGeneratorPageState createState() => _QRCodeGeneratorPageState();
}

class _QRCodeGeneratorPageState extends State<QRCodeGeneratorPage> {
  final TextEditingController _controller = TextEditingController();

  Future<void> _generateAndSavePdf(String qrCodeData) async {
    await createPdfWithQrCode(qrCodeData);
    final directory = await getApplicationDocumentsDirectory();
    final path = '${directory.path}/qr_code.pdf';
    print('PDF saved at $path');
    // Burada PDF'yi kullanıcıya sunabilirsiniz, örneğin bir paylaşım veya indirme işlemi yapabilirsiniz
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('QR Kod Oluştur'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'QR Kod Verisi',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final qrCodeData = _controller.text;
                _generateAndSavePdf(qrCodeData);
              },
              child: Text('PDF Olarak Kaydet'),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Center(
                child: QrImageView(
                  data: _controller.text,
                  version: QrVersions.auto,
                  size: 200.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
