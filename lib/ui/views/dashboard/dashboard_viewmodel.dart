import 'package:flutter/cupertino.dart';
import 'package:iroid/api_service.dart';
import 'package:iroid/model/home_model.dart';
import 'package:stacked/stacked.dart';

import '../home/home_view.dart';

class DashboardViewModel extends BaseViewModel {
  int currentIndex = 0;
  int sliderIndex = 0;

  HomeModel? homeData;


  Future<HomeModel?> getHomeData() async {
    final response = await APIService().get();
    homeData = HomeModel.fromJson(response!);
    print(homeData?.data?.banners);
    notifyListeners();
    return null;
  }

  setSliderIndex(int index) {
    sliderIndex = index;
    notifyListeners();
  }



  setIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }

  switchView() {
    switch (currentIndex) {
      case 0:
        return const HomeView();
      case 1:
        return const HomeView();
      case 2:
        return const HomeView();
      case 3:
        return const HomeView();
      case 4:
        return const HomeView();
      default:
        return const HomeView();
    }
  }

  void setCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
