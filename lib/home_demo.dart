import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: BottomClipper(),
            child: Container(
              color: Colors.deepPurpleAccent,
              height: 200.0,
            ),
          )
        ],
      ),
    );
  }
}

class BottomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = Path();
    path.lineTo(0, size.height-30);
    var firstControlPoint =Offset(size.width/6,size.height);
    var firstEndPoint = Offset(size.width/3,size.height-30);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy, firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width/2,size.height-60);
    var secondEndPoint = Offset(size.width/3*2,size.height-30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy, secondEndPoint.dx, secondEndPoint.dy);

    var thriedControlPoint = Offset(size.width/6*5,size.height);
    var thriedEndPoint = Offset(size.width,size.height-30);
    path.quadraticBezierTo(thriedControlPoint.dx, thriedControlPoint.dy, thriedEndPoint.dx, thriedEndPoint.dy);

    path.lineTo(size.width, size.height-30);
    path.lineTo(size.width, 0);


    return path;

  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
