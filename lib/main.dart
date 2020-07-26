import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: FlutterLogo(
          colors: Colors.green,
          size: 25.0,
        ),
        elevation: 0.1,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.grey,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
            color: Colors.grey,
          )
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment(0.0, -0.4),
                height: 100.0,
                color: Colors.white,
                child: Text(
                  'Get Coaching',
                  style: TextStyle(fontSize: 20.0, fontFamily: 'Dosis'),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 90.0, 25.0, 0.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2.0,
                        color: Colors.grey,
                      ),
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                          child: Text(
                            'YOU HAVE',
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Valera',
                              fontWeight: FontWeight.bold,
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 25.0),
                          child: Text(
                            '205',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Valera',
                              fontWeight: FontWeight.bold,
                              fontSize: 40.0,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 100.0,
                    ),
                    Expanded(
                      child: Container(
                        height: 50.0,
                        width: 80.0,
                        margin: EdgeInsets.only(right: 10.0),
                        decoration: BoxDecoration(
                            color: Colors.greenAccent[100].withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Center(
                          child: Text(
                            'BUY MORE',
                            style: TextStyle(
                                fontFamily: 'Varela',
                                fontWeight: FontWeight.bold,
                                color: Colors.green[400]),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'MY COACHES',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Varela',
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                ),
                Text(
                  'VIEW PAST SESSIONS',
                  style: TextStyle(
                    color: Colors.green,
                    fontFamily: 'Varela',
                    fontWeight: FontWeight.bold,
                    fontSize: 12.0,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          GridView.count(
            crossAxisCount: 2,
            primary: false,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 4.0,
            shrinkWrap: true,
            children: <Widget>[
              _buildCard('Tom', 'Available', 1),
              _buildCard('Tom', 'Away', 2),
              _buildCard('Tom', 'Away', 3),
              _buildCard('Tom', 'Available', 4),
              _buildCard('Tom', 'Away', 5),
              _buildCard('Tom', 'Available', 5),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildCard(String name, String status, int cardIndex) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 7.0,
      child: Column(
        children: <Widget>[
          SizedBox(height: 12.0),
          Stack(
            children: <Widget>[
              SizedBox(height: 10.0),
              Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.green,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://i.pinimg.com/originals/b7/6a/cf/b76acf4ff2421e5b6c178db6a3847a6c.jpg')),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 35.0),
                height: 20.0,
                width: 20.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: status == 'Away' ? Colors.amber : Colors.green,
                  border: Border.all(
                    color: Colors.white,
                    style: BorderStyle.solid,
                    width: 2.0,
                  )
                )
              ),
            ],
          ),
          SizedBox(
            height: 8.0,
          ),
          Text(
            status,
            style: TextStyle(
              fontFamily: 'Varela',
              fontWeight: FontWeight.bold,
              fontSize: 12.0,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Expanded(
            child: Container(
              width: 175.0,
              decoration: BoxDecoration(
                  color: status == 'Away' ? Colors.grey : Colors.green,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0))),
              child: Center(
                child: Text(
                  'Request',
                  style: TextStyle(color: Colors.white, fontFamily: 'Varela'),
                ),
              ),
            ),
          )
        ],
      ),
      margin: cardIndex.isEven
          ? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0)
          : EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0),
    );
  }
}
