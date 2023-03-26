import 'package:cartoon_api/details_Screen.dart';
import 'package:cartoon_api/provider/cartoons_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
    context.read<CartoonsProvider>().getCartoons();
  }

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<CartoonsProvider>();
    var response = provider.data;

    return Scaffold(
      appBar: AppBar(
        title: Text("All Cartoons",style: TextStyle(color: Colors.white),),
      ),
      body: response==null?
      const Center(child: CircularProgressIndicator())
      : ListView.separated(
          itemBuilder: (context,index){
            return Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(4, 8), // Shadow position
                  ),
                ],),
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(left: 40,right: 40,top: 30),
              child:
              Column(
              children: [
                ClipRRect(
                  borderRadius:BorderRadius.vertical(top: Radius.circular(15)) ,
                  child: Image.network(response[index].image ?? "",width: 250,) ,
                ),
                SizedBox(height: 8,),
                Text(response[index].title ?? "null",style: TextStyle(fontSize: 20),),
                SizedBox(height: 8,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                        Row(
                          children: [
                            Text("Realesed year : ",style: TextStyle(fontSize: 13),),
                            Text(response[index].year.toString() ?? "null",style: TextStyle(fontSize: 13),),
                          ],
                        ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Episodes : ",style: TextStyle(fontSize: 13),),
                            Text(response[index].episodes.toString() ?? "null",style: TextStyle(fontSize: 13),),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.star,color: Colors.yellow,),
                            Icon(Icons.star,color: Colors.yellow,),
                            Icon(Icons.star,color: Colors.yellow,),
                            Icon(Icons.star,color: Colors.yellow,),
                            Icon(Icons.star,color: Colors.grey,),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    ElevatedButton(onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(index: index,),
                        ),
                      );
                    },
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          fixedSize: MaterialStateProperty.all(Size(150, 40))
                        ),
                        child:
                    Text("see more",style: TextStyle(color: Colors.white,fontSize: 20),))
                  ],
                )
              ],
            ));
          },
      separatorBuilder:  (context, index) => const SizedBox(height: 0),
      itemCount: response.length,),


    );
  }


}
