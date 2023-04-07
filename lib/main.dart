import 'dart:typed_data';
import 'package:excel/excel.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:webodevdeneme1/siniflar.dart';
void main() => runApp(MaterialApp
  (
    debugShowCheckedModeBanner:false,
    home: MyApp()));

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}
List<String> numaraListesi = [];
List<String> isimListesi = [];
List<String> sinavBilgiListesi = [];

class _MyAppState extends State<MyApp> {

  var _openResult = "XlSX Dosya Seç";

  Future<void> openFile() async {

    var filePath = r'/storage/emulated/0/update.apk';
    FilePickerResult? pickedFile = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['xlsx',"xls"],
      allowMultiple: false,
    );

    if (pickedFile != null&&pickedFile.files.single.extension=="xlsx") {
      print("oldu");
      var bytes = pickedFile.files.single.bytes;
      var excel = Excel.decodeBytes(bytes!);
      for (var table in excel.tables.keys) {
        print(table); //sheet Name
        print(excel.tables[table]?.maxCols);
        print(excel.tables[table]?.maxRows);
        for (var row in excel.tables[table]!.rows) {
          //DataRow data = DataRow(cells: []);
          var numaralar = row[1]?.value;
          var isimler = row[2]?.value;
          var sinavBilgileri = row[6]?.value;
          numaraListesi.add(numaralar!.toString());
          isimListesi.add(isimler!.toString());


          if(sinavBilgileri!=null){
            sinavBilgiListesi.add(sinavBilgileri.toString());
          }

          print(isimListesi.length);
          print(isimListesi);
          print("***************");
          print(sinavBilgiListesi);

        }
      }
    }else {
      // User canceled the picker
      print("olmadı");
      showDialog(context: context, builder: (BuildContext context){
        return AlertDialog(
          title: Text("Uyarı"),
          content: Text("Lütfen Bir Excel Dosya Türü Seçiniz"),
          actions: [TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("Tamam"))],
        );
      });
    }
    /*
    final _result = await OpenFile.open(filePath);
    print(_result.message);
    print("**********************************");
    setState(() {
      _openResult = "type=${_result.type}  message=${_result.message}";
    });
    */

  }

  @override
  Widget build(BuildContext context) {

    return  Scaffold(

        appBar: AppBar(
          title: const Text('Öğrenci Sınav Sistemi'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Lütfen Öğrenci Dosyası Seçiniz.'),
              TextButton(
                child: Text('Gözat'),
                onPressed: openFile,
              ),
              TextButton(onPressed: (){
                try{
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Siniflar(numaraListesi: numaraListesi, isimListesi: isimListesi, sinavBilgiListesi: sinavBilgiListesi,)) );
                }catch(e){
                  showDialog(context: context, builder: (BuildContext context){
                    return AlertDialog(
                      title: Text("Uyarı"),
                      content: Text(e.toString()),
                      actions: [TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("Tamam"))],
                    );
                  });
                }
              }, child: Text("Sınıfları seç"))
            ],
          ),
        ),
      );

  }
}