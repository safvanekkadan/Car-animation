import 'package:flr_animtn/model/car_model.dart';
import 'package:flutter/material.dart';



class  CarService {
  List<CarModel> fetchCars(BuildContext context) {
    return [
      CarModel(
        title: "AppLocalizations.of(context)!.burgertitle",
        price: '100',
        img: 'burger.jpg',
        seater: '5',
        details: "AppLocalizations.of(context)!.burgerdetails",
      ),
      CarModel(
        seater: '5',
        title: "AppLocalizations.of(context)!.broasttitle",
        price: '450',
        img: 'broasted_chicken.jpg',
        details: "AppLocalizations.of(context)!.broastdetails",
      ),
      CarModel(
        seater: '5',
        title: "AppLocalizations.of(context)!.friedchickentitle",
        price: '1000',
        img: 'korean_friedchicken.jpg',
        details: "AppLocalizations.of(context)!.friedchickendetails",
      ),
      CarModel(
        seater: '5',
        title: "AppLocalizations.of(context)!.beefsteaktitle",
        price: '750',
        img: 'beef_steak.jpg',
        details: "AppLocalizations.of(context)!.beefsteakdetails",
      ),
    ];
  }
}
