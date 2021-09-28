import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movie_station/detail.dart';
import 'package:dio/dio.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  _HomeState(){
    _filter.addListener(() {
      if(_filter.text.isEmpty){
        setState(() {
          _searchText = " ";
          filterNames = names;
        });
      }else{
        setState(() {
          _searchText = _filter.text;
        });
      }
    });
  }

  final TextEditingController _filter = TextEditingController();
  final dio = new Dio();
  String _searchText = " ";
  List names = [];
  List filterNames = [];
  Icon _searchIcon = new Icon(Icons.search);
  Widget _appBarTitle = new Text('Search Movies');

  void _getName() async{
    final response = await dio.get(' http://www.omdbapi.com/');
    print(response.data);
    List templist = [];
    for(int i = 0; i< response.data.length;i++)
      {
        templist.add(response.data(i));
      }
    setState(() {
      names = templist;
      filterNames = names;
    });
  }

  void _searchPressed(){
    setState(() {
      if(this._searchIcon.icon == Icons.search){
        this._searchIcon = new Icon(FontAwesomeIcons.times);
        this._appBarTitle = new TextField(
          controller: _filter,
          decoration: new InputDecoration(
            prefixIcon: new Icon(Icons.search),
            hintText: 'Search...'
          ),
        );
      }else{
        this._searchIcon = new Icon(Icons.search);
        this._appBarTitle = new Text('search engine');
        filterNames = names;
        _filter.clear();
      }
    }
    );
  }

  Widget _builder(BuildContext context){
    return AppBar(
      leading: IconButton(
        icon: _searchIcon,
        onPressed: _searchPressed,
      ),
    );
  }



  Widget _buildList(){
    if(!(_searchText.isEmpty)){
      List tempList = [];
      for(int i=0;i<filterNames.length;i++){
        if(filterNames[i]['names'].toLowerCase().contains(_searchText.toLowerCase())){
          tempList.add(filterNames[i]);
        }
      }
      filterNames=tempList;
    }
    return ListView.builder(
        itemCount: names == null ? 0 : filterNames.length,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            title: Text(filterNames[index]['names']),
            onTap: () => print(filterNames[index]['names']),
          );
        }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF17082A),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(
                    top: 80,
                    left: 20,
                    right: 20
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0xFF7A91B7).withOpacity(0.2)
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.white.withOpacity(0.8),size: 30),
                      SizedBox(width: 10),
                      Text('Avengers: Endgame',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9)
                        ),
                      ),
                      SizedBox(width: 140),
                      Icon(FontAwesomeIcons.times,size: 20,color: Colors.white.withOpacity(0.8),)
                    ],
                  ),
                )
              ),
            ],
          ),
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40.0),
                  child: Container(
                    height: 210,
                    width: 450,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/Avenger1.jpg'),
                        fit: BoxFit.fill
                      )
                    ),
                  ),
                ),
                Positioned(
                  bottom: 170.0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 20
                      ),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Detail(),
                            ),
                          );
                        },
                        child: Container(
                          height: 30.0,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.black,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            child: Row(
                              children: [
                                Icon(FontAwesomeIcons.solidStar,size: 15,color: Colors.white,),
                                Text('  8.4/10',
                                  style: TextStyle(
                                    color: Colors.white
                                  ),
                                )
                              ],
                            ),
                          )
                        ),
                      ),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Text(
              'Avengers: Endgame',
              style: TextStyle(
                color: Colors.white,
                //fontWeight: FontWeight.bold,
                fontSize: 25
              ),
            ),
          ),
          SizedBox(height: 2),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Icon(FontAwesomeIcons.clock,size: 15,color: Colors.deepOrangeAccent,),
                SizedBox(width: 10,),
                Text(
                  '2 hours 1 minute',
                  style: TextStyle(
                    color: Colors.deepOrangeAccent
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40.0),
                  child: Container(
                    height: 210,
                    width: 450,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/Avenger2.jpg'),
                            fit: BoxFit.fill
                        )
                    ),
                  ),
                ),
                Positioned(
                    bottom: 170.0,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20
                      ),
                      child: Container(
                          height: 30.0,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.black,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                              left: 10,
                            ),
                            child: Row(
                              children: [
                                Icon(FontAwesomeIcons.solidStar,size: 15,color: Colors.white,),
                                Text('  8.4/10',
                                  style: TextStyle(
                                      color: Colors.white
                                  ),
                                )
                              ],
                            ),
                          )
                      ),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Text(
              'Avengers',
              style: TextStyle(
                  color: Colors.white,
                  //fontWeight: FontWeight.bold,
                  fontSize: 25
              ),
            ),
          ),
          SizedBox(height: 2),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              children: [
                Icon(FontAwesomeIcons.clock,size: 15,color: Colors.deepOrangeAccent,),
                SizedBox(width: 10,),
                Text(
                  '2 hours 1 minute',
                  style: TextStyle(
                      color: Colors.deepOrangeAccent
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
