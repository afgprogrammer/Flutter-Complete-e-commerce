import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  final String? title;
  final String? image;
  final String? tag;

  const CategoryPage({Key? key, this.title, this.image, this.tag}) : super(key: key);

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Hero(
              tag: widget.tag!,
              child: Material(
                child: Container(
                  height: 360,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.image!),
                      fit: BoxFit.cover
                    )
                  ),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        colors: [
                          Colors.black.withOpacity(.8),
                          Colors.black.withOpacity(.1),
                        ]
                      )
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 40,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.arrow_back_ios, color: Colors.white,), 
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                FadeInUp(duration: Duration(milliseconds: 1200), child: IconButton(
                                  icon: Icon(Icons.search, color: Colors.white,), onPressed: () {},
                                )),
                                FadeInUp(duration: Duration(milliseconds: 1200), child: IconButton(
                                  icon: Icon(Icons.favorite, color: Colors.white,), onPressed: () {},
                                )),
                                FadeInUp(duration: Duration(milliseconds: 1300), child: IconButton(
                                  icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: () {},
                                )),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        FadeInUp(duration: Duration(milliseconds: 1200), child: Text(widget.title!, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 40),))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  FadeInUp(duration: Duration(milliseconds: 1400), child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("New Product", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
                      Row(
                        children: <Widget>[
                          Text("View More", style: TextStyle(color: Colors.grey),),
                          SizedBox(width: 5,),
                          Icon(Icons.arrow_forward_ios, size: 11, color: Colors.grey,)
                        ],
                      ),
                    ],
                  )),
                  SizedBox(height: 20,),
                  FadeInUp(duration: Duration(milliseconds: 1500), child:  makeProduct(image: 'assets/images/beauty-1.jpg', title: 'Beauty', price: '100\$')),
                  FadeInUp(duration: Duration(milliseconds: 1600), child:  makeProduct(image: 'assets/images/clothes-1.jpg', title: 'Clothes', price: '100\$')),
                  FadeInUp(duration: Duration(milliseconds: 1700), child:  makeProduct(image: 'assets/images/glass.jpg', title: 'Glass', price: '100\$')),
                  FadeInUp(duration: Duration(milliseconds: 1800), child:  makeProduct(image: 'assets/images/perfume.jpg', title: 'Perfume', price: '100\$')),
                  FadeInUp(duration: Duration(milliseconds: 1900), child:  makeProduct(image: 'assets/images/person.jpg', title: 'Person', price: '100\$')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget makeProduct({image, title, price}) {
    return Container(
      height: 200,
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover
        )
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.1),
            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FadeInUp(duration: Duration(milliseconds: 1400), child: Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.favorite_border, color: Colors.white,),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeInUp(duration: Duration(milliseconds: 1500), child: Text(title, style: TextStyle(color: Colors.white, fontSize: 20),)),
                    FadeInUp(duration: Duration(milliseconds: 1500), child: Text(price, style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)),
                  ],
                ),
                FadeInUp(duration: Duration(milliseconds: 2000), child: Container(
                  width: 40,
                  height: 40,
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white
                  ),
                  child: Center(
                    child: Icon(Icons.add_shopping_cart, size: 18, color: Colors.grey[700],),
                  )
                ))
              ],
            ),
          ],
        ),
      )
    );
  }
}