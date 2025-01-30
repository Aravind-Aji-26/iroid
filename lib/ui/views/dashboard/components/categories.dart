import 'package:flutter/material.dart';

import '../../../../model/home_model.dart';

class Menu extends StatelessWidget {
  final List<MenuModel>? menus;
  const Menu({
    super.key, this.menus,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        height: 140,
        child: ListView.builder(
          itemCount: menus?.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
              height: 134,
              width: 103,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image:  DecorationImage(
                      image: NetworkImage(menus?[index].image ?? ''),
                      fit: BoxFit.fill)),
            ),
          ),
        ),
      ),
    );
  }
}