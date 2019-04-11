import 'package:flutter/material.dart';

class ProdutoWidget extends StatefulWidget {
  @override
  _ProdutoWidgetState createState() => _ProdutoWidgetState();
}

class _ProdutoWidgetState extends State<ProdutoWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[200],
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Hero(
              tag: "123",
              child: Image.network(
                "https://fotos.vivadecora.com.br/decoracao-quarto-de-casal-tapete-creme-casacor2016-104905-square_cover_xsmall.jpg",
                fit: BoxFit.contain,
                width: double.infinity,
              ),
            ),
            Positioned(
              top: 40,
              left: 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    color: Colors.white,
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                height: 90,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 16),
                      child: Text(
                        "R\$ 788,99",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 16),
                      child: RaisedButton(
                        elevation: 1.0,
                        color: Colors.black,
                        onPressed: () {},
                        child: Text(
                          "文翻譯",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
