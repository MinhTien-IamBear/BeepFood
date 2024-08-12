import 'package:appbeepfooddelivery/page/signup.dart';
import 'package:appbeepfooddelivery/widget/widget_support.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(children: [
        Container(
         width: MediaQuery.of(context).size.width,
         height: MediaQuery.of(context).size.height/2.5,
         decoration: BoxDecoration(gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
          Color(0xFFff5c30), 
          Color(0xFFe74b1a),
         ])),
        ),
        Container(
          margin: EdgeInsets.only(top: MediaQuery.of(context).size.height/3),
          height: MediaQuery.of(context).size.height/2,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))),
          child: 
            Text(""),
          ),
          Container(
            margin: EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
            child: Column(children: [
              Center(child: Image.asset("images/logo_login.png", 
              width: MediaQuery.of(context).size.width/2.5, fit: BoxFit.cover,)),
              SizedBox(height: 7.0,),
              Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/2,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
                  child: Column(children: [
                    SizedBox(height: 20.0,),
                    Text("Đăng Nhập", style: AppWidget.HeadlineTextFeildStyle()),
                    SizedBox(height: 30.0,),
                    TextField(
                      decoration: InputDecoration(hintText: 'Email', 
                      hintStyle: AppWidget.semiBoldTextFeildStyle(),
                      prefixIcon: Icon(Icons.email_outlined),
                      ),
                    ),
                    SizedBox(height: 30.0,),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(hintText: 'Mật Khẩu', 
                      hintStyle: AppWidget.semiBoldTextFeildStyle(),
                      prefixIcon: Icon(Icons.password_outlined),
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Container(
                      alignment: Alignment.topRight,
                      child: Text("Quên Mật Khẩu?", style: AppWidget.semiBoldTextFeildStyle(),)), 
                      SizedBox(height: 80.0,),
                      Material(
                        borderRadius: BorderRadius.circular(20),
                        elevation: 5.0,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          width: 200,
                          decoration: BoxDecoration(color: Color(0Xffff5722), borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text("ĐĂNG NHẬP", 
                            style: TextStyle(color: Colors.white, 
                            fontSize: 18.0, 
                            fontFamily: 'Poppins1', 
                            fontWeight: FontWeight.bold),),
                          ),
                        ),
                      )
                  ],),
                ),
              ),
              SizedBox(height: 70.0,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                },
                child: Text("Bạn chưa có tài khoản? Đăng Ký", style: AppWidget.semiBoldTextFeildStyle(),)),
            ],),
          )
      ],),),
    );
  }
}