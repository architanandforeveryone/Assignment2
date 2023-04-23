import 'package:assignment2/Controller/storyController.dart';
import 'package:assignment2/Controller/trending_controller.dart';
import 'package:assignment2/story_list.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final trendingController = Get.put(TrendingController());
    final storyController = Get.put(StoryController());
    return Scaffold(
      backgroundColor:Colors.black,
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              children: [
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Container(
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("images/profile.jpg",),
                          ),
                          SizedBox(width: 10,),
                          Column(
                            children: [
                              Text("Archit Anand",style: TextStyle(color: Colors.white,fontSize: 15),),
                              Text("@archit_anand",style: TextStyle(color: Colors.grey,fontSize: 10),)
                            ],
                          )

                        ],
                      ),
                    ),
                    CircleAvatar(
                      child: Icon(Icons.search,),
                    )
                  ]
                ),
                SizedBox(height: 25,),
                Row(
                  children: [
                    Text("Stories",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w400,),),
                    SizedBox(width: 50,)
                  ],
                ),
                SizedBox(height: 15,),
                Container(
                  height: 140,
                  child:StoryList(),
                  //   child: Container(
                  //      decoration: BoxDecoration(
                  //        borderRadius: BorderRadius.circular(24),
                  //        color: Colors.grey[800],
                  //      ),
                  //      height:800,
                  //      width: 170,
                  //      child: ClipRRect(
                  //        borderRadius: BorderRadius.circular(24),
                  //        child: Image.asset("images/story1.jpg",
                  //          fit: BoxFit.cover,
                  //        ),
                  //      ),
                  //    ),
                     // SizedBox(width: 15,),
                     // Container(
                     //   decoration: BoxDecoration(
                     //     borderRadius: BorderRadius.circular(24),
                     //     color: Colors.grey[800],
                     //   ),
                     //   height:800,
                     //   width: 170,
                     //   child: ClipRRect(
                     //     borderRadius: BorderRadius.circular(24),
                     //     child: Image.asset("images/story2.jpg",
                     //       fit: BoxFit.cover,
                     //     ),
                     //   ),
                     // ),
                     // SizedBox(width: 15,),
                     // Container(
                     //   decoration: BoxDecoration(
                     //     borderRadius: BorderRadius.circular(24),
                     //     color: Colors.grey[800],
                     //   ),
                     //   height:800,
                     //   width: 170,
                     //   child: ClipRRect(
                     //     borderRadius: BorderRadius.circular(24),
                     //     child: Image.asset("images/story3.jpg",
                     //       fit: BoxFit.cover,
                     //     ),
                     //   ),
                     // // ),
                     // SizedBox(width: 15,),
                     // Container(
                     //   decoration: BoxDecoration(
                     //     borderRadius: BorderRadius.circular(24),
                     //     color: Colors.grey[800],
                     //   ),
                     //   height:800,
                     //   width: 170,
                     //   child: ClipRRect(
                     //     borderRadius: BorderRadius.circular(24),
                     //     child: Image.asset("images/story4.jpg",
                     //       fit: BoxFit.cover,
                     //     ),
                     //   ),
                     // ),
                   // ],
                  ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Trending",style: TextStyle(fontSize: 40,color: Colors.white),),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Text("More",style: TextStyle(fontSize: 20,color: Colors.yellow),),
                              Icon(Icons.arrow_right,color: Colors.yellow,)
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.grey[800],
                  ),
                  height: 370,
                  width: 350,
                  child: Column(
                    children:[
                      SizedBox(height: 10,),
                    Stack(
                      alignment: Alignment(1,1),
                      children: [
                        Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Colors.grey[800],
                        ),
                          height: 200,
                          width: 300,
                          child:ClipRRect(
                            borderRadius: BorderRadius.circular(24),
                            child: Image.asset("images/para.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){},
                          child: Container(
                            height: 30,
                            width:65,
                            color: Colors.yellow,
                            child: Row(
                              children: [
                                Icon(Icons.thumb_up_alt_sharp,color: Colors.grey,),
                                SizedBox(width: 4,),
                                Text('Like',style: TextStyle(fontSize: 15),)
                              ],
                            )
                          ),
                        )
                      ],
                    ),
                      SizedBox(height: 9,),
                      Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage("images/profile.jpg",),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              children: [
                                Text("Archit Anand",style: TextStyle(color: Colors.white,fontSize: 15),),
                                Text("2 min ago",style: TextStyle(color: Colors.grey,fontSize: 10,),)
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 14,),
                      Row(
                        children: [
                          SizedBox(width: 10,),
                          Text("It was a bautiful experience ,today I did paragliding.",style:TextStyle(color: Colors.white70),),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(width: 10,),
                          Text("I enjoyed a lot.",style:TextStyle(color: Colors.white70),),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          SizedBox(width: 10,),
                          Text("#adventure #paragliding #fun #journey",style:TextStyle(color: Colors.white70),),
                        ],
                      ),
                    ]
                  ),
                ),

                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Discover",style: TextStyle(fontSize: 40,color: Colors.white),),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(height: 20,),
                          Row(
                            children: [
                              Text("More",style: TextStyle(fontSize: 20,color: Colors.yellow),),
                              Icon(Icons.arrow_right,color: Colors.yellow,)
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),


                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: Colors.grey[800],
                  ),
                  height: 370,
                  width: 350,
                  child: Column(
                      children:[
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(24),
                            color: Colors.grey[800],
                          ),
                          height: 200,
                          width: 300,
                          child:ClipRRect(
                            borderRadius: BorderRadius.circular(24),
                            child: Image.asset("images/discover.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 9,),
                       Obx(() =>Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(trendingController.TrendingItems[trendingController.TrendingItems.length-1].profilepic,),
                              ),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Text(trendingController.TrendingItems[trendingController.TrendingItems.length-1].username,style: TextStyle(color: Colors.white,fontSize: 15),),
                                  Text(trendingController.TrendingItems[trendingController.TrendingItems.length-1].time,style: TextStyle(color: Colors.grey,fontSize: 10,),)
                                ],
                              )
                            ],
                          ),
                        ),),
                        SizedBox(height: 14,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("Lets look at the beauty of the nature. WOW!!!",style:TextStyle(color: Colors.white70),),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("What a visual.",style:TextStyle(color: Colors.white70),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            SizedBox(width: 10,),
                            Text("#adventure #paragliding #fun #journey",style:TextStyle(color: Colors.white70),),
                          ],
                        ),
                      ]
                  ),
                ),
    ],
      ),
    ])));
  }
}
