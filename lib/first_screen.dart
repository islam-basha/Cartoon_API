import 'package:cartoon_api/home_screen.dart';
import 'package:cartoon_api/provider/cartoons_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {


  @override
  void initState() {
    // TODO: implement initState
    context.read<CartoonsProvider>().getCartoons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<CartoonsProvider>();
    var response = provider.data;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Toony Cartoony :)",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30, top: 20),
            child: TextField(
              textInputAction: TextInputAction.search,
              decoration: InputDecoration(
                hintText: "Search Here ..",
                prefixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.symmetric(vertical: 0),
                hoverColor: Colors.grey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(90.0)),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "  Adventure",
            style: TextStyle(
                fontSize: 23, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  // ClipRRect( borderRadius:BorderRadius.all( Radius.circular(5)) ,
                  //  child:  Image.network(response?[8].image.toString()  ?? "",width: 70,),),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        NetworkImage(response?[8].image.toString() ?? ""),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    response?[8].title.toString() ?? "",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Column(
                children: [
                  // ClipRRect( borderRadius:BorderRadius.all( Radius.circular(5)) ,
                  //   child:  Image.network(response?[7].image.toString()  ?? "",width: 70,),),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        NetworkImage(response?[7].image.toString() ?? ""),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    response?[7].title.toString() ?? "",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Column(
                children: [
                  // ClipRRect( borderRadius:BorderRadius.all( Radius.circular(5)) ,
                  //   child:  Image.network(response?[13].image.toString()  ?? "",width: 70,),),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        NetworkImage(response?[13].image.toString() ?? ""),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    response?[13].title.toString() ?? "",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Column(
                children: [
                  // ClipRRect( borderRadius:BorderRadius.all( Radius.circular(5)) ,
                  //   child:  Image.network(response?[17].image.toString()  ?? "",width: 70,),),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        NetworkImage(response?[17].image.toString() ?? ""),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    response?[17].title.toString() ?? "",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "  Comedy",
            style: TextStyle(
                fontSize: 23, fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          SizedBox(
            height: 10,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            SizedBox(
              width: 70,
              child: Column(
                children: [
                  // ClipRRect( borderRadius:BorderRadius.all( Radius.circular(5)) ,
                  //   child:  Image.network(response?[1].image.toString()  ?? "",width: 70,),),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        NetworkImage(response?[1].image.toString() ?? ""),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    response?[1].title.toString() ?? "",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 70,
              child: Column(
                children: [
                  // ClipRRect( borderRadius:BorderRadius.all( Radius.circular(5)) ,
                  //   child:  Image.network(response?[16].image.toString()  ?? "",width: 70,),),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        NetworkImage(response?[16].image.toString() ?? ""),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    response?[16].title.toString() ?? "",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 70,
              child: Column(
                children: [
                  // ClipRRect( borderRadius:BorderRadius.all( Radius.circular(5)) ,
                  //   child:  Image.network(response?[14].image.toString()  ?? "",width: 70,),),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        NetworkImage(response?[14].image.toString() ?? ""),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    response?[14].title.toString() ?? "",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 70,
              child: Column(
                children: [
                  // ClipRRect( borderRadius:BorderRadius.all( Radius.circular(5)) ,
                  //   child:  Image.network(response?[18].image.toString()  ?? "",width: 70,),),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        NetworkImage(response?[18].image.toString() ?? ""),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    response?[18].title.toString() ?? "",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ]),
          SizedBox(
            height: 20,
          ),
          Text(
            "   Trends!",
            style: TextStyle(
                fontSize: 23, fontWeight: FontWeight.bold, color: Colors.amber),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.amber.shade100,
                      Colors.amber.shade600,
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ],
                ),
                padding: EdgeInsets.all(5),
                // margin: EdgeInsets.only(left: 40,right: 40,top: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(10)),
                      child: Image.network(
                        response?[16].image.toString() ?? "",
                        width: 70,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      response?[16].title.toString() ?? "",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.amber.shade100,
                      Colors.amber.shade600,
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ],
                ),
                padding: EdgeInsets.all(5),
                // margin: EdgeInsets.only(left: 40,right: 40,top: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(10)),
                      child: Image.network(
                        response?[13].image.toString() ?? "",
                        width: 70,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      response?[13].title.toString() ?? "",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                width: 100,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Colors.amber.shade100,
                      Colors.amber.shade600,
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      offset: Offset(4, 8), // Shadow position
                    ),
                  ],
                ),
                padding: EdgeInsets.all(5),
                // margin: EdgeInsets.only(left: 40,right: 40,top: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(10)),
                      child: Image.network(
                        response?[20].image.toString() ?? "",
                        width: 70,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      response?[20].title.toString() ?? "",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ]),
      ),

    );
  }
}
