import 'package:assignment2/Controller/storyController.dart';
import 'package:flutter/material.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get.dart';

class StoryList extends StatelessWidget {
  // const StoryList({Key? key}) : super(key: key);

  final storyController = Get.put(StoryController());
  @override
  Widget build(BuildContext context) {
    return  GetX<StoryController>(
      builder: (controller) {
        return ListView.separated(
            scrollDirection: Axis.horizontal,
              itemCount: storyController.storyItems.length,
              shrinkWrap: true,
              itemBuilder: (context,index){
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.grey[800],
              ),
              height:800,
              width: 170,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.asset(storyController.storyItems[index].image,
                  fit: BoxFit.cover,
                ),
              ),
            );
          }, separatorBuilder: (BuildContext context, int index) { return const SizedBox(width: 10,);},
        );
      }
    );
  }
}
