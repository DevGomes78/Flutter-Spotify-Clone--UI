import 'package:flutter/material.dart';
import 'package:spotify/estilos/pop.dart';
import '../estilos/rock.dart';

class Buscar extends StatefulWidget {
  const Buscar({Key? key}) : super(key: key);

  @override
  _BuscarState createState() => _BuscarState();
}

class _BuscarState extends State<Buscar> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 15.0),
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                'Buscar',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 48.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(18.0),
              child: TextField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    prefixIcon:
                        Icon(Icons.search, color: Colors.black, size: 28.0),
                    filled: true,
                    border: InputBorder.none,
                    hintText: 'Encontre sua musica!'),
              ),
            ),
            Expanded(
              child: GridView.count(
                primary: false,
                padding: EdgeInsets.all(20),
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: InkWell(
                      child: Container(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          'Pop Music',
                          style: TextStyle(color: Colors.white, fontSize: 28.0),
                        ),
                        color: Colors.deepPurple,
                      ),
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Pop()));
                      },
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: InkWell(
                      child: Container(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          'Rock',
                          style: TextStyle(color: Colors.white, fontSize: 28.0),
                        ),
                        color: Colors.deepOrange,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RockMusic()));
                      },
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Container(
                      padding: EdgeInsets.all(12.0),
                      child: Text(
                        'Hip Hop',
                        style: TextStyle(color: Colors.white, fontSize: 28.0),
                      ),
                      color: Colors.amber,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        'Drum Bass',
                        style: TextStyle(color: Colors.white, fontSize: 28.0),
                      ),
                      color: Colors.blueAccent,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        'House',
                        style: TextStyle(color: Colors.white, fontSize: 28.0),
                      ),
                      color: Colors.green,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        'Reggae',
                        style: TextStyle(color: Colors.white, fontSize: 28.0),
                      ),
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
