import 'package:appbeepfooddelivery/widget/widget_support.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {

  int a = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black,)),
          SizedBox(height: 10.0),
          Image.asset("images/salad_ga.png", 
          width: MediaQuery.of(context).size.width, 
          height: MediaQuery.of(context).size.height/2.5,fit: BoxFit.fill,),
          SizedBox(height: 15.0),
          Row(
            
            children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Salad Gà Nướng Mật Ong",style: AppWidget.semiBoldTextFeildStyle(),),
              ],
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                if(a>1){
                --a;
                }  
                setState(() {
                  
                });
              },
              child: Container(
                decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
                child: Icon(Icons.remove, color: Colors.white,),
              ),
            ),
            SizedBox(width: 20.0,),
            Text(a.toString(),style: AppWidget.semiBoldTextFeildStyle(),),
            SizedBox(width: 20.0,),
            GestureDetector(
              onTap: () {
                ++a;
                setState(() {
                  
                });
              },
              child: Container(
                decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
                child: Icon(Icons.add, color: Colors.white,),
              ),
            ),
          ],),
          SizedBox(height: 20.0,),
          Text("(219 Calo) Xà Lách Hữu Cơ, Ngô Mỹ, Cà Chua, Dứa, Dưa Chuột, Sốt Eatclean và Gà Nướng Mật Ong", maxLines: 3, 
          style: AppWidget.LightTextFeildStyle(),),
          SizedBox(height: 30.0,),
          Row(children: [
            Text("Thời gian giao hàng", style: AppWidget.semiBoldTextFeildStyle(),),
            Icon(Icons.alarm, color: Colors.black54,),
            SizedBox(width: 5.0,),
            Text("30 phút", style: AppWidget.semiBoldTextFeildStyle(),),
          ],),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Giá", style: AppWidget.semiBoldTextFeildStyle(),),
                Text("63.000đ", style: AppWidget.HeadlineTextFeildStyle(),),
              ],),
              Container(
                width: MediaQuery.of(context).size.width/2, 
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  Text("Thêm vào giỏ hàng", style: TextStyle(color: Colors.white, fontSize: 15.0, fontFamily: 'Poppins')),
                  SizedBox(width: 21.0,),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(8)),
                    child: Icon(Icons.shopping_cart_outlined, color: Colors.white,),
                  ),
                  SizedBox(width: 7.0,),
                ],),
              )
            ],),
          )
      ],),),
    );
  }
}