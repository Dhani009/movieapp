import 'package:flutter/material.dart';
import 'package:movieapp/widget/CustomNavBar.dart';
import 'package:movieapp/widget/NewMoviesWidget.dart';
import 'package:movieapp/widget/UpComingWidget.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 18,horizontal: 10
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(
                      "Hello Alex",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                      Text(
                      "What to watch?",
                      style: TextStyle(
                        color: Colors.white54,
                      ),
                      ),
                  ],),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset("images.profile.jpg", height: 60, width: 60,),
                  ),
                ],),
              ),
              Container(
                height: 60,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Color(0xFF292B7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(children: [
                  Icon(Icons.search,
                  color: Colors.white54,
                  size: 30,
                  ),
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(left: 5),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white,),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.white54)
                      ),
                    ),
                  )
                ],),
              ),
              SizedBox(height: 30,),
              UpComingWidget(),
              SizedBox(height: 40,),
              NewMoviesWidget(),
            ]),
            ),
            ),
            bottomNavigationBar: CustomNavBar(),
    );
  }
}