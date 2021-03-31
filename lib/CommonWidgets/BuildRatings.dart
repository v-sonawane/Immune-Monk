import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BuildRatings extends StatelessWidget {

  BuildRatings({@required this.star, @required this.data});
  final double star;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RatingBar.builder(
          initialRating: star,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: false,
          updateOnDrag: false,
          itemCount: 5,
          itemSize: 15.0,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(
            Icons.star,
            color: Colors.amber,
          ),
          onRatingUpdate: (rating) {
            print(rating);
          },
        ),
        SizedBox(width: 5.0,),
        Text(
          "$data",
          style: TextStyle(
              color: Colors.grey[600],
              fontWeight: FontWeight.w500,
              letterSpacing: 0.5,
              fontSize: 13.0
          ),
        ),
      ],
    );
  }
}