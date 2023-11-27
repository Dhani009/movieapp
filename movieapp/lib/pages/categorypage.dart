import 'package:flutter/material.dart';
import 'package:movieapp/widget/CustomNavBar.dart';

class categorypage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: (){
                      //to go back page
                      Navigator.pop(context);
                    },
                    child: const Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 30.0,),
                  Text(
                    "Discover",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w500
                    ),
                  )
                ],
              ),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
              child: Column(
                children: [
                  for (int i=1; i<11; i++)
                  Padding(padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "images/$i.jpg",
                          height: 70,
                          width: 90,
                          fit: BoxFit.cover,
                    ),
                      ),
                      const SizedBox(height:10.0),
                      Text(
                        "Category",
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 23,
                      )
                    ],
                  ),
                  )
                ],
              ),
              )
          ],
        ),
      ),
      bottomNavigationBar : CustomNavBar(),
    );
  }
}