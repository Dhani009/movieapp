import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      height: 65,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color(0xFF292B37),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){
              //Nvigate to Home
            Navigator.pushNamed(context,"/");
            },
            child: const Icon(
            Icons.home,
            size: 35,
            color: Colors.white,
            ),
          ),
          InkWell(
            onTap: (){
              //
            Navigator.pushNamed(context,"categorypage",);
            },
            child: const Icon(
            Icons.category,
            size: 35,
            color: Colors.white,
            ),
          ),
          InkWell(
            onTap: (){},
            child: const Icon(
            Icons.favorite_border,
            size: 35,
            color: Colors.white,
            ),
          ),
          InkWell(
            onTap: (){},
            child: const Icon(
            Icons.person,
            size: 35,
            color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}