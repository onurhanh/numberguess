import 'package:flutter/material.dart';

class SonucEkrani extends StatefulWidget {

  bool sonuc;

  SonucEkrani({required this.sonuc});



  @override
  State<SonucEkrani> createState() => _SonucEkraniState();
}

class _SonucEkraniState extends State<SonucEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Sonuç Ekrani"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            widget.sonuc ? Image.asset("resimler/mutluresim.png",height: 100,width: 350,) : Image.asset("resimler/üzgünresim.png",height: 100,width: 350,),
            Text(widget.sonuc ? "KAZANDINIZ!" : "KAYBETTİNİZ.",style: TextStyle(color: Colors.black54,fontSize: 36),),

            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                child: Text("TEKRAR DENE!"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white,
                ),
                onPressed: (){
                  Navigator.pop(context);
                },
              ),
            ),


          ],
        ),
      ),

    );
  }
}
