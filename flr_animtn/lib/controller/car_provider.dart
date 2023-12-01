
import 'package:flr_animtn/view/home/widgets/carpackagetile.dart';
import 'package:flr_animtn/services/carcolct.dart';
import 'package:flutter/material.dart';

class CarCollectionProvider extends ChangeNotifier{
   final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  List<CarPackageTile> carPackageTiles = [];
  final CarService _carService = CarService();

  Future<void> fetchCollection(BuildContext context) async {
    carPackageTiles.clear();
    final cars = _carService.fetchCars(context);
   //use to introduce delay before each iteration of the loop
    final cc = Future(() {});
    for (final car in cars) {
      await cc;
      await Future.delayed(const Duration(milliseconds: 100));
      // ignore: use_build_context_synchronously
      carPackageTiles.add(CarPackageTile(context: context, car:car));
      listKey.currentState!.insertItem(carPackageTiles.length - 1);
    }
  }
}