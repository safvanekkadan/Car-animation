import 'package:flr_animtn/constants/border.dart';
import 'package:flr_animtn/constants/colors.dart';
import 'package:flr_animtn/view/details/details.dart';
import 'package:flr_animtn/model/car_model.dart';
import 'package:flutter/material.dart';

class CarPackageTile extends StatelessWidget {
  const CarPackageTile({
    super.key,
    required this.context,
    required this.car,
  });

  final BuildContext context;
  final CarModel car;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Details(car:car)));
          },
          contentPadding: const EdgeInsets.all(25),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(car.title,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: cWhiteColor)),
            ],
          ),
          leading: ClipRRect(
            borderRadius: cRadius8,
            child: Hero(
              tag: 'tag${car.img}',
              child: Image.asset('assets/${car.img}', height: 50.0),
            ),
          ),
          trailing: Text(
            '₹${car.price}',
            style: const TextStyle(color: cWhiteColor),
          ),
        ),
      ],
    );
  }
}
