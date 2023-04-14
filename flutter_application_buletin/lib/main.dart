import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "navigasi", 
    home: new HalSatu(),
    
    // utk link perpindahan 
    routes: <String, WidgetBuilder>{
      '/HalSatu' : (BuildContext context) => new HalSatu(), 
      '/HalDua' : (BuildContext context) => new HalDua(), 
      '/HalTiga' : (BuildContext context) => new HalTiga(), 
    }
  ));
}

class HalSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color.fromARGB(255, 113, 179, 233),
      body: 
      new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(80.0)),
            new Image.asset("assets/buletin.png", width: 300.0,),
            new Padding(padding: new EdgeInsets.all(10.0)),
            new Image.asset("assets/1.png", width: 300.0,),
            

          ],
          
        ),
      ),

      ),
      
      
      
      // backgroundColor: Colors.blue,
      // appBar: new AppBar(title: new Text("music")),
      floatingActionButton: new Center(
        child: new IconButton(
          icon: new Image.asset("assets/buletin.png", width: 900.0,),

          // fungsi perpindahan
          onPressed: (){
            Navigator.pushNamed(context, '/HalTiga');
          },  
        ),
      ),
    );
  }
}

class HalDua extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: new AppBar(
        backgroundColor: Color.fromARGB(255, 113, 179, 233),
        toolbarHeight: 120.0,
        // leading: 
        
        // new Image.asset("assets/buletin.png", width: 100.0,  ),
        title: new Center(
          child: new Image.asset("assets/buletin.png", width: 100.0,),
        ),
        actions: <Widget>[
          new Icon(Icons.search)
        ],
      ),

      body: new Container(
        child: new Column(
          // garis bawah
          crossAxisAlignment: CrossAxisAlignment.stretch,


// floatingActionButton: new Center(
//         child: new IconButton(
//           icon: new Image.asset("assets/buletin.png", width: 900.0,),

//           // fungsi perpindahan
//           onPressed: (){
//             Navigator.pushNamed(context, '/HalDua');
//           },  
//         ),
//       ),



          children: <Widget>[
            new CardSaya(icon: Icons.android, teks: "Jadwal UTS", warna: Colors.brown,),
            new CardSaya(icon: Icons.android, teks: "BUKBER", warna: Colors.pink,
            
            ),
            
          ],
        ),
      ),


      // body: new Container(

      //   // child hanya berlaku utk 1 buah widget, solusinya menggunakan row/column
      //   child: new Row(
      //     children: <Widget>[
      //       new Icon(
      //         Icons.local_pizza, 
      //         size: 70.0, 
      //         color: Colors.red
      //       ),
            
      //       new Row(
      //         children: <Widget>[
      //           new Icon(
      //             Icons.donut_large,
      //             size: 70.0,
      //             color: Colors.red,
      //           ),
      //           new Icon(
      //             Icons.donut_large,
      //             size: 70.0,
      //             color: Colors.red,
      //           ),
      //           new Icon(
      //             Icons.donut_large,
      //             size: 70.0,
      //             color: Colors.red,
      //           ),
      //         ],
      //       ),
            
      //       new Icon(
      //         Icons.cake,
      //         size: 70.0,
      //         color: Colors.red,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}

class CardSaya extends StatelessWidget {

  // menggunakan required utk menghindari error
CardSaya ({required this.icon, required this.teks, required this.warna});

final IconData icon;
final String teks;
final Color warna;
  
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
        child: new Card(
      child: new Column(
        children: <Widget>[
          new Icon(
            // Icons.home,
            icon,
            size: 50.0,
            // color: Colors.brown,
            color: warna,
          ),
          new Text(
            // "Home",
            teks,
            style: new TextStyle(fontSize: 20.0),
          )
        ],
      ),
    ));
  }
}

class HalTiga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Kembali"),
        backgroundColor: Color.fromARGB(255, 113, 179, 233),
        toolbarHeight: 70.0,
      ),
      // body: new Center(
      //   child: new IconButton(
      //     icon: new Icon(Icons.speaker, size: 50.0, color: Colors.red,),
      //     onPressed: (){
      //       Navigator.pushNamed(context, '/HalSatu');
      //     },  
      //   ),
      // ),

      body: new Center(
        child: 
        new Text("Bukber", 
          style: new TextStyle(
            color: Colors.black,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        
      ),
      
    );
  }
}