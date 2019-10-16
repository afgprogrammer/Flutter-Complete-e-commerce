import 'package:day16_shopping/helpers/helper.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<Widget> _categoriesItems = [];

  @override
  Widget build(BuildContext context) {
    state(context).categories.forEach((f) {
      _categoriesItems.add(Container(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(f.title,
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: f.items.length,
                itemBuilder: (context, index) {
                  return CategoryCard(
                    image: f.items[index].image,
                    title: f.items[index].title,
                  );
                },
              ),
            )
          ],
        ),
      ));
    });

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: _categoriesItems,
    );
  }
}

class CategoryCard extends StatelessWidget {
  CategoryCard({Key key, this.image, this.title, this.tag}) : super(key: key);

  final String image;
  final String title;
  final String tag;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2.2,
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.0),
              ])),
          child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              )),
        ),
      ),
    );
  }
}
