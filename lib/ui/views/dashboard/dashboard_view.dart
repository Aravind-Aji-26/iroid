import 'package:flutter/material.dart';
import 'package:iroid/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'components/carousel.dart';
import 'components/categories.dart';
import 'components/concerts_near.dart';
import 'components/new_releases.dart';
import 'components/requirements.dart';
import 'components/running_successfull.dart';
import 'components/top_rated_movies.dart';
import 'components/trending_horizontal.dart';
import 'dashboard_viewmodel.dart';

class DashboardView extends StackedView<DashboardViewModel> {
  const DashboardView({Key? key}) : super(key: key);

  @override
  void onViewModelReady(DashboardViewModel viewModel) {
    // TODO: implement onViewModelReady
    viewModel.getHomeData();
    super.onViewModelReady(viewModel);
  }

  @override
  Widget builder(
    BuildContext context,
    DashboardViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
      appBar: AppBar(leadingWidth: 35,
        leading: Row(
          children: [
            width_10,
            Image.asset("assets/images/icon_menu.png",width: 25,height: 18,),
          ],
        ),
        actions: [
          Image.asset("assets/images/icon_notification.png",width: 21,height: 30,),
          width_30,
          Image.asset("assets/images/icon_messages.png",width: 29,height: 28,),
          width_10
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: Column(
            children: [
              CarouselHome(
                banners: viewModel.homeData?.data?.banners ?? [],
              ),
              height_20,
              Categories(categories: viewModel.homeData?.data?.category,),
              height_20,
              Menu(menus: viewModel.homeData?.data?.menus,),
              height_20,
              TrendingHorizontal(sections: viewModel.homeData?.data?.section1,),
              height_20,
              NewReleases(
                viewModel: viewModel,section: viewModel.homeData?.data?.section4,
              ),
              height_20,
              TopRatedMovies(movies: viewModel.homeData?.data?.section5,),
              height_10,
              ConcertsNear(section: viewModel.homeData?.data?.section3,),
              height_20,
              TrendingTrailers(section2: viewModel.homeData?.data?.section2,),
              height_20,
            ],
          ),
        ),
      ),
      bottomNavigationBar: buildBottomNavBar(context, viewModel),
    );
  }

  Theme buildBottomNavBar(BuildContext context, DashboardViewModel viewModel) {
    return Theme(
      data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: Colors.white,
          // sets the active color of the `BottomNavigationBar` if `Brightness` is light
          primaryColor: Color(0x08AA40),
          textTheme: Theme.of(context).textTheme.copyWith(
                  bodySmall: const TextStyle(
                fontFamily: 'sf_pro',
                fontSize: 8,
                color: Color(0x08AA40),
                fontWeight: FontWeight.w500,
              ))),
      child: BottomNavigationBar(
        currentIndex: viewModel.currentIndex,
        backgroundColor: Colors.white,
        elevation: 10,
        onTap: viewModel.setCurrentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedLabelStyle: const TextStyle(
          fontFamily: 'sf_pro',
          fontSize: 8,
          color: Color(0x08AA40),
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: const TextStyle(
          fontFamily: 'sf_pro',
          fontSize: 8,
          color: Color(0x08AA40),
          fontWeight: FontWeight.w500,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/home_selected.png",
              height: 27,
              width: 27,
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/home_selected.png",
                height: 22,
                width: 19,
              ),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/icon_search.png",
              height: 27,
              width: 27,
            ),
            activeIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/icon_search.png",
                height: 22,
                width: 19,
              ),
            ),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/icon_fav.png",
              height: 27,
              width: 27,
            ),
            activeIcon: Image.asset(
              "assets/images/icon_fav.png",
              height: 22,
              width: 19,
            ),
            label: 'Order',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/images/icon_profile.png",
              height: 27,
              width: 27,
            ),
            activeIcon: Image.asset(
              "assets/images/icon_profile.png",
              height: 22,
              width: 19,
            ),
            label: 'Cart',
          ),
        ],
      ),
    );
  }

  @override
  DashboardViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      DashboardViewModel();
}
