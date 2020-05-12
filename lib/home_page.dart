import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import "package:curved_navigation_bar/curved_navigation_bar.dart";

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String assetName = 'assets/images/usa.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            ClipPath(
              clipper: MyClipPer(),
              child: new Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        // Color(0Xff3383CD),
                        // Color(0Xff11249F),
                        Colors.grey[700],
                        Colors.grey[100]
                      ]),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topRight,
                      child: Icon(Icons.menu),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: Stack(
                        children: <Widget>[
                          Image.asset(
                            'assets/images/Blue.png',
                            width: 250,
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.topCenter,
                          ),
                          Positioned(
                            top: 80,
                            left: 260,
                            child: Text(
                              'All you need \nis stay at home',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 19),
                            ),
                          ),
                          // Positioned(
                          //     top: 1,
                          //     left: 230,
                          //     child: Icon(
                          //       Icons.chat,
                          //       color: Colors.white,
                          //       size: 45,
                          //     )),
                          Container(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(
                  color: Color(0xffE5E5E5),
                ),
              ),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.add_location,
                    color: Colors.blue[800],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: DropdownButton(
                      isExpanded: true,
                      underline: SizedBox(),
                      icon: Icon(Icons.keyboard_arrow_down),
                      value: "USA",
                      items: ['USA', 'Iran', 'Uk', 'India']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Case Update\n",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900)),
                            TextSpan(
                                text: "newest update April 30",
                                style: TextStyle(color: Colors.black))
                          ],
                        ),
                      ),
                      Spacer(),
                      Text(
                        'See details',
                        style: TextStyle(
                          color: Color(0xff0044CC),
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 30,
                            color: Color(0xffB7B7B7).withOpacity(.16)),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Counter(
                          color: Color(0xffff8748),
                          number: 1048,
                          title: "Given to",
                        ),
                        Counter(
                          color: Color(0xffff4848),
                          number: 87,
                          title: "Death",
                        ),
                        Counter(
                          color: Color(0xff36c12c),
                          number: 32,
                          title: "Improveds",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Spread 0f Virus",
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                      Text(
                        "See details",
                        style: TextStyle(
                            color: Color(0xff0044CC),
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  // SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    padding: EdgeInsets.all(15),
                    width: double.infinity,
                    height: 178,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 30,
                          color: Color(0xffB7B7B7).withOpacity(.16),
                        ),
                      ],
                    ),
                    child: SvgPicture.asset(
                      assetName,
                      color: Colors.red[900],
                      fit: BoxFit.contain,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: CurvedNavigationBar(

      //         items: <Widget>[
      //           Icon(Icons.search),
      //           Icon(Icons.home),
      //           Icon(Icons.location_on)
      //         ]
      //         ),
    );
  }
}

class Counter extends StatelessWidget {
  final int number;
  final Color color;
  final String title;
  const Counter({
    Key key,
    this.number,
    this.color,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(6),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: color.withOpacity(.26)),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                border: Border.all(color: color, width: 2)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "$number",
          style: TextStyle(fontSize: 40, color: color),
        ),p
        Text(title)
      ],
    );
  }
}

//Circle the header
class MyClipPer extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
