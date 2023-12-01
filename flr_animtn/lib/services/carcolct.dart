import 'package:flr_animtn/model/car_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';



class  CarService {
  List<CarModel> fetchCars(BuildContext context) {
    return [
      CarModel(
        title: AppLocalizations.of(context)!.astontitle,
        price: '1.50 - 4.40 Cr',
        img: 'aston.png',
        seater: '4',
        details: AppLocalizations.of(context)!.astondetails,
      ),
      CarModel(
        seater: '2',
        title: AppLocalizations.of(context)!.bmwtitle,
        price: '90.90 Lakh',
        img: 'z4.png',
        details: AppLocalizations.of(context)!.bmwdetails,
      ),
      CarModel(
        seater: '5',
        title: AppLocalizations.of(context)!.bentlytitle,
        price: '5.56 Cr',
        img: 'bentley.png',
        details: AppLocalizations.of(context)!.bentlydetails,
      ),
      CarModel(
        seater: '5',
        title: AppLocalizations.of(context)!.lamborginititle,
        price: '4.18 - 4.22 C',
        img: 'urus3.png',
        details: AppLocalizations.of(context)!.lamborginidetails,
      ),
      CarModel(
        seater: '5',
        title: AppLocalizations.of(context)!.volvotitle,
        price: '98.50 Lakh',
        img: 'volvoxc90.png',
        details: AppLocalizations.of(context)!.volvodetails,
      ),
      CarModel(
        seater: '5',
        title: AppLocalizations.of(context)!.rolsroycettitle,
        price: '8.99 - 10.48 Cr',
        img: 'rolls.png',
        details: AppLocalizations.of(context)!.rolsroycedetails,
      ),
      
    ];
  }
}
