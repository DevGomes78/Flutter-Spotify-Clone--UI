import 'package:flutter/material.dart';
import 'package:spotify/dados/dados.dart';

class HomePage extends StatelessWidget {


  Widget AlbumContainer(String CoverUrl, String CoverName, String singername) {
    return Container(
      child: InkWell(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Container(
                height: 140.0,
                width: 140.0,
                child: Image.network(CoverUrl),
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              CoverName,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 12.0),
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              singername,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Recomendados para Você',
              style: TextStyle(color: Colors.white, fontSize: 28.0),
            ),

            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  AlbumContainer(albums2[0], 'Dark side of moon', 'Pink Floyd'),
                  SizedBox(width: 28.0),
                  AlbumContainer(albums2[1], 'London Calling', 'The Clash'),
                  SizedBox(width: 28.0),
                  AlbumContainer(albums2[2], 'Pearl Jam', 'Ten'),
                  SizedBox(width: 28.0),
                  AlbumContainer(albums2[3], 'Ok Computer', 'Radiohead'),
                  SizedBox(width: 28.0),
                  AlbumContainer(albums2[4], ' Nirvana','Nevermind'),
                  SizedBox(width: 28.0),
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('Música Eletronica',
              style: TextStyle(color: Colors.white, fontSize: 25.0),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  AlbumContainer(albuns3[0], 'Trans-Europe Express', 'Kraftwerk'),
                  SizedBox(width: 28.0),
                  AlbumContainer(albuns3[1], 'DJ Shadow', 'Endtroducing...'),
                  SizedBox(width: 28.0),
                  AlbumContainer(albuns3[2], 'Burial', 'Untrue'),
                  SizedBox(width: 28.0),
                  AlbumContainer(albuns3[3], ' Four Tet', 'Rounds'),
                  SizedBox(width: 28.0),
                  AlbumContainer(albuns3[4], ' The Chemical Brothers','Dig Your Own Hole'),
                  SizedBox(width: 28.0),
                  AlbumContainer(albuns3[5], '  Massive Attack','Mezzanine'),
                  SizedBox(width: 28.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
