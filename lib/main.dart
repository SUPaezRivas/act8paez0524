import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Tabla Madederia Ortega",
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(
          title: "Barberia  Sergio",
        ));
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Column(
        children: [
          Container(
            height: 550,
            padding: EdgeInsets.all(10),
            child: InkWell(
              onTap: () {
                print("Este objeto esta presionado");
              },
              child: Card(
                elevation: 40,
                color: Colors.grey[300],
                shadowColor: Colors.blue,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      child: Image(
                        image: AssetImage("assets/clipper.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    //gghgggggggggg
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Maquina Clipper",
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Los clippers están diseñados especialmente para cortar el cabello y las barbas largas. Es por eso que no cortan muy al ras. Suelen venir con accesorios para ajustarse al largo con el que se va a trabajar, y así, lograr diferentes estilos. Como cortan mayor cantidad de pelo, sus cuchillas son más gruesas.",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.all(18),
            child: Table(border: TableBorder.all(), columnWidths: {
              0: FixedColumnWidth(180),
              1: FlexColumnWidth(),
              2: FlexColumnWidth(),
            }, children: [
              TableRow(children: [
                Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "ID maquina",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "Marca",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                Container(
                    padding: EdgeInsets.all(5),
                    child: Text(
                      "Precios",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              ]),
              TableRow(children: [
                Container(padding: EdgeInsets.all(5), child: Text("001")),
                Container(padding: EdgeInsets.all(5), child: Text("Whall")),
                Container(padding: EdgeInsets.all(5), child: Text("1200")),
              ]),
              TableRow(children: [
                Container(padding: EdgeInsets.all(5), child: Text("002")),
                Container(
                    padding: EdgeInsets.all(5), child: Text("Maqic Clip")),
                Container(padding: EdgeInsets.all(5), child: Text("1000")),
              ]),
              TableRow(children: [
                Container(padding: EdgeInsets.all(5), child: Text("003")),
                Container(padding: EdgeInsets.all(5), child: Text("Mark 1")),
                Container(padding: EdgeInsets.all(5), child: Text("900")),
              ]),
            ]),
          ),
        ],
      ),
    );
  }
}
