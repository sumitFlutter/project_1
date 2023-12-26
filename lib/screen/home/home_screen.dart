import 'package:flutter/material.dart';
import 'package:pr_1_6099/utills/global.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        leading: Icon(Icons.favorite),
        centerTitle: true,
        title: Text("Welcome To Our App"),
        actions:  [
          IconButton(onPressed: () {
            Navigator.pushNamed(context, "cart");
          }, icon: const Icon(Icons.shopping_cart)),
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage("assets/image/1.jpg"),
          ),
        ],
      ),
          body: Column(
            children: [
              Container(
                height: 80,
                width: MediaQuery.sizeOf(context)!.width,
                color: Colors.greenAccent,
                child: Column(
                  children: [
                    Container(
                      height: 38,
                      margin: EdgeInsets.all(15),
                      width: MediaQuery.sizeOf(context)!.width,
                      color: Colors.white,
                      child:  const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(width: 10,),
                              Icon(Icons.search_rounded),
                              SizedBox(width: 10,),
                              Text("Search Your Favrouite Food Here"),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 50,
                    width: 50,
                    color: Colors.white,
                    child: const Center(child: Text("All",style: TextStyle(fontWeight: FontWeight.bold),)),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 50,
                    width: 50,
                    color: Colors.white,
                    child: const Center(child: Text("FRUITS",style: TextStyle(fontWeight: FontWeight.bold),)),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    height: 90,
                    width: 90,
                    color: Colors.white,
                    child: const Center(child: Text("VEGETABLES",style: TextStyle(fontWeight: FontWeight.bold),)),
                  ),
                ],
              ),
               Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(margin: EdgeInsets.all(10),
                          child: Text("FOOD",style: TextStyle(fontWeight: FontWeight.bold),),),
                      Container(margin: EdgeInsets.all(10),
                        child: Text("view all >",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.greenAccent),),)
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children:List.generate(fruits.length, (index) =>     InkWell(
                        onTap: () {
                          cart.add(fruits[index]);
                        },
                        child: Container( height: 200,
                          width: 150,
                          color: Colors.grey.shade100,
                          padding: EdgeInsets.all(8),
                          margin: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 120,
                                width: 150,
                                child: Image.asset("${fruits[index]["image"]}",fit: BoxFit.fill,),
                              ),
                              Text("${fruits[index]["name"]}",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("${fruits[index]["place"]}"),
                              Row(
                                children: [
                                  Text("\$ ${fruits[index]["price"]}"),
                                  Spacer(),
                                  Icon(Icons.add),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),)
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                        children:List.generate(veg.length, (index) =>     InkWell(
                          onTap: () {
                            cart.add(veg[index]);
                          },
                          child: Container( height: 200,
                            width: 150,
                            color: Colors.grey.shade100,
                            padding: EdgeInsets.all(8),
                            margin: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 120,
                                  width: 150,
                                  child: Image.asset("${veg[index]["image"]}",fit: BoxFit.fill,),
                                ),
                                Text("${veg[index]["name"]}",style: TextStyle(fontWeight: FontWeight.bold),),
                                Text("${veg[index]["place"]}"),
                                Row(
                                  children: [
                                    Text("\$ ${veg[index]["price"]}"),
                                    Spacer(),
                                    Icon(Icons.add),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),)
                    ),
                  )
                ],
              ),
            ],
          ),
    ),);
  }
}
