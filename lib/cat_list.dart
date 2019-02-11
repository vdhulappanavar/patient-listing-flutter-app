import 'package:cat_app/models/cat.dart';
import 'package:cat_app/services/api.dart';
import 'package:flutter/material.dart';

class CatList extends StatefulWidget {
  @override
  _CatListState createState() =>  new _CatListState();
}

class _CatListState extends State<CatList> {

  List<Cat> _cats = [];

  @override
  initState() {
    super.initState();
    print('cat list init');
    _loadCats();
    // super.didChangeDependencies();
  }

  // _loadCats() async {
  //   print('in _loadCats func');
  //   String fileData = await DefaultAssetBundle.of(context).loadString('assests/cats.json');
  //   print('fileData');
  //   print(fileData);
  //   for(Cat cat in CatApi.allCatsFromJSON(fileData)) {
  //     print('file cat:');
  //     print(cat);
  //     _cats.add(cat);
  //   }
  //   print(_cats.toString());
  // }

  _loadCats() async {
    String fileData = await DefaultAssetBundle.of(context).loadString("assets/cats.json");
    print('fileData');
    print(fileData);
    for (Cat cat in CatApi.allCatsFromJSON(fileData)) {
      _cats.add(cat);
    }
    print('printing toString');
    print(_cats.toString());
  }

  Widget _getAppTitleWidget() {
    return new Text(
      'Cats',
      style: new TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 32.0
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blue,
      body: _getAppTitleWidget()
    );
  }
}