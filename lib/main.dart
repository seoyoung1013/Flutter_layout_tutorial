import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {d
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var titleSection = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(padding: EdgeInsets.all(2.0)), //글과 벽사이의 여백 설정
        Column(
          crossAxisAlignment: CrossAxisAlignment.start, //왼쪽으로 정렬
          children: <Widget>[
            Text(
              "Oeschinen Lake Comapgroud",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text("Kandresteg, Switzerland",
                style: TextStyle(color: Colors.grey, fontSize: 20)),
          ],
        ), //,꼭 찍어주기.

        Padding(padding: EdgeInsets.all(10.0)),
        Icon(
          Icons.star,
          size: 30,
          color: Colors.deepOrange,
        ),
        Text(
          '41',
          style: TextStyle(fontSize: 20),
        )
      ],
    );

    var buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          children: <Widget>[
            Icon(
              Icons.call,
              size: 30,
              color: Colors.lightBlue,
            ),
            Text('CALL', style: TextStyle(color: Colors.lightBlue))
          ],
        ),
        Padding(padding: EdgeInsets.all(20.0)),
        Column(
          children: <Widget>[
            Icon(
              Icons.near_me,
              size: 30,
              color: Colors.lightBlue,
            ),
            Text('ROOUTE', style: TextStyle(color: Colors.lightBlue))
          ],
        ),
        Padding(padding: EdgeInsets.all(20.0)),
        Column(
          children: <Widget>[
            Icon(
              Icons.share,
              size: 30,
              color: Colors.lightBlue,
            ),
            Text('SHAPE', style: TextStyle(color: Colors.lightBlue))
          ],
        )
      ],
    );

    var textSection = Text(
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
      'Alps. Situated 1,578 meters above sea level, it is one of the '
      'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
      'half-hour walk through pastures and pine forest, leads you to the '
      'lake, which warms to 20 degrees Celsius in the summer. Activities '
      'enjoyed here include rowing, and riding the summer toboggan run.',
      style: TextStyle(fontSize: 15),
    );

    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.network(
              "https://img.etoday.co.kr/pto_db/2019/10/600/20191001173327_1372185_787_590.jpg",
              height: 240,
              width: 600,
              fit: BoxFit.cover),
          // Image.network : 인터넷에서 찾은 이미지 주소 넣는 방법. 가로세로 작성한 다음 fit 을 이용하여 크기 고정, BoxFit.cover은 비어있는 부분 커버(넘어가거나 작은것을 커버)

          Padding(padding: EdgeInsets.all(15.0)),
          titleSection,
          Padding(padding: EdgeInsets.all(15.0)),
          buttonSection,
          Padding(padding: EdgeInsets.all(15.0)),
          textSection
        ],
      ),
    );
  }
}

/*
#8 레이아웃 튜토리얼 - 위젯 배치

*titleSection, buttonSection, textSection 선언 후, 
create local variable 'titleSection' 선택

ctrl + space : 자동완성 키 나옴
*/