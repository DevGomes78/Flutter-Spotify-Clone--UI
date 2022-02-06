import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 22.0),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 70.0,
              backgroundImage: AssetImage('assets/eu.jpg'),
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Amilson',
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Music',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        '20.1k',
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Inscritos',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text(
                        '1.2K',
                        style: TextStyle(color: Colors.white, fontSize: 25.0),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Seguidores',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 18.0),
                  child: Text(
                    'Editar Perfil',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
                color: Color(0xFF1dd860),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
