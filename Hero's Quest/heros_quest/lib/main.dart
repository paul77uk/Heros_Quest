import 'package:flutter_web/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Hero\'s Quest'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            title,
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 25.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (choose the "Toggle Debug Paint" action
          // from the Flutter Inspector in Android Studio, or the "Toggle Debug
          // Paint" command in Visual Studio Code) to see the wireframe for each
          // widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to you quest Hero.\n\nYour friends have been captured, and only you can save them.\n\nDo you have the qualities of a hero to be able to save them?',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 25.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: RaisedButton(
                color: Colors.blue,
                onPressed: () {},
                child: Text(
                  'Accept Challenge',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
