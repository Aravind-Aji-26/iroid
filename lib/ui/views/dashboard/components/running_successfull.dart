import 'package:flutter/material.dart';
import 'package:iroid/model/home_model.dart';

import '../../../../ui_helpers.dart';

class TrendingTrailers extends StatelessWidget {
  final Section2? section2;
  const TrendingTrailers({
    super.key,
    this.section2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            section2?.title ?? '',
            style: const TextStyle(
              color: Color(0xFF313131),
              fontSize: 18,
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w700,
            ),
          ),
          height_10,
          SizedBox(
            height: 120,
            child: ListView.builder(
              itemCount: section2?.data?.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: Image.network(
                  section2?.data?[index].media ?? '',
                  fit: BoxFit.fill,
                  width: 251,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
