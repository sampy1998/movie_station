import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'home.dart';

class Detail extends StatefulWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF17082A),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/Avenger3.jpg'),
                        fit: BoxFit.fill)),
              ),
              Positioned(
                top: 50,
                  left: 20,
                  child: IconButton(
                    icon: Icon(FontAwesomeIcons.angleLeft,color: Colors.white,size: 50,),
                    onPressed: (){
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Home()
                        ),
                      );
                    },
                  )
              ),
              Positioned(
                  top: 250,
                  left: 20,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Avengers:',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Endgame',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Action, Adventure, Drama',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              smallContainer(FontAwesomeIcons.arrowDown),
              smallContainer(FontAwesomeIcons.heart),
              smallContainer(FontAwesomeIcons.share),
            ],
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFF210F37)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.solidStar,
                          color: Colors.orange,
                        ),
                        SizedBox(width: 5),
                        Icon(
                          FontAwesomeIcons.solidStar,
                          color: Colors.orange,
                        ),
                        SizedBox(width: 5),
                        Icon(
                          FontAwesomeIcons.solidStar,
                          color: Colors.orange,
                        ),
                        SizedBox(width: 5),
                        Icon(
                          FontAwesomeIcons.solidStar,
                          color: Colors.orange,
                        ),
                        SizedBox(width: 5),
                        Icon(
                          FontAwesomeIcons.star,
                          color: Colors.orange,
                        ),
                        SizedBox(width: 150),
                        Text(
                          '8.4',
                          style: TextStyle(
                              color: Colors.orange,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Internet Movie',
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.5),
                                  fontSize: 20),
                            ),
                            Text('Database',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontSize: 20))
                          ],
                        ),
                        SizedBox(width: 130),
                        Text(
                          '8.4/10',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          'Rotten Tomatoes',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 20),
                        ),
                        SizedBox(width: 130),
                        Text(
                          '94%',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 20),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text(
                          'Metacritic',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 20),
                        ),
                        SizedBox(width: 150),
                        Text(
                          '78/100',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.5),
                              fontSize: 20),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Container(
              height: 230,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFF210F37)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    smallRow(FontAwesomeIcons.calendar, '2019'),
                    SizedBox(height: 20,),
                    smallRow(FontAwesomeIcons.globeAmericas, 'United States'),
                    SizedBox(height: 20),
                    smallRow(FontAwesomeIcons.clock, '181 min'),
                    SizedBox(height: 20),
                    smallRow(FontAwesomeIcons.volumeUp, 'English, Japanese,'),
                    SizedBox(height: 10,),
                    Text('          Xhosa, German',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 20
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Container(
              height: 800,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xFF210F37)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Plot',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '"After the devastating events of Avengers infinity'
                          'War(2018) the universe is in ruins. With the help of remaining alleis the Avengers assemble once more in order'
                          'to reverse Thanos\' actions and restore balance to the universe."',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.5),
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text('Director',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30
                      ),
                    ),
                    SizedBox(height: 10),
                    flatContainer(40, 200,'ANTHONY RUSSO'),
                    SizedBox(height: 15),
                    flatContainer(40, 200,'JOE RUSSO'),
                    SizedBox(height: 20),
                    Text(
                      'Actors',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30
                      ),
                    ),
                    SizedBox(height: 10),
                    flatContainer(40,300, 'ROBERT DOWNEY JR.'),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        flatContainer(40, 150, 'CHRIS EVANS'),
                        SizedBox(width: 10),
                        flatContainer(40, 100, 'RUFFALO')
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Writer',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        flatContainer(40, 150, 'CHRISTOPHER'),
                        SizedBox(width: 10),
                        flatContainer(40, 100, 'STEPHEN')
                      ],
                    ),
                    SizedBox(height: 10),
                    flatContainer(40,70, 'STAN'),
                  ],
                ),
              ),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}

smallContainer(IconData iconData) {
  return Container(
    height: 50,
    width: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Color(0xFF210F37),
    ),
    child: Icon(
      iconData,
      color: Colors.white,
    ),
  );
}

flatContainer(double height, double width,String text){
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white.withOpacity(0.1)
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white.withOpacity(0.2),
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
      ),
    ),
  );
}

smallRow(IconData iconData, String text){
  return Row(
    children: [
      Icon(iconData,color: Colors.orange),
      SizedBox(width: 20),
      Text(text,
        style: TextStyle(
          color: Colors.white.withOpacity(0.5),
          fontSize: 20
        ),
      )
    ],
  );
}

// Row(
// mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
// Container(
// height: 40,
// width: 40,

// Container(
// height: 40,
// width: 40,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(10),
// color: Color(0xFF210F37)),
// child: Icon(
// FontAwesomeIcons.share,
// color: Colors.white,
// ),
// ),
// ],
// ),
// SizedBox(
// height: 20,
// ),
// Padding(
// padding: const EdgeInsets.symmetric(horizontal: 20),
// child: Container(
// height: 200,
// width: MediaQuery.of(context).size.width,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: Color(0xFF210F37)),
// child: Padding(
// padding:
// const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
// child: Column(
// children: [
// // Row(
// //  children: [
// //    Image(
// //      image: AssetImage('assets/star1.png'),
// //    )
// //  ],
// // ),
// Row(
// children: [
// Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Text(
// 'Internet Movie',
// style: TextStyle(
// color: Colors.white.withOpacity(0.5),
// fontSize: 20),
// ),
// Text('Database',
// style: TextStyle(
// color: Colors.white.withOpacity(0.5),
// fontSize: 20))
// ],
// ),
// SizedBox(width: 120),
// Text(
// '8.4/10',
// style: TextStyle(
// color: Colors.white.withOpacity(0.5),
// fontSize: 20),
// ),
// ],
// ),
// SizedBox(
// height: 10,
// ),
// Row(
// children: [
// Text(
// 'Rotten Tomatoes',
// style: TextStyle(
// color: Colors.white.withOpacity(0.5),
// fontSize: 20),
// ),
// SizedBox(width: 100),
// Text(
// '94%',
// style: TextStyle(
// color: Colors.white.withOpacity(0.5),
// fontSize: 20),
// )
// ],
// ),
// SizedBox(height: 10),
// Row(
// children: [
// Text(
// 'Metacritic',
// style: TextStyle(
// color: Colors.white.withOpacity(0.5),
// fontSize: 20),
// ),
// SizedBox(width: 150),
// Text(
// '78/100',
// style: TextStyle(
// color: Colors.white.withOpacity(0.5),
// fontSize: 20),
// )
// ],
// ),
// //SizedBox(height: 100),
// Container(
// height: 100,
// width: MediaQuery.of(context).size.width,
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(20),
// color: Color(0xFF210F37)),
// ),
// ],
// ),
// ),
// ),
// ),
