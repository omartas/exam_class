import 'package:flutter/material.dart';
import 'package:webodevdeneme1/Sinif.dart';
import 'package:webodevdeneme1/main.dart';

class Siniflar extends StatefulWidget {
  List<String> numaraListesi;
  List<String> isimListesi;
  List<String> sinavBilgiListesi;

  Siniflar({Key? key, required this.numaraListesi, required this.isimListesi,required this.sinavBilgiListesi})
      : super(key: key);

  @override
  State<Siniflar> createState() => _SiniflarState();
}

class _SiniflarState extends State<Siniflar> {
   List<String> sinifListesi=[];

  int toplamKapasite =0;
  late bool _value1 = false;
  late bool _value2 = false;
  late bool _value3 = false;
  late bool _value4 = false;
  late bool _value5 = false;
  late bool _value6 = false;
  late bool _value7 = false;
  late bool _value8 = false;
  late bool _value9 = false;
  late bool _value10 = false;
  late bool _value11 = false;
  late bool _value12 = false;
  late bool _value13 = false;
  late bool _value14 = false;
  late bool _value15 = false;
  late bool _value16 = false;
  late bool _value17 = false;
  late bool _value18= false;




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Text("Sınıflar",style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold),),
          Row(
            children: [
              Expanded(
                child: CheckboxListTile(
                  title: Text("Sınıf 101"),
                  subtitle: Text("Kapasite : 38"),
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  value: _value1,
                  onChanged: (bool? value) {
                    setState(() {
                      _value1 = value!;
                      if(value==true){
                        sinifListesi.add("101");

                      }else{
                        sinifListesi.remove("101");
                      }
                      print(sinifListesi);
                      value==true?toplamKapasite+=38:toplamKapasite-=38;
                      print(toplamKapasite);

                    });
                  },
                ),
              ),
              Expanded(
                child: CheckboxListTile(
                  title: Text("Sınıf 102"),
                  subtitle: Text("Kapasite : 40"),
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  //fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _value2,
                  onChanged: (bool? value) {
                    setState(() {
                      _value2 = value!;
                      if(value==true){
                        sinifListesi.add("102");

                      }else{
                        sinifListesi.remove("102");
                      }
                      print(sinifListesi);
                      value==true?toplamKapasite+=40:toplamKapasite-=40;
                      print(toplamKapasite);

                    });
                  },
                ),
              ),
              Expanded(
                child: CheckboxListTile(
                  title: Text("Sınıf 103"),
                  subtitle: Text("Kapasite : 34"),
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  //fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _value3,
                  onChanged: (bool? value) {
                    setState(() {
                      _value3 = value!;
                      if(value==true){
                        sinifListesi.add("103");

                      }else{
                        sinifListesi.remove("103");
                      }
                      print(sinifListesi);
                      value==true?toplamKapasite+=34:toplamKapasite-=34;
                      print(toplamKapasite);
                    });
                  },
                ),
              ),
              Expanded(
                child: CheckboxListTile(
                  title: Text("Sınıf 104"),
                  subtitle: Text("Kapasite : 30"),
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  //fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _value4,
                  onChanged: (bool? value) {
                    setState(() {
                      _value4 = value!;
                      if(value==true){
                        sinifListesi.add("104");

                      }else{
                        sinifListesi.remove("104");
                      }
                      print(sinifListesi);
                      value==true?toplamKapasite+=30:toplamKapasite-=30;
                      print(toplamKapasite);
                    });
                  },
                ),
              ),
              Expanded(
                child: CheckboxListTile(
                  title: Text("Sınıf 105"),
                  subtitle: Text("Kapasite : 40"),
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  //fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _value5,
                  onChanged: (bool? value) {
                    setState(() {
                      _value5 = value!;
                      if(value==true){
                        sinifListesi.add("105");

                      }else{
                        sinifListesi.remove("105");
                      }
                      print(sinifListesi);
                      value==true?toplamKapasite+=40:toplamKapasite-=40;
                      print(toplamKapasite);
                    });
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [

              Expanded(
                child: CheckboxListTile(
                  title: Text("Sınıf 106"),
                  subtitle: Text("Kapasite : 24"),
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  //fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _value6,
                  onChanged: (bool? value) {
                    setState(() {
                      _value6 = value!;
                      if(value==true){
                        sinifListesi.add("106");

                      }else{
                        sinifListesi.remove("106");
                      }
                      print(sinifListesi);
                      value==true?toplamKapasite+=24:toplamKapasite-=24;
                      print(toplamKapasite);
                    });
                  },
                ),
              ),
              Expanded(
                child: CheckboxListTile(
                  title: Text("Sınıf 107"),
                  subtitle: Text("Kapasite : 24"),
                  activeColor: Colors.green,
                  checkColor: Colors.white,

                  value: _value7,
                  onChanged: (bool? value) {
                    setState(() {
                      _value7 = value!;
                      if(value==true){
                        sinifListesi.add("107");

                      }else{
                        sinifListesi.remove("107");
                      }
                      print(sinifListesi);
                      value==true?toplamKapasite+=24:toplamKapasite-=24;
                      print(toplamKapasite);
                    });
                  },
                ),
              ),
              Expanded(
                child: CheckboxListTile(
                  title: Text("Sınıf 108"),
                  subtitle: Text("Kapasite : 30"),
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  //fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _value8,
                  onChanged: (bool? value) {
                    setState(() {
                      _value8 = value!;
                      if(value==true){
                        sinifListesi.add("108");

                      }else{
                        sinifListesi.remove("108");
                      }
                      print(sinifListesi);
                      value==true?toplamKapasite+=30:toplamKapasite-=30;
                      print(toplamKapasite);
                    });
                  },
                ),
              ),
              Expanded(
                child: CheckboxListTile(
                  title: Text("Sınıf 109"),
                  subtitle: Text("Kapasite : 34"),
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  //fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _value9,
                  onChanged: (bool? value) {
                    setState(() {
                      _value9 = value!;
                      if(value==true){
                        sinifListesi.add("109");

                      }else{
                        sinifListesi.remove("109");
                      }
                      print(sinifListesi);
                      value==true?toplamKapasite+=34:toplamKapasite-=34;
                      print(toplamKapasite);
                    });
                  },
                ),
              ),
              Expanded(
                child: CheckboxListTile(
                  title: Text("Sınıf 201"),
                  subtitle: Text("Kapasite : 38"),
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  //fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _value10,
                  onChanged: (bool? value) {
                    setState(() {
                      _value10 = value!;
                      if(value==true){
                        sinifListesi.add("201");

                      }else{
                        sinifListesi.remove("201");
                      }
                      print(sinifListesi);
                      value==true?toplamKapasite+=38:toplamKapasite-=38;
                      print(toplamKapasite);
                    });
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CheckboxListTile(
                  title: Text("Sınıf 202"),
                  subtitle: Text("Kapasite : 40"),
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  //fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _value11,
                  onChanged: (bool? value) {
                    setState(() {
                      _value11 = value!;
                      if(value==true){
                        sinifListesi.add("202");

                      }else{
                        sinifListesi.remove("202");
                      }
                      print(sinifListesi);
                      value==true?toplamKapasite+=40:toplamKapasite-=40;
                      print(toplamKapasite);
                    });
                  },
                ),
              ),
              Expanded(
                child: CheckboxListTile(
                  title: Text("Sınıf 203"),
                  subtitle: Text("Kapasite : 34"),
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  //fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _value12,
                  onChanged: (bool? value) {
                    setState(() {
                      _value12 = value!;
                      if(value==true){
                        sinifListesi.add("203");

                      }else{
                        sinifListesi.remove("203");
                      }
                      print(sinifListesi);
                      value==true?toplamKapasite+=34:toplamKapasite-=34;
                      print(toplamKapasite);
                    });
                  },
                ),
              ),
              Expanded(
                child: CheckboxListTile(
                  title: Text("Sınıf 204"),
                  subtitle: Text("Kapasite : 20"),
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  //fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _value13,
                  onChanged: (bool? value) {
                    setState(() {
                      _value13 = value!;
                      if(value==true){
                        sinifListesi.add("204");

                      }else{
                        sinifListesi.remove("204");
                      }
                      print(sinifListesi);
                      value==true?toplamKapasite+=20:toplamKapasite-=20;
                      print(toplamKapasite);
                    });
                  },
                ),
              ),
              Expanded(
                child: CheckboxListTile(
                  title: Text("Sınıf 205"),
                  subtitle: Text("Kapasite : 20"),
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  //fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _value14,
                  onChanged: (bool? value) {
                    setState(() {
                      _value14 = value!;
                      if(value==true){
                        sinifListesi.add("205");

                      }else{
                        sinifListesi.remove("205");
                      }
                      print(sinifListesi);
                      value==true?toplamKapasite+=20:toplamKapasite-=20;
                      print(toplamKapasite);
                    });
                  },
                ),
              ),
              Expanded(
                child: CheckboxListTile(
                  title: Text("Sınıf 206"),
                  subtitle: Text("Kapasite : 50"),
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  //fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _value15,
                  onChanged: (bool? value) {
                    setState(() {
                      _value15 = value!;
                      if(value==true){
                        sinifListesi.add("206");

                      }else{
                        sinifListesi.remove("206");
                      }
                      print(sinifListesi);
                      value==true?toplamKapasite+=50:toplamKapasite-=50;
                      print(toplamKapasite);
                    });
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: CheckboxListTile(
                  title: Text("Sınıf 207"),
                  subtitle: Text("Kapasite : 44"),
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  //fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _value16,
                  onChanged: (bool? value) {
                    setState(() {
                      _value16 = value!;
                      if(value==true){
                        sinifListesi.add("207");

                      }else{
                        sinifListesi.remove("207");
                      }
                      print(sinifListesi);
                      value==true?toplamKapasite+=44:toplamKapasite-=44;
                      print(toplamKapasite);
                    });
                  },
                ),
              ),
              Expanded(

                child: CheckboxListTile(
                  title: Text("Sınıf 208"),
                  subtitle: Text("Kapasite : 22"),
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  //fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _value17,
                  onChanged: (bool? value) {
                    setState(() {
                      _value17 = value!;
                      if(value==true){
                        sinifListesi.add("208");

                      }else{
                        sinifListesi.remove("208");
                      }
                      print(sinifListesi);
                      value==true?toplamKapasite+=22:toplamKapasite-=22;
                      print(toplamKapasite);
                    });
                  },
                ),
              ),
              Expanded(
                child: CheckboxListTile(
                  title: Text("Sınıf 209"),
                  subtitle: Text("Kapasite : 20"),
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  //fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: _value18,
                  onChanged: (bool? value) {
                    setState(() {
                      _value18 = value!;
                      if(value==true){
                        sinifListesi.add("209");

                      }else{
                        sinifListesi.remove("209");
                      }
                      print(sinifListesi);
                      value==true?toplamKapasite+=20:toplamKapasite-=20;
                      print(toplamKapasite);
                    });
                  },
                ),
              ),
              Expanded(
                child: CheckboxListTile(
                  title: Text(""),
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  //fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: false,
                  onChanged: (bool? value) {
                    setState(() {

                    });
                  },
                ),
              ),
              Expanded(
                child: CheckboxListTile(
                  title: Text(""),
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                  //fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: false,
                  onChanged: (bool? value) {
                    setState(() {
                    });
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 50,),
              Text("Sınava Girecek Öğrenci Sayısı : "+isimListesi.length.toString()),
              SizedBox(width: 20,),
              Text("Toplam Kapasite : "+toplamKapasite.toString()),
              SizedBox(width: 20,),
              TextButton(onPressed: (){
                if(toplamKapasite>=isimListesi.length){
                  // Öğrencileri rasgele dağıt...
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>Sinif(numaraListesi: numaraListesi, isimListesi: isimListesi, sinavBilgiListesi: sinavBilgiListesi, sinifListesi: sinifListesi, kapasite: toplamKapasite,)) );


                }else{
                  showDialog(context: context, builder: (BuildContext context){
                    return AlertDialog(
                      title: Text("Uyarı"),
                      content: Text("Sınıflarda yeterli kapasite yok. Lütfen daha fazla sınıf seçin."),
                      actions: [TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("Tamam"))],
                    );
                  });
                }
              }, child: Text("Sınav Listesi Oluştur."))
            ],
          ),
          SizedBox(height: 15,),
          Expanded(
            child: TumOgrencilerListesi(),
          )
        ],
      ),
    );
  }

}

class TumOgrencilerListesi extends StatelessWidget {
  const TumOgrencilerListesi({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: isimListesi.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(isimListesi[index]),
            leading: Text((index+1).toString()+" "+numaraListesi[index]),
          );
        });
  }
}
