import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:translator/translator.dart';
import 'package:tts/tts.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomeStateState createState() => _MyHomeStateState();
}

class _MyHomeStateState extends State<MyHomePage> {
  speak() async {
    Tts.speak('Hello World');
  }

  String _toLanuage;
  String _fromLanuage;
  DropdownMenuItem dmi_selected;
  Map _map = {
    'Hindi': 'hi',
    'Danish': 'da',
    'Dutch': 'nl',
    'English': 'en',
    'Finnish': 'fi',
    'French': 'fr',
    'German': 'de',
    'Italian': 'it',
    'Japanese': 'ja',
    'Korean': 'ko'
  };
  TextEditingController _txt1 = TextEditingController();
  TextEditingController _txt2 = TextEditingController();
  int position = 0;
  int currentPage = 0;
  String _ans1 = "";
  String _ans2 = "";
  List<DropdownMenuItem> _list = List<DropdownMenuItem>();

  @override
  void initState() {
    _map.forEach((dynamic key, dynamic value) {
      _list.add(_getDropDown(key, value));
    });
  }

  Widget _getDropDown(String _key, String _value) {
    return new DropdownMenuItem(
      child: Text(_key),
      value: _value,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        cursorColor: Colors.purple,
        primaryColor: Colors.purple[600],
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Translator'),
        ),
        bottomNavigationBar: FancyBottomNavigation(
          tabs: [
            TabData(iconData: Icons.translate, title: "Home"),
            TabData(iconData: Icons.g_translate, title: "Basket")
          ],
          onTabChangedListener: (position) {
            setState(() {
              currentPage = position;
            });
          },
        ),
        floatingActionButton: IconButton(
            icon: Icon(Icons.volume_up),
            onPressed: () {
              speak();
            }),
        body: ListView(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Center(
                child: _getPage(currentPage),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _getPage(int page) {
    Locale myLocale = Localizations.localeOf(context);
    String _homeLanuage = myLocale.toString().substring(0, 2);
    final translator = GoogleTranslator();
    switch (page) {
      case 0:
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            child: Column(
              children: <Widget>[
                TextField(
                  controller: _txt1,
                  decoration: InputDecoration(
                    labelText: "Text",
                    hintText: "Enter Your text",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RaisedButton(
                    color: Colors.purple,
                    onPressed: () {
                      setState(() {
                        if (_txt1.text != null) {
                          translator
                              .translate(_txt1.text, to: _homeLanuage)
                              .then((s) => _ans1 = s);
                        } else {
                          _ans1 = 'Please enter a Some Text';
                        }
                      });
                    },
                    child: Text(
                      "Translate",
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      elevation: 8,
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(_ans1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      default:
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            child: Column(
              children: <Widget>[
                TextField(
                  controller: _txt2,
                  decoration: InputDecoration(
                    labelText: "Text",
                    hintText: "Enter Your text",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: _from(),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: _to(),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: RaisedButton(
                    color: Colors.purple,
                    onPressed: () {
                      setState(() {
                        if (_txt2.text != null) {
                          translator
                              .translate(_txt2.text,
                                  from: _fromLanuage, to: _toLanuage)
                              .then((s) => _ans2 = s);
                        } else {
                          _ans2 = 'Please enter a Some Text';
                        }
                      });
                    },
                    child: Text(
                      "Translate",
                      style: TextStyle(color: Colors.white),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Card(
                      elevation: 8,
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(_ans2),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
    }
  }

  Widget _from() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("From :"),
        ),
        DropdownButton(
          items: _list,
          onChanged: (s) {
            setState(() {
              _fromLanuage = s.toString();
              print('.................');
              print(_fromLanuage);
              print('.................');
            });
          },
          value: _fromLanuage,
          hint: Text("Select Language"),
        )
      ],
    );
  }

  Widget _to() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("To :"),
        ),
        DropdownButton(
          items: _list,
          onChanged: (s) {
            setState(() {
              _toLanuage = s.toString();
              print('.................');
              print(_toLanuage);
              print('.................');
            });
          },
          value: _toLanuage,
          hint: Text("Select Language"),
        )
      ],
    );
  }
}
