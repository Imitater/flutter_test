import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sleep_test/ui/index.dart';

// ignore: camel_case_types
class Widget_Login_Form_page extends StatefulWidget {
  @override
  _Widget_Login_Form_page createState() => new _Widget_Login_Form_page();
}

// ignore: camel_case_types
class _Widget_Login_Form_page extends State<Widget_Login_Form_page> {
  GlobalKey _formKey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false, //输入框抵住键盘
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 25.0),
        child: Form(
          key: _formKey, //设置globalKey，用于后面获取FormState
          autovalidate: true, //开启自动校验
          child: Column(
            children: <Widget>[
              TextFormField(
                autofocus: true,
                decoration: InputDecoration(
                    labelText: "账号",
                    labelStyle: TextStyle(fontSize: 15),
                    hintText: "用户名或邮箱",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                    icon: Icon(Icons.phone_android)),
              ),
              Container(
                height: 70,
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "密码",
                      labelStyle: TextStyle(fontSize: 15),
                      hintText: "您的登录密码",
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                      icon: Icon(Icons.lock)),
                  obscureText: true,
                ),
              ),
              // 登录按钮

              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                width: 175,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: Text("登录"),
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  onPressed: () {
                    if ((_formKey.currentState as FormState).validate()) {
                      Navigator.pop(context);


                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Index();
                      }));

                      
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
