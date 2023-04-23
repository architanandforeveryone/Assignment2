import 'package:assignment2/models/TrendingPost.dart';
import 'package:get/get.dart';

class TrendingController extends GetxController {
  var TrendingItems = List<TrendingPost>.empty(growable: true).obs;

  @override
  void onInit() {
    fetchgamedetails();
    super.onInit();
  }

  void fetchgamedetails() async {
    await Future.delayed(const Duration(seconds: 1));
    var serverresponse = [
      TrendingPost(image: 'images/para.jpg', like: false, profilepic: 'images/profile.jpg', username: 'Archit Anand', time: '2 min ago')
    ];

    TrendingItems.value = serverresponse;
  }

}
