import 'dart:io';
import 'dart:typed_data';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';
import 'package:qr_flutter/qr_flutter.dart'; // QR kod oluşturma için

Future<void> createPdfWithQrCode(String qrCodeData) async {
  final pdf = pw.Document();

  // QR kod görselini oluştur
  final qrValidationResult = QrValidator.validate(
    data: qrCodeData,
    version: QrVersions.auto,
    errorCorrectionLevel: QrErrorCorrectLevel.L,
  );

  if (qrValidationResult.status == QrValidationStatus.valid) {
    final qrCodeImage = await QrPainter(
      data: qrCodeData,
      version: QrVersions.auto,
      gapless: false,
    ).toImageData(200);

    final image = pw.MemoryImage(
      qrCodeImage!.buffer.asUint8List(),
    );

    // PDF'ye QR kodu ekleyin
    pdf.addPage(pw.Page(
      build: (pw.Context context) => pw.Center(
        child: pw.Image(image),
      ),
    ));

    // PDF'yi cihazda kaydet
    final outputFile = File('${(await getTemporaryDirectory()).path}/qr_code.pdf');
    await outputFile.writeAsBytes(await pdf.save());
    print('PDF saved at ${outputFile.path}');
  } else {
    throw 'QR kod doğrulaması başarısız: ${qrValidationResult.status}';
  }
}
