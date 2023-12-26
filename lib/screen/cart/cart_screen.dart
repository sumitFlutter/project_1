import 'package:flutter/material.dart';
import 'package:pr_1_6099/utills/global.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  double total = 0;

  void sum() {
    setState(() {
      for (int i = 0; i < cart.length; i++) {
        total = total + cart[i]["price"];
      }
    });
  }

  @override
  void initState() {
    super.initState();
    sum();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.greenAccent,
        title: const Text("My Cart"),
        actions: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(
              "assets/image/1.jpg",
            ),
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                  cart.length,
                  (index) => Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            color: Colors.grey.shade100,
                            margin: EdgeInsets.all(10),
                            child: Image.asset(
                              "${cart[index]["image"]}",
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            "${cart[index]["name"]}\n\$ ${cart[index]["price"]}",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      )),
            ),
          ),
          Spacer(),
          Container(
              height: 50,
              width: MediaQuery.sizeOf(context)!.width,
              color: Colors.greenAccent,

              child: Center(child: Text("TOTAL PRICE IS \$ $total"))),
        ],
      ),
    ));
  }
}
