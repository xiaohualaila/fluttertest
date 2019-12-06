import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(


          child:Image.asset("images/3.0x/rx.png",fit:BoxFit.cover,),


//          child: Image.network(
//            'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
//            height: 200,
//            width: 200,
//            // fit: BoxFit.cover,
//            alignment: Alignment.bottomLeft,//图片对齐方式
//            color: Colors.red,//设置图片的背景颜色，通常和 colorBlendMode 配合一起 使用，这样可以是图片颜色和背景色混合。
//            colorBlendMode: BlendMode.softLight,
//            repeat: ImageRepeat.noRepeat,//平铺模式
//          )//路径要写全


      ),



    );
  }
}


