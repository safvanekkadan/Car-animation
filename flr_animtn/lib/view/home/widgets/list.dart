import 'package:flr_animtn/controller/car_provider.dart';
import 'package:flr_animtn/controller/locale_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CarList extends StatefulWidget {
  const CarList({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CarListState createState() => _CarListState();
}

class _CarListState extends State<CarList> {
  final Tween<Offset> _offset = Tween(begin: const Offset(1, 1), end: const Offset(0, 0));

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<CarCollectionProvider>(context, listen: false).fetchCollection(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LocaleProvider>(
      builder: (context, value, child) {
        if (value.locale != LocaleProvider.previousLocale) {
          Provider.of<CarCollectionProvider>(context, listen: false).fetchCollection(context);
          LocaleProvider.previousLocale = value.locale;
        }
        return AnimatedList(
            key: Provider.of<CarCollectionProvider>(context).listKey,
            initialItemCount:
                Provider.of<CarCollectionProvider>(context).carPackageTiles.length,
            itemBuilder: (context, index, animation) {
              if (index >=
                  Provider.of<CarCollectionProvider>(context).carPackageTiles.length) {
                return Container();
              }
              return SlideTransition(
                position: animation.drive(_offset),
                child:
                    Provider.of<CarCollectionProvider>(context).carPackageTiles[index],
              );
            });
      },
    );
  }
}
