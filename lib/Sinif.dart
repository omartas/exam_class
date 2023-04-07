
import 'dart:math';
import 'dart:typed_data';
import 'package:syncfusion_flutter_pdf/pdf.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:universal_html/html.dart'show AnchorElement;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:webodevdeneme1/main.dart';
import 'package:syncfusion_flutter_xlsio/xlsio.dart';

class Sinif extends StatefulWidget {
  final int kapasite;

   final List<String> numaraListesi;
   final List<String> isimListesi;
   List<String> sinavBilgiListesi;
   List<String> sinifListesi;

   Sinif({Key? key, required this.kapasite, required this.numaraListesi,required this.sinifListesi, required this.isimListesi, required this.sinavBilgiListesi}) : super(key: key);

  @override
  State<Sinif> createState() => _SinifState();
}

class _SinifState extends State<Sinif> {

  final TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      final String text = _controller.text.toLowerCase();
      _controller.value = _controller.value.copyWith(
        text: text,
        selection:
        TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty,
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    isimListesi.remove(isimListesi.first);
    numaraListesi.remove(numaraListesi.first);
    return Scaffold(
      body: Center(
        child: ListView(
          children: [

            TextButton(onPressed: createExcel, child: Text("Sınav Listelerini Oluştur.")),
            TextField(controller:_controller ,decoration: const InputDecoration(border: OutlineInputBorder()),),
            TextButton(onPressed: _createPdf, child: Text("Öğrenci Kartı Oluştur")),
          ],
        ),
      ),
    );

    //sınıfları karıştır
  }
  Future<void> _createPdf()async {
     PdfDocument document = PdfDocument();
// Add a PDF page and draw text.
    final page = document.pages.add();
    final PdfGrid grid = PdfGrid();
    grid.columns.add(count: 3);
// Add a grid header row.
    final PdfGridRow headerRow = grid.headers.add(1)[0];
    headerRow.cells[0].value = _controller.text;
    headerRow.cells[1].value = "Omer Faruk Tas";
    headerRow.cells[2].value = sinavBilgiListesi[0].toString();
    // Add rows to the grid.
    PdfGridRow row = grid.rows.add();
    row.cells[0].value = sinavBilgiListesi[2].toString();
    row.cells[1].value = sinavBilgiListesi[3].toString();
    row.cells[2].value = sinavBilgiListesi[4].toString();
    grid.style.cellPadding = PdfPaddings(left: 5, top: 5);
    grid.draw(
        page: page,
        bounds: Rect.fromLTWH(
            60, 40, page.getClientSize().width, page.getClientSize().height));

    page.graphics.drawString(
        'Kirklareli Universitesi', PdfStandardFont(PdfFontFamily.helvetica, 12),
        brush: PdfSolidBrush(PdfColor(0, 0, 0)),
        bounds: const Rect.fromLTWH(200, 0, 150, 20));
    page.graphics.drawImage(PdfBitmap(await _readImageData("klu.jpg")),
    Rect.fromLTWH(0, 35,50, 50)
    );
// Save the document.
    //  File('HelloWorld.pdf').writeAsBytes(await document.save());
// Dispose the document.
    List <int> bytes = await document.save();
    document.dispose();
    saveAndLaunch(bytes, "Output.pdf");
  }
  Future<void> saveAndLaunch(List <int> bytes,String filename)async {
    AnchorElement(
        href: 'data:application/octet-stream;charset=utf-16le;base64,${base64
            .encode(bytes)}')
      ..setAttribute("download", filename)
      ..click();
  }
  Future<Uint8List>_readImageData(String name)async{
    final data =await rootBundle.load("images/$name");
    return data.buffer.asUint8List(data.offsetInBytes,data.lengthInBytes);

  }

  Future<void> createExcel() async {
    String uni = sinavBilgiListesi[0];
    String ders = sinavBilgiListesi[1];
    String tarih = sinavBilgiListesi[2];
    String uye = sinavBilgiListesi[3];
    final int sinifSayisi = this.widget.sinifListesi.length;
    final int kisiSayisi = isimListesi.length;
    final int a = (kisiSayisi / sinifSayisi+1).toInt();
    for (int i = 0; i < sinifSayisi; i++) {
      final Workbook workbook = Workbook();
      final Worksheet sheet = workbook.worksheets[0];
      String sinif = this.widget.sinifListesi[i];


      Style globalStyle = workbook.styles.add("style");
      globalStyle.fontSize = 11;
      globalStyle.bold = true;
      globalStyle.wrapText = true;
      globalStyle.hAlign = HAlignType.center;
      globalStyle.borders.all.lineStyle = LineStyle.dashed;
      sheet
          .getRangeByName('A1')
          .cellStyle = globalStyle;
      sheet.autoFitColumn(2);

      sheet.getRangeByName("A2",).setText("Sıra No");
      sheet.getRangeByName("B2",).setText("Numara");
      sheet.getRangeByName("C2",).setText("Ad Soyad");
      sheet.getRangeByName("D2",).setText("İmza");
      sheet.getRangeByName("A1",).setText(
          "Ders Adı: "+uni + "\nÖğretim Elemanı: " + ders + "\nSınav Tipi: " + tarih + "\nSınav Tari: " + uye + "\nSınıf: " + sinif);
      //sheet.getRangeByName('B').cellStyle.wrapText=true;
      //String abc = "sinif"+sinif;
      //var abcd = int.parse(abc);
      for (int i = 1; i <45; i++) {
        int MAX = isimListesi.length;
        int a = new Random().nextInt(MAX);
        print(isimListesi);
        print(isimListesi.length);
        sheet.getRangeByName("A" + (i + 2).toString()).setText(i.toString());
        sheet.getRangeByName("B" + (i + 2).toString()).setText(numaraListesi[a]);
        numaraListesi.remove(numaraListesi[a]);
        sheet.getRangeByName("C" + (i + 2).toString()).setText(isimListesi[a]);
        isimListesi.remove(isimListesi[a]);
      }

      final List<int> bytes = workbook.saveAsStream();
      workbook.dispose();

      if (kIsWeb) {
        AnchorElement(
            href: 'data:application/octet-stream;charset=utf-16le;base64,${base64
                .encode(bytes)}')
          ..setAttribute("download", "Output.xlsx")
          ..click();
      }
      else {
      }
    }
  }


}
