import 'package:flutter/material.dart';
import 'package:spotify/dados/dados.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Pop(),
  ));
}

class Pop extends StatefulWidget {
  const Pop({Key? key}) : super(key: key);

  @override
  _PopState createState() => _PopState();
}

class _PopState extends State<Pop> {
  @override


  Widget Lista(String CoverUrl, String AlbumTitle, String Singername) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: Container(
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4.0),
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      child: Image.network(CoverUrl),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        AlbumTitle,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 22.0,
                            fontWeight: FontWeight.w800),
                      ),
                      SizedBox(
                        height: 12.0,
                      ),
                      Text(
                        Singername,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20.0),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 35.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Voce escolheu Pop!',
                style: TextStyle(fontSize: 28.0, color: Colors.white),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    Lista(pop[0], 'Taylor-Swift', '1989'),
                    Lista(pop[1], 'Young-Thug', 'Jeffery'),
                    Lista(pop[2], 'Lady-Gaga', 'Fame-Monster'),
                    Lista(pop[3], 'Janet-Jackson', 'Rhythm-Nation'),
                    Lista(pop[4], ' Whitney-Houston', 'Whitney-Houston'),
                    Lista(pop[5], 'Funkadelic', 'Maggot-Brain'),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
