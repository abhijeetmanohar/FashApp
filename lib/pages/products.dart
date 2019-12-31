import 'package:flutter/material.dart';
import 'package:fash_app/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var ProductList = [
    {
      "name": "Shorts",
      "image": "assets/images/shorts.jpg",
      "old_price": "120",
      "new_price": "85",
    },
    {
      "name": "Blazer",
      "image": "assets/images/blazer.jpg",
      "old_price": "400",
      "new_price": "85",
    },
    {
      "name": "Red Dress",
      "image": "assets/images/reddress.jpg",
      "old_price": "300",
      "new_price": "85",
    },
    {
      "name": "Caps",
      "image": "assets/images/cap.jpeg",
      "old_price": "45",
      "new_price": "85",
    },
    {
      "name": "Shoes",
      "image": "assets/images/shoes.jpg",
      "old_price": "90",
      "new_price": "85",
    },
    {
      "name": "Sweater",
      "image": "assets/images/sweater.jpg",
      "old_price": "100",
      "new_price": "85",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: ProductList.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Single_Prod(
          productName: ProductList[index]['name'],
          productImage: ProductList[index]['image'],
          productOldPrice: ProductList[index]['old_price'],
          productNewPrice: ProductList[index]['new_price'],
        );
      },
    );
  }
}

class Single_Prod extends StatelessWidget {
  final String productName;
  final String productImage;
  final String productOldPrice;
  final String productNewPrice;

  Single_Prod({
    this.productName,
    this.productImage,
    this.productOldPrice,
    this.productNewPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: productName,
          child: Material(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => new ProductDetails(
                      prodDetailName: productName,
                      prodDetailImg: productImage,
                      prodOldPrice: productOldPrice,
                      prodNewPrice: productNewPrice,
                    )));
              },
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: ListTile(
                      leading: Text(
                        productName,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      title: Text(
                        "\$$productOldPrice",
                        style: TextStyle(fontWeight: FontWeight.w800),
                      ),
                    ),
                  ),
                  child: Image.asset(
                    productImage,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
