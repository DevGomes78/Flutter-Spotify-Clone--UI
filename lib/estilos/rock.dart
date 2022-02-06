import 'package:flutter/material.dart';
import 'package:spotify/dados/dados.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: RockMusic(),
  ));
}

class RockMusic extends StatefulWidget {
  const RockMusic({Key? key}) : super(key: key);

  @override
  _RockMusicState createState() => _RockMusicState();
}

class _RockMusicState extends State<RockMusic> {
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
                'Voce escolheu Rock!',
                style: TextStyle(fontSize: 28.0, color: Colors.white),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    Lista(albums2[0], 'Dark side of moon', 'Pink Floyd'),
                    Lista(albums2[1], 'London Calling', 'The Clash'),
                    Lista(albums2[2], 'Pearl Jam', 'Ten'),
                    Lista(albums2[3], 'Ok Computer', 'Radiohead'),
                    Lista(albums2[4], ' Nirvana', 'Nevermind'),
                    Lista(albums2[5], 'Trans-Europe Express', 'Kraftwerk'),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
