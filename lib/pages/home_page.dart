import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
 static final String id="home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  get image => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/image_3.jpg"),
                  fit: BoxFit.cover
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin:Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.4),
                    ]

                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,

                  children: [
Text("Best Hotels Ever",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold,),textAlign: TextAlign.center,),
                    SizedBox(height: 15,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search,color: Colors.grey,),
                          hintText:"search fo hotels....",
                          hintStyle: TextStyle(color: Colors.grey,fontSize: 18)
                        ),
                      ),
                    ),
                    SizedBox(height: 15,)
                  ],

                ),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Best Hotels",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.grey[800],fontSize: 20),),
                  SizedBox(height: 10,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image:'assets/images/image_3.jpg',title:"Hotel1"),
                        makeItem(image:'assets/images/image_1.jpg',title:"Hotel2"),
                        makeItem(image:'assets/images/image_3.jpg',title:"Hotel3"),
                        makeItem(image:"assets/images/image_1.jpg",title:"Hotel4"),



                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Luxury Hotels",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.grey[800],fontSize: 20),),
                  SizedBox(height: 10,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image:'assets/images/image_1.jpg',title:"Hotel1"),
                        makeItem(image:'assets/images/image_1.jpg',title:"Hotel2"),
                        makeItem(image:'assets/images/image_3.jpg',title:"Hotel3"),
                        makeItem(image:"assets/images/image_1.jpg",title:"Hotel4"),



                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text("Resort Hotels",style: TextStyle(fontWeight:FontWeight.bold,color: Colors.grey[800],fontSize: 20),),
                  SizedBox(height: 10,),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(image:'assets/images/image_1.jpg',title:"Hotel1"),
                        makeItem(image:'assets/images/image_1.jpg',title:"Hotel2"),
                        makeItem(image:'assets/images/image_3.jpg',title:"Hotel3"),
                        makeItem(image:"assets/images/image_1.jpg",title:"Hotel4"),



                      ],
                    ),
                  ),


                ],
              ),
            )
          ],
        ),
      ),
    );
  }
Widget makeItem({image,title,icon}) {
  return AspectRatio(aspectRatio: 1/ 1,
    child: Container(
     margin: EdgeInsets.only(right: 15),
     decoration: BoxDecoration(
     borderRadius: BorderRadius.circular(20),
       image: DecorationImage(
         image: AssetImage(image),
         fit: BoxFit.cover
       )
     ),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.2),
            ]
          )
        ),
        child: Align(
          alignment: Alignment.bottomLeft,
      child: Row(
        children: [
          Text(title,style: TextStyle(color: Colors.white,fontSize: 20),
          ),
          SizedBox(width: 60,),
          Icon(Icons.favorite,color: Colors.red,),

        ],
      ),

        ),
        
        
      ),
      

    ),

  );
}
}
