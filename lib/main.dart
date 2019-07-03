import 'package:flutter/material.dart';

void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  List<Widget> movies = new List();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
      for (var i = 0; i < 3; i++) {
       movies.add(Janr("Action"));
       movies.add(FilmRow()); 
      }
    return MaterialApp(
      title: "Main Page",
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Mondalina Film"),
            textTheme: TextTheme(
                title: TextStyle(
                    fontSize: 32.0,
                    fontFamily: "BungeeInline-Regular",
                    color: Colors.orangeAccent[700])),
            backgroundColor: Color.fromRGBO(30, 30, 30, 1),
          ),
          body: Container(
            color: Color.fromRGBO(30, 30, 30, 1),
            child: ListView(
              children: movies,
            ),
          )),
    );
  }
}

class FilmPoster extends StatelessWidget {
  String _src;
  FilmPoster(src) {
    this._src = src;
  }
  @override
  Widget build(BuildContext context) {
    const posterWidth = 200.0;
    const posterHeight = 100.0;
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
      child: Image.asset(
        "images/" + this._src,
        width: posterWidth,
        height: posterHeight,
        fit: BoxFit.contain,
      ),
    );
  }
}

class Janr extends StatelessWidget {
  String ad;
  Janr(name) {
    this.ad = name;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      margin: const EdgeInsets.fromLTRB(30, 0, 0, 0),
      child: GestureDetector(
        onTap: (){},
        child: Text(
        this.ad,
        style: TextStyle(
            fontSize: 28,
            color: Colors.white,
            decoration: TextDecoration.underline),
      ),
      ),
    );
  }
}

class FilmRow extends StatelessWidget {
  var columWidth = 150.0;
  var columHeight = 300.0;
  var rowHeigth = 230.0;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(30, 30, 30, 1),
      height: rowHeigth,
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: columWidth,
            color: Color.fromRGBO(30, 30, 30, 1),
            child: FilmPoster("titanic.jpg"),
          ),
          Container(
            width: columWidth,
            color: Color.fromRGBO(30, 30, 30, 1),
            child: FilmPoster("batman.jpg"),
          ),
          Container(
            width: columWidth,
            color: Color.fromRGBO(30, 30, 30, 1),
            child: FilmPoster("inception.jpg"),
          )
        ],
      ),
    );
  }
}
