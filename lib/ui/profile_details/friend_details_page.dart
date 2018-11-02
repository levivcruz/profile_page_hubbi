import 'package:flutter/material.dart';

class FriendDetailsPage extends StatefulWidget {
  @override
  _FriendDetailsPageState createState() => _FriendDetailsPageState();
}

class _FriendDetailsPageState extends State<FriendDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Perfil',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
        elevation: 2.0,
      ),
      body: new Stack(
        children: <Widget>[
          new ClipPath(
            child: new Container(
              color: Colors.lightBlue[100]
            ),
            clipper: getClipper(),
          ),
          new Positioned(
            width: 360.0,
            top: MediaQuery.of(context).size.height / 7,
            child: new Column(
              children: <Widget>[
                new Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: new BoxDecoration(
                      color: Colors.grey[100],
                      image: new DecorationImage(
                        image: new NetworkImage('assets/images/empadalogo.png'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(75.0)),
                      boxShadow: [
                        BoxShadow(blurRadius: 7.0, color: Colors.black)
                      ]),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Levi Vieira',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(height: 25.0),
                new Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
                  child: new Container(
                    padding: EdgeInsets.all(16.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        const Text(
                          'Informações do perfil',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(height: 20.0),
                        new Row(
                          children: <Widget>[
                            const Text(
                              'Empresa: ',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            const Text('Hubbi'),
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        new Row(
                          children: <Widget>[
                            const Text(
                              'Unidade: ',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            const Text('Brasília - Distrito Federal'),
                          ],
                        ),
                        const SizedBox(height: 20.0),
                        new Row(
                          children: <Widget>[
                            const Text(
                              'Área: ',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                            const Text('Tecnologia'),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height / 3.2);
    // path.lineTo(0.0, size.height / 2.5);
    path.lineTo(size.width * 500, 0.0);
    // path.lineTo(size.width + 500, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
