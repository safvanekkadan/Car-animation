import 'package:flr_animtn/model/car_model.dart';
import 'package:flr_animtn/view/details/widgets/thumb_icon.dart';
import 'package:flutter/material.dart';


class Details extends StatelessWidget {

  final CarModel car;
  Details({ required this.car });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ClipRRect(
              child:Hero(
                tag:'car-img-${car.img}' ,
                child: Image.asset(
                  'images/${car.img}',
                  height: 360,
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              )
            ),
            SizedBox(height: 30),
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
                '${car.seater} night stay for only \$${car.price}',
                style: TextStyle(letterSpacing: 1)
              ),
              trailing: HeartIcon()
            ),
            // Padding(
            //   padding: EdgeInsets.all(18),
            //   child: Text(
            //     lipsum.createText(numParagraphs: 1, numSentences: 3),
            //     style: TextStyle(
            //       color: Colors.grey[600],
            //       height: 1.4
            //     )
            //   )
            // ),
          ],
        ),
      )
    );
  }
}
