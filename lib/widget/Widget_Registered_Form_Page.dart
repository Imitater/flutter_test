import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// ignore: camel_case_types
class Widget_Registered_Form_page extends StatefulWidget {
  @override
  _Widget_Registered_Form_page createState() =>
      new _Widget_Registered_Form_page();
}

// ignore: camel_case_types
class _Widget_Registered_Form_page extends State<Widget_Registered_Form_page> {
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
                    icon: Icon(Icons.account_box)),
              ),

              Container(
                  height: 70,
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 200,
                        height: 70,
                        child: TextFormField(
                          decoration: InputDecoration(
                              labelText: "验证码",
                              labelStyle: TextStyle(fontSize: 15),
                              hintText: "您的验证码",
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                              icon: Icon(Icons.security)),
                          obscureText: true,
                        ),
                      ),
                      Container(
                        width: 65,
                        height: 25,
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(28),
                              side: BorderSide(color: Colors.blue)),
                          child: Text(
                            "验证码",
                            style: TextStyle(fontSize: 10),
                          ),
                          color: Colors.transparent,
                          textColor: Colors.blue,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  )),
              // 注册按钮

              Container(
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                width: 175,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: Text("注册"),
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  onPressed: () {
                    // 通过_formKey.currentState 获取FormState后，
                    // 调用validate()方法校验用户名密码是否合法，校验
                    // 通过后再提交数据。
                    if ((_formKey.currentState as FormState).validate()) {
                      //验证通过提交数据
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
