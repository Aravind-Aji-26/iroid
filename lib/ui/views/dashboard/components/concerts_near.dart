import 'package:flutter/material.dart';

import '../../../../model/home_model.dart';
import '../../../../ui_helpers.dart';

class ConcertsNear extends StatelessWidget {
  final Section? section;
  const ConcertsNear({
    super.key, this.section,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        crossAxisAlignment:  CrossAxisAlignment.start,
        children: [
           Text(
            section?.title ?? '',
            style: const TextStyle(
              color: Color(0xFF313131),
              fontSize: 18,
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w700,
            ),
          ),
          height_10,
          SizedBox(
            height: 286,
            child: ListView.builder(
              itemCount: section?.data?.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: Image.network(section?.data?[index].image ?? '',fit: BoxFit.fill,   width: 236,),
              ),),
          )
        ],
      ),
    );
  }
}