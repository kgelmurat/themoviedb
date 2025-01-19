import 'package:flutter/material.dart';



// import 'lib/resources/images.dart';
// import 'package:themoviedb/resources/images.dart';

import 'package:themoviedb/resources/images.dart';

class MovieListWidgets extends StatelessWidget {
  const MovieListWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemExtent: 163,
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              Image(image: AssetImage(AppImages.mufasa),),
            ],
          );
        });
  }
}



