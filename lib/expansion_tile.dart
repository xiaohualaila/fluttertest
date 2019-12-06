import 'package:flutter/material.dart';
class ExpansionTileDemo  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('expansion tile demo'),),
      body: Center(
        child: ExpansionTile(
          title: Text('Espansion Tile'),
          leading: Icon(Icons.ac_unit),
          backgroundColor: Colors.white12,
          children: <Widget>[
            ListTile(
              title: Text('list tile'),
              subtitle: Text('sub'),
              onTap: (){
                print('1111111');
              },
            )
            ,
            ListTile(
              title: Text('list xxxx'),
              subtitle: Text('sub'),
              onTap: (){
                print('22222');
              },
            )
            ,
          ],
          initiallyExpanded: true,
        ),
      ),
    );

  }
}
