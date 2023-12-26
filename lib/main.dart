


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pr_1_6099/screen/cart/cart_screen.dart';
import 'package:pr_1_6099/screen/home/home_screen.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context)=>HomeScreen(),
        "cart":(context)=>CartScreen(),
      },
    ),
  );
}