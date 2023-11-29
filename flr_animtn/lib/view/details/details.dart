import 'package:flr_animtn/model/car_model.dart';
import 'package:flr_animtn/view/details/widgets/thumb_icon.dart';
import 'package:flutter/material.dart';


class Details extends StatelessWidget {

  final CarModel car;
  const Details({super.key,  required this.car });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ClipRRect(
              child:Hero(
                tag:'tag${car.img}' ,
                child: Image.asset(
                  'assets/${car.img}',
                  height: 290,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              )
            ),
            const SizedBox(height: 30),
            ListTile(
              title: Text(
                car.title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.grey[800]
                )
              ),
              subtitle: Text(
                '${car.seater} seat car just explore ₹${car.price}',
                style: const TextStyle(letterSpacing: 1)
              ),
              trailing: const LOL()
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: Text(
                car.details,
                 style: TextStyle(
                  color: Colors.grey[600],
                  height: 1.4
                 ),
                ),
              ),
          ],
        ),
      )
    );
  }
}
