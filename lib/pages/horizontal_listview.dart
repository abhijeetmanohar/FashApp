import 'package:flutter/material.dart';

class HorizontalListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_caption: 'T-shirt',
            image_location: 'assets/images/tshirt.jpg',
          ),
          Category(
            image_caption: 'Jeans',
            image_location: 'assets/images/jeans.jpg',
          ),
          Category(
            image_caption: 'Jackets',
            image_location: 'assets/images/jackets.jpg',
          ),
          Category(
            image_caption: 'Sweaters',
            image_location: 'assets/images/sweater.jpg',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({
    this.image_location,
    this.image_caption
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(image_location, width: 100.0, height: 80.0,),
            subtitle: Text(image_caption),
          ),
        ),
      ),
    );
  }
}
