import 'package:embark_sg/quiz_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/home',
      routes: {
        '/home': (context) => MyHomePage(title: 'Home'),
        '/questionnaire': (context) => QuizScreen()
      },
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
        primaryColor: Color.fromRGBO(53, 20, 49, 1),
        accentColor: Color.fromRGBO(239, 93, 168, 1),
        scaffoldBackgroundColor: Color.fromRGBO(243, 247, 255, 1),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Color.fromRGBO(218, 218, 218, 1)),
            foregroundColor: MaterialStateProperty.all(Color.fromRGBO(74, 74, 74, 1))
          )
        ),

        fontFamily: 'Nunito',

      ),
      home: MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

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

class QuestionnaireCardWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width - 20,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(20),
          decoration: new BoxDecoration(
            image: DecorationImage(
              image: AssetImage('img/movingtosingapore.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken)
            ),
            borderRadius:  new BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text('Moving to Singapore', textAlign: TextAlign.center, style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontFamily: 'Nunito',
                  fontSize: 20,
                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.bold,
                  height: 1
              ), ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text('Moving or returning to Singapore? Find out more about the steps you need to take before embarking on your journey!', textAlign: TextAlign.center, style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Nunito',
                    fontSize: 16,
                    letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1
                ),)
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  child: ElevatedButton(
                    child: Text('Get Started'),
                    onPressed: () {
                      print('Received Click: Get Started');
                      Get.to(() => QuizScreen());
                    },
                  )
              )
            ]
          )
      )]
    );
  }
}

class RoadmapCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width - 20,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(20),
          decoration: new BoxDecoration(
            image: new DecorationImage(
              image: AssetImage('img/roadmaps.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken)
            ),
            borderRadius: new BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Build your Roadmaps', textAlign: TextAlign.center, style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Nunito',
                    fontSize: 20,
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold,
                    height: 1
                  ),)
                ]
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text('Create checklists to help you plan your journey to Singapore', textAlign: TextAlign.center, style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Nunito',
                    fontSize: 16,
                    letterSpacing: 0,
                    fontWeight: FontWeight.normal,
                    height: 1
                ),)
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  child: Text('Create a Profile and start your Roadmap', textAlign: TextAlign.center, style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Nunito',
                      fontSize: 16,
                      letterSpacing: 0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.normal,
                      height: 1
                  ),)
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: ElevatedButton(
                  child: Text('Start Planning'),
                  onPressed: () {
                    print('Received Click: Start Planning');
                  },
                )
              )
            ],
          )
        )
      ]
    );
  }
}

class LearnAboutSingapore extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width - 20,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(20),
            decoration: new BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                borderRadius: new BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),

            child:
              Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Learn more about Singapore', textAlign: TextAlign.center, style: TextStyle(
                          color: Color.fromRGBO(74, 74, 74, 1),
                          fontFamily: 'Nunito',
                          fontSize: 20,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                          height: 1
                      ),)
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 150,
                        width: 150,
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(75),
                          image: DecorationImage(
                            image: AssetImage('img/foodinsg.jpg'),
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken)
                          )
                        ),
                        child: Center(
                            child: Text('Culture & Food', textAlign: TextAlign.center, style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 25,
                                fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(252, 221, 236, 1)
                        ))
                        )
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(75),
                            image: DecorationImage(
                                image: AssetImage('img/transport.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(Colors.black26, BlendMode.darken)
                            )
                        ),
                        child: Center(
                            child: Text('Getting Around', textAlign: TextAlign.center, style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(252, 221, 236, 1)
                            ))
                        )
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 150,
                        width: 150,
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(75),
                            image: DecorationImage(
                                image: AssetImage('img/lawinsg.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)
                            )
                        ),
                        child: Center(
                            child: Text('Safety & Laws', textAlign: TextAlign.center, style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(252, 221, 236, 1)
                            ))
                        )
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(75),
                            image: DecorationImage(
                                image: AssetImage('img/healthcareinsg.jpeg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(Colors.black45, BlendMode.darken)
                            )
                        ),
                        child: Center(
                            child: Text('Covid-19', textAlign: TextAlign.center, style: TextStyle(
                                fontFamily: 'Nunito',
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(252, 221, 236, 1)
                            ))
                        )
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                          child: Text('Local Happenings'),
                          onPressed: () {
                            print('Click Received: Local Happenings');
                          }
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                          child: Text('View More'),
                          onPressed: () {
                            print('Click Received: View More');
                          }
                      )
                    ],
                  )
                ],
              )
          )
          ]
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 0;

  static List<Widget> _homePages = <Widget>[
    ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              QuestionnaireCardWidget(),
              RoadmapCard(),
              LearnAboutSingapore(),
            ],
          ),
        ]
    ),
    Center(
        child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child:
                Text("Continue Prototype here on Figma!",
                  textAlign: TextAlign.center,
                ),
              )
            ]

        )
    ),
    Center(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child:
            Text("Continue Prototype here on Figma!",
              textAlign: TextAlign.center,
            ),
          )
        ]

    )
    ),
    Center(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child:
            Text("Continue Prototype here on Figma!",
              textAlign: TextAlign.center,
            ),
          )
        ]

    )
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onNaviItemTapped(int index, PageController controller) {
    setState(() {
      _selectedIndex = index;
      controller.animateToPage(index,
          duration: Duration(milliseconds: 500),
          curve: Curves.ease);
    });
  }


  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: 0);
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: PageView(
          scrollDirection: Axis.horizontal,
          controller: controller,
          onPageChanged: _onItemTapped,
          children: _homePages

      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (x) {
          _onNaviItemTapped(x, controller);
        },
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(53, 20, 49, 1.0),
        selectedItemColor: Color.fromRGBO(239, 93, 168, 1),
        unselectedItemColor: Color.fromRGBO(255, 181, 219, 1),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.map_outlined),
              label: 'Roadmap'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_history_rounded),
              label: 'News'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings'
          ),
        ],
      ),
    );
  }
}
