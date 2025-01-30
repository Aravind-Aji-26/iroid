import 'package:flutter/material.dart';

import '../../../../model/home_model.dart';
import '../../../../ui_helpers.dart';

class TopRatedMovies extends StatelessWidget {
  final List<BannerModel>? movies;
  const TopRatedMovies({
    super.key, this.movies,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment:  CrossAxisAlignment.start,
        children: [
          const Text(
            'Top Rated Movies',
            style: TextStyle(
              color: Color(0xFF313131),
              fontSize: 18,
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w700,
            ),
          ),
          height_10,
          SizedBox(
            height: 130,
            child: ListView.builder(
              itemCount: movies?.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: Image.network(movies?[index].image ?? '',fit: BoxFit.fill,   width: 108,),
              ),),
          )
        ],
      ),
    );
  }
}