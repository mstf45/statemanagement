import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagementyoutube/class/newdata.dart';

class AnaPages extends StatelessWidget {
  const AnaPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Row(
        children: const [
          Page1(),
          Page2(),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ekran = MediaQuery.of(context);
    var yukseklik = ekran.size.height;
    var genislik = ekran.size.width;
    String sehir = Provider.of<StateData>(context).sehir;
    return Container(
      height: yukseklik,
      width: genislik / 2,
      color: Colors.yellow,
      child: Column(
        children: [
          Text(
            'Şehir: ${Provider.of<StateData>(context, listen: false).sehir}',
            textScaleFactor: 2,
          ),
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var ekran = MediaQuery.of(context);
    var yukseklik = ekran.size.height;
    var genislik = ekran.size.width;

    String segir = Provider.of<StateData>(context).sehir;
    return Container(
      height: yukseklik,
      width: genislik / 2,
      color: Colors.green,
      child: Column(
        children: [
          Text(
            'Şehir: $segir',
            textScaleFactor: 2,
          ),
          TextField(
            onChanged: (read) {
              Provider.of<StateData>(context, listen: false).newCity(read);
            },
          ),
        ],
      ),
    );
  }
}
