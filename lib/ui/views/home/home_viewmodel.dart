import 'package:stacked/stacked.dart';

import 'home_view.dart';

class HomeViewModel extends BaseViewModel {
  int currentIndex = 0;

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
      default:
        return const HomeView();
    }
  }

  void setCurrentIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
