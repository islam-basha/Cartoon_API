import 'package:cartoon_api/provider/cartoons_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatefulWidget {
  int index;
   DetailsScreen({Key? key,required this.index}) : super(key: key);

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  _DetailsScreenState();


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
      appBar: AppBar(title: Text(response![widget.index].title.toString()),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(40)),
              color: Colors.white,
              boxShadow: [
              BoxShadow(
              color: Colors.grey,
              blurRadius: 4,
              offset: Offset(4, 8), // Shadow position
              ),]),
            child: Column(
              children: [
                SizedBox(height: 80,),
                Text(response![widget.index].title.toString(),
                style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect( borderRadius:BorderRadius.all( Radius.circular(10)) ,
                        child:  Image.network(response?[widget.index].image.toString()  ?? "",width: 120,),),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Episodes : ",
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                              Text(response![widget.index].episodes.toString(),
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Realesed year : ",
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                              Text(response![widget.index].year.toString(),
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("The creator : ",
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                              Text(response![widget.index].creator.toString(),
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Type : ",
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                              Text(response![widget.index].genre.toString(),
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Rating : ",
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                              Text(response![widget.index].rating.toString(),
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Lenght : ",
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                              Text(response![widget.index].runtimeInMinutes.toString(),
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                              Text("m",
                                style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                            ],
                          ),
                        ],
                      )

                    ],
                  ),
                ),
                SizedBox(height: 40,),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("   Description :", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                SizedBox(height: 10,),
                Text("It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
                    style: TextStyle(fontSize: 16,)),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
