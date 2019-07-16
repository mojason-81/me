import 'package:flutter_web/material.dart';

void main() => runApp(Hummingbird());

class Hummingbird extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hummingbird - Flutter For Web',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyWebsite(),
    );
  }
}

class MyWebsite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hummingbird'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            paddingRenderer(imageContainer),
            paddingRenderer(exampleThingcontainer),
            paddingRenderer(myFirstText),
            paddingRenderer(mySecondText),
            paddingRenderer(myThirdText),
          ],
        ),
      ),
    );
  }
}

Container imageContainer() {
  String url =
      "https://images.unsplash.com/photo-1520638023360-6def43369781?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60";
  return Container(
      width: 200.0, height: 200.0, decoration: decorationReturnerThing(url));
}

BoxDecoration decorationReturnerThing(url) {
  return BoxDecoration(
      shape: BoxShape.circle,
      image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            url,
          )));
}

Container decorationContainerizer(String url) {
  return Container(
    width: 200.0,
    height: 200.0,
    decoration: decorationReturnerThing(url),
  );
}

Container exampleThingcontainer() {
  return Container(
    color: Colors.white30,
    width: 200.0,
    height: 200.0,
    child: GridView.count(
        crossAxisCount: 4,
        childAspectRatio: 1.0,
        padding: const EdgeInsets.all(4.0),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
        children: <String>[
          'https://placebear.com/200/200',
          'https://placekitten.com/200/200',
          'https://placebear.com/200/200',
          'https://placekitten.com/200/200',

          'https://placekitten.com/200/200',
          'https://placebear.com/200/200',
          'https://placekitten.com/200/200',
          'https://placebear.com/200/200',

          'https://placebear.com/200/200',
          'https://placekitten.com/200/200',
          'https://placebear.com/200/200',
          'https://placekitten.com/200/200',

          'https://placekitten.com/200/200',
          'https://placebear.com/200/200',
          'https://placekitten.com/200/200',
          'https://placebear.com/200/200',

          'https://placebear.com/200/200',
          'https://placekitten.com/200/200',
          'https://placebear.com/200/200',
          'https://placekitten.com/200/200',

          'https://placekitten.com/200/200',
          'https://placebear.com/200/200',
          'https://placekitten.com/200/200',
          'https://placebear.com/200/200',

          'https://placebear.com/200/200',
          'https://placekitten.com/200/200',
          'https://placebear.com/200/200',
          'https://placekitten.com/200/200',

          'https://placekitten.com/200/200',
          'https://placebear.com/200/200',
          'https://placekitten.com/200/200',
          'https://placebear.com/200/200',
        ].map((String url) {
          //return GridTile(child: Image.network(src, fit: BoxFit.cover, scale: 1.0, repeat: ImageRepeat.noRepeat));
          return GridTile(child: decorationContainerizer(url));
        }).toList()),
  );
}

Padding paddingRenderer(Function textRenderer) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: textRenderer(),
  );
}

Text myFirstText() {
  return Text(
    'Testing Flutter for Web',
    style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
  );
}

Text mySecondText() {
  return Text(
    'Let\'s remove some indentation levels',
    style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
  );
}

Text myThirdText() {
  return Text(
    'Code re-use is fun!',
    style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
  );
}
/*
  Below is what was auto gen'd by running:
  `stagehand fluter-web-preview`
*/
// import 'package:flutter_web/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatelessWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (choose the "Toggle Debug Paint" action
//           // from the Flutter Inspector in Android Studio, or the "Toggle Debug
//           // Paint" command in Visual Studio Code) to see the wireframe for each
//           // widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Hello, World!',
//             ),
//           ],
//         ),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
