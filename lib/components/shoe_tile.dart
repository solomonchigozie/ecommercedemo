import 'package:ecommercedemo/models/shoe.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const  EdgeInsets.only(left: 25.0),
      width: 200, 
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12)
      ),
      // child: Column(
      //   children: [
      //     //shoe pic
      //     Image.asset(shoe.imagePath),

      //     //price


      //     //button to add to cart
      //   ],
      // ),
    );
  }
}
