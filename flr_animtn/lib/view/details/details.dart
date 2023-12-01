import 'package:animated_widgets/animated_widgets.dart';
import 'package:flr_animtn/constants/colors.dart';
import 'package:flr_animtn/constants/sizedbox.dart';
import 'package:flr_animtn/model/car_model.dart';
import 'package:flr_animtn/view/details/widgets/likeicons.dart';
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
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon:const Icon(Icons.arrow_back,
        color: cWhiteColor,)),

      ),
      extendBodyBehindAppBar: true,
      body: Container(height: MediaQuery.of(context).size.height*1/1,
        color: cBlackColor,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ShakeAnimatedWidget(
                alignment: Alignment.topRight,
              shakeAngle: Rotation.deg(x: 1,y: 2,z: 2),
               duration:const Duration(seconds: 7) ,
               curve: Curves.linear,
                child: ClipRRect(
                  child:Hero(
                    tag:'tag${car.img}' ,
                    child: Image.asset(
                      'assets/${car.img}',
                      height: 290,
                     // fit: BoxFit.cover,
                      alignment: Alignment.bottomCenter,
                    ),
                  )
                ),
              ),
              cHeight30,
              ListTile(
                title: Text(
                  car.title,
                  style:const  TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white
                  )
                ),
                subtitle: Text(
                  '${car.seater} seat car you can explore ₹${car.price}',
                  style: const TextStyle(letterSpacing: 1,
                  color: cWhiteColor)
                ),
                trailing: const LOL()
              ),
              Padding(
                padding: const EdgeInsets.all(18),
                child: Text(
                  car.details,
                   style:const  TextStyle(
                    color: cWhiteColor,
                    height: 1.4
                   ),
                  ),
                ),
            ],
          ),
        ),
      )
    );
  }
}
