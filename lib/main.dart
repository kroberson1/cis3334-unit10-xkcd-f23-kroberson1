import 'package:flutter/material.dart';

class Comic {
  final int number;
  final String imageUrl;
  final String title;

  Comic(this.number, this.imageUrl, this.title);
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Superman Comic List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Comic> batmanComics = [
    Comic(1, "https://static.wikia.nocookie.net/marvel_dc/images/8/89/Bruce_Wayne_The_Batman_Movie_001.png/revision/latest?cb=20220201141359", "Superman Image")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: batmanComics.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(batmanComics[index].title),
            subtitle: Text("Comic Number: ${batmanComics[index].number}"),
            leading: Image(
              image: NetworkImage(batmanComics[index].imageUrl),
              width: 50.0,
              height: 50.0,
            ),
          );
        },
      ),
    );
  }
}