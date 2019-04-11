import 'package:desafio_arquitetura/widgets/custom_flat_card.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  @override
  _SearchWidgetState createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          color: Colors.white,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Busque aqui",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w100),
                ),
                Row(
                children: <Widget>[
                  RaisedButton(
                    elevation: 0.0,
                    color: Colors.grey[200],
                    onPressed: () {},
                    child: Text("文翻譯"),
                  ),
                  Container(
                    width: 8,
                  ),
                  RaisedButton(
                    elevation: 0.0,
                    color: Colors.grey[200],
                    onPressed: () {},
                    child: Text("文翻譯"),
                  ),
                ],
              ),
                Container(
                  height: 100,
                ),
                Column(
                  children: <Widget>[
                    CustomFlatCard()
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
