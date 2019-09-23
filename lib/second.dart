import 'package:flutter/material.dart';

class second extends StatefulWidget {
  @override
  _secondState createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    final heightFactor = 720 / height;
    print(heightFactor);
    debugPrint(MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: heightFactor - 0.25,
            child: Hero(
              tag: "image",
              child: Container(
//                height: height - 0.65,
                child: Image.network(
                  "https://images.unsplash.com/photo-1506157786151-b8491531f063?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: heightFactor - 0.50,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40.0),
                      topRight: Radius.circular(40.0))),

              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xffD6EDEB),
                    child: Container(
                      height: 5.0,
                      width: 50.0,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
                    child: Row(
                      children: <Widget>[
                        Material(
                          color: Color(0xff007D74),
                          child: Container(
                            padding: EdgeInsets.all(5.0),
                            child: Text(
                              "Music",
                              style: TextStyle(
                                  letterSpacing: 8.0, color: Colors.white),
                            ),
                          ),
                        ),
                        Spacer(),
                        Text(
                          "4/5",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w600),
                        ),
                        Icon(
                          Icons.star_border,
                          size: 16.0,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 25.0, vertical: 0.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Explore Hyderabad",
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w600),
                        ),
                        Spacer(),
                        Material(
                          shadowColor: Color(0xffFD7932),
                          borderRadius: BorderRadius.circular(50.0),
                          color: Color(0xffFD7932),
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                              size: 18.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                    child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book"),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Material(
                          color: Color(0xff007D74),
                          borderRadius: BorderRadius.circular(30.0),
                          child: FlatButton(
                            color: Color(0xff007D74),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Book Event",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    letterSpacing: 2.0),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
//              height: height - 0.50,
            ),
          ),
        ],
      ),
    );
  }
}
