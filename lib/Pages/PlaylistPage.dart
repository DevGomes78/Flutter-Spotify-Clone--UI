import 'package:flutter/material.dart';

import '../dados/dados.dart';

class Playlist extends StatelessWidget {

  Widget ListItem(String CoverUrl, String AlbumTitle, String Singername) {
    return Column(
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 35.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Sua Música Favorita!',
              style: TextStyle(fontSize: 28.0, color: Colors.white),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  ListItem(albums2[0], 'Dark side of moon', 'Pink Floyd'),
                  ListItem(albums2[1], 'London Calling', 'The Clash'),
                  ListItem(albums2[2], 'Pearl Jam', 'Ten'),
                  ListItem(albums2[3], 'Ok Computer', 'Radiohead'),
                  ListItem(albums2[4], ' Nirvana', 'Nevermind'),
                  ListItem(albums2[5], 'Trans-Europe Express', 'Kraftwerk'),
                  ListItem(albums2[6], 'DJ Shadow', 'Endtroducing...'),
                  ListItem(albums2[7], 'Burial', 'Untrue'),
                  ListItem(albums2[8], ' Four Tet', 'Rounds'),
                  ListItem(albums2[9], ' The Chemical Brothers','Dig Your Own Hole'),
                  ListItem(albums2[10], '  Massive Attack','Mezzanine'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
