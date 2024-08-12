import 'package:appbeepfooddelivery/page/details.dart';
import 'package:appbeepfooddelivery/widget/widget_support.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

bool icecream = false, pizza = false, burger = false, salad = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top:  50.0, left: 20.0,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Xin Chào Tiến,", 
                style:AppWidget.boldTextFeildStyle()  
                ),
            Container(
              margin: EdgeInsets.only(right: 20.0),
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
              child: Icon(Icons.shopping_cart, color: Colors.white,),
              )
              ],
            ),  
            SizedBox(height: 20.0,),  
            Text("Thức Ăn Ngon", 
                style:AppWidget.HeadlineTextFeildStyle()  
                ),
            Text("Khám Phá và Những Món Ăn Ngon Hấp Dẫn", 
                style:AppWidget.LightTextFeildStyle()
                ),
            SizedBox(height: 20.0,),
            Container(
              margin: EdgeInsets.only(right: 20.0),
              child: showItem()),
            SizedBox(height: 30.0,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Details()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(4),
                    child: Material(
                      elevation: 5.0,
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Image.asset("images/salad_ga.png", height: 180, width: 260,fit: BoxFit.cover,),
                          Text("Salad Gà Nướng Mật Ong", style: AppWidget.semiBoldTextFeildStyle(),),
                          SizedBox(height: 5.0),
                          Text("(219 Calo) Xà Lách Hữu Cơ, Ngô Mỹ, \nCà Chua, Dứa, Dưa Chuột, Sốt Eatclean \nvà Gà Nướng Mật Ong", style: AppWidget.LightTextFeildStyle(),),
                          SizedBox(height: 5.0),
                          Text("\63.000₫", style: AppWidget.semiBoldTextFeildStyle(),),
                        ],),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15.0,),
                Container(
                  margin: EdgeInsets.all(4),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Image.asset("images/salad_ca_hoi.png", height: 180, width: 250,fit: BoxFit.cover,),
                        Text("Salad Cá Hồi Hun Khói", style: AppWidget.semiBoldTextFeildStyle(),),
                        SizedBox(height: 5.0),
                        Text("Xà Lách Hữu Cơ, Ngô Mỹ,\n Cà Chua, Dứa, Dưa Chuột, Sốt Eatclean\n và Cá Hồi Hun Khói", style: AppWidget.LightTextFeildStyle(),),
                        SizedBox(height: 5.0),
                        Text("\75.000₫", style: AppWidget.semiBoldTextFeildStyle(),),
                      ],),
                    ),
                  ),
                ),
              ],),
            ),
            SizedBox(height: 17.0,),
            Container(
              margin: EdgeInsets.only(right: 1.0),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: EdgeInsets.all(7),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Image.asset("images/salad_organic_eatclean.png", height: 170, width: 150,fit: BoxFit.cover,),
                    SizedBox(width: 20.0,),
                    Column(children: [
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Text("Salad Organic Eatclean", style: AppWidget.semiBoldTextFeildStyle(),)),
                      SizedBox(height: 5.0,),
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Text("(90 Calo) Xà Lách Hữu Cơ, Ngô Mỹ, Cà Chua, Dứa, Dưa Chuột, Sốt Eatclean và Trứng Organic", style: AppWidget.LightTextFeildStyle(),)),
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        child: Text("\38.000đ", style: AppWidget.semiBoldTextFeildStyle(),)),      
                    ],)
                  ],),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget showItem(){
    return  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                GestureDetector(
                  onTap: (){
                    icecream = true;
                    pizza = false;
                    burger = false;
                    salad = false;
                    setState(() {
                      
                    });
                  },
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(color: icecream?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(8),
                      child: Image.asset("images/ice-cream.png", height: 55, width: 55, fit: BoxFit.cover, color: icecream? Colors.white: Colors.black,),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    icecream = false;
                    pizza = true;
                    burger = false;
                    salad = false;
                    setState(() {
                      
                    });
                  },
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(color: pizza?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(8),
                      child: Image.asset("images/pizza.png", height: 55, width: 55, fit: BoxFit.cover, color: pizza? Colors.white: Colors.black,),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    icecream = false;
                    pizza = false;
                    burger = true;
                    salad = false;
                    setState(() {
                      
                    });
                  },
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(color: burger?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(8),
                      child: Image.asset("images/burger.png", height: 50, width: 50, fit: BoxFit.cover, color: burger? Colors.white: Colors.black,),
                    ),
                  ),
                ),
                 GestureDetector(
                  onTap: (){
                    icecream = false;
                    pizza = false;
                    burger = false;
                    salad = true;
                    setState(() {
                      
                    });
                  },
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(color: salad?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
                      padding: EdgeInsets.all(8),
                      child: Image.asset("images/salad.png", height: 50, width: 50, fit: BoxFit.cover, color: salad? Colors.white: Colors.black,),
                    ),
                  ),
                ),
              ],); 
  }
}