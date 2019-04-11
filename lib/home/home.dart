import 'package:desafio_arquitetura/search/search.dart';
import 'package:desafio_arquitetura/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.menu), onPressed: () {},),
        ],
        leading: IconButton(icon: Icon(Icons.search), onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            fullscreenDialog: true,
            builder: (context) {
              return SearchWidget();
            }
          ));
        },),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage('http://webcomunica.site/wp-content/uploads/2019/02/maravilhoso-decorar-papel-de-parede-sala-de-estar-construplace-decoracao-de-parede-de-sala.jpg')
          )
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 180,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                CustomCard(),
                CustomCard(),
                CustomCard()
              ],
            ),
          ),
        ),
      ),
    );
  }
}