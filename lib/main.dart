import 'package:animate_do/animate_do.dart';
import 'package:day16_shopping/Pages/ShopPage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage()
  )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late AnimationController _scaleController;
  late Animation<double> _scaleAnimation;

  bool hide = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _scaleController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800)
    );

    _scaleAnimation = Tween<double>(
      begin: 1.0,
      end: 30.0
    ).animate(_scaleController)..addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: ShopPage()));
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/splash.jpg'),
            fit: BoxFit.cover
          )
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.4),
              ]
            )
          ),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                FadeInUp(duration: Duration(milliseconds: 1000), child: Text("Brand New Perspective", style: TextStyle(color: Colors.white, height: 1.2, fontSize: 40, fontWeight: FontWeight.w900),)),
                SizedBox(height: 8,),
                FadeInUp(duration: Duration(milliseconds: 1300), child: Text("Let's start with our summer collection.", style: TextStyle(color: Colors.grey.shade300, fontSize: 22),)),
                SizedBox(height: 80,),
                InkWell(
                  onTap: () {
                    setState(() {
                      hide = true;
                    });
                    _scaleController.forward();
                  },
                  child: AnimatedBuilder(
                    animation: _scaleController,
                    builder: (context, child) => Transform.scale(
                      scale: _scaleAnimation.value,
                      child: FadeInUp(duration: Duration(milliseconds: 1500), child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(
                          child: hide == false ? Text("Get Start", style: TextStyle(fontWeight: FontWeight.bold),) : Container(),
                        ),
                      )),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                FadeInUp(duration: Duration(milliseconds: 1700), child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(50)
                  ),
                  child: Center(
                    child: Text("Create Account", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                  ),
                )),
                SizedBox(height: 30,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
