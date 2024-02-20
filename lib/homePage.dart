import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertasarim/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //çoklu ekran desteği için oranlama yaparken kullanıyoruz.
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranHeight = ekranBilgisi.size.height;
    final double ekranWidth = ekranBilgisi.size.width;

    //çoklu dil desteği için
    var d = AppLocalizations.of(context);
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Pizza",style: TextStyle(color: textColor,fontFamily: "Pacifico",fontSize: 23),),
        backgroundColor: mainColor,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.only(top: 5.0), // buradan padding sınırlarını belirlersin.
            child:Text(d!.pizzabaslik,style: TextStyle(fontSize: 30,
              color:mainColor,fontWeight: FontWeight.bold),),
          ),
          Padding(padding: const EdgeInsets.only(top: 5.0),
            child: Image.asset("images/sucuklupizza.jpg"),
          ),

          Padding(
            padding:const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              //2.yöntem alternatif statles çözümü özelleştirilmiş widget
                myTextButtons(textContent: d.peyniryazi, clr: Colors.amber),
                myTextButtons(textContent: d.sucukyazi, clr: Colors.redAccent),
                myTextButtons(textContent: d.zeytinyazi, clr: Colors.black87),
                myTextButtons(textContent: d.biberyazi, clr: Colors.green),

           /*
           1.yöntem
                TextButton(onPressed: (){},
                  style: TextButton.styleFrom(backgroundColor: Colors.amber),
                  child:Text("Cheese",style: TextStyle(color: Colors.white),),
                ),
                TextButton(onPressed: (){},
                  style: TextButton.styleFrom(backgroundColor: Colors.redAccent),
                  child:Text("Sausage",style: TextStyle(color: Colors.white),),
                ),
                TextButton(onPressed: (){},
                  style: TextButton.styleFrom(backgroundColor: Colors.black87),
                  child:Text("Olive",style: TextStyle(color: Colors.white),),
                ),
                TextButton(onPressed: (){},
                  style: TextButton.styleFrom(backgroundColor:Colors.green),
                  child:Text("Pepper",style: TextStyle(color: Colors.white),),
                ),*/


              ],
            ),
          ),


          Padding(
          padding:const EdgeInsets.only(top: 5),
          child: Column(
            children:[
              Text(d.teslimatsure,style: TextStyle(fontSize: 22,color: mainColor,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(d.teslimatbaslik,style: TextStyle(fontSize: 22,color: mainColor,fontWeight: FontWeight.bold),),
              ),
                Text(d.pizzaaciklama,style: TextStyle(fontSize: 22,color: textColor2),textAlign: TextAlign.center,),
            ],


          ),
          ),




    Padding(
    padding:const EdgeInsets.all(5.0),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children:[
      Text("\$ 5.98 ",style: TextStyle(fontSize: 40,color: mainColor,fontWeight: FontWeight.bold),),
  // iki item arasında boşluk oluşturur. birini sola diğerini en sağa  yapıştırır.
      SizedBox(width: 200,height: 40,
        child: TextButton(onPressed: (){},
            child:Text(d.butonyazi,style: TextStyle(color: textColor,fontSize: 20),),
            style: TextButton.styleFrom(
              backgroundColor: mainColor,
              shape: const RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(7))),
            ),

        ),
      ),
      ],
    ),
    ),







        ],


      ),

    );
  }
}




//Özelleştirilmiş Widget
// birden fazla aynı ögeyi oluşturan ve renk ve yazı içeriklerini değiştiren butonlar oluşturur.
class myTextButtons extends StatelessWidget {
  String textContent;
  Color clr;
  myTextButtons({required this.textContent,required this.clr});

  @override
  Widget build(BuildContext context) {
    return  TextButton(onPressed: (){},
      style: TextButton.styleFrom(backgroundColor: clr),
      child:Text(textContent,
        style: TextStyle(
            color: Colors.white),),
    );
  }
}




