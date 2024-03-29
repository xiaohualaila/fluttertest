

import 'package:flutter/material.dart';

class ExpansionPanelListDemo  extends StatefulWidget {
  @override
  _ExpansionPanelListDemo  createState() => _ExpansionPanelListDemo();
}

class _ExpansionPanelListDemo  extends State<ExpansionPanelListDemo > {
  var currentPanelIndex =-1;
  List<int> mList;
  List<ExpandStateBean> expandStateList;


  _ExpansionPanelListDemo(){
    mList = new List();
    expandStateList = new List();
    for(int i=0;i<10;i++){
      mList.add(i);
      expandStateList.add(ExpandStateBean(i,false));
    }
  }

  _setCurrentIndex(int index,isExpand){
      setState(() {
        expandStateList.forEach((item){
          if(item.index ==index){
            item.isOpen = !isExpand;
          }
        });
      });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('fdsfd'),),
      body: SingleChildScrollView(child:ExpansionPanelList(
        expansionCallback: (index,bol){
          _setCurrentIndex(index,bol);
        },
        children: mList.map((index){
          return ExpansionPanel(
              headerBuilder: (context,isExpanded){
                return ListTile(
                  title: Text('this is no.$index'),
                );
              },
              body:ListTile(
                  title:Text('expansion no.$index')
              ),
              isExpanded: expandStateList[index].isOpen
          );
        }).toList(),
      ) ,),
    );
  }
}
class ExpandStateBean{
  var isOpen;
  var index;
  ExpandStateBean(this.index,this.isOpen);
}
