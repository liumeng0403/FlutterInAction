import 'package:flutter/material.dart';

class DecoratedBoxDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("装饰容器 demo"),
      ),
      body: Column(
        children: <Widget>[
          DecoratedBox(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red,Colors.orange[700]],  //背景渐变
              ),
              borderRadius: BorderRadius.circular(3), //3像素圆角
              boxShadow: [  //阴影
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(2,2),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal:80,vertical: 18),
              child: Text("Login",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}