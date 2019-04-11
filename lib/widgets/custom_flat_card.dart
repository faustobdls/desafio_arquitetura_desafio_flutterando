import 'package:desafio_arquitetura/produto/produto.dart';
import 'package:flutter/material.dart';

class CustomFlatCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(fullscreenDialog: true, builder: (context) {
          return ProdutoWidget();
        }));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 30),
        height: 150,
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                height: 150,
                child: Hero(
                  tag: "123",
                  child: Image.network(
                    "https://fotos.vivadecora.com.br/decoracao-quarto-de-casal-tapete-creme-casacor2016-104905-square_cover_xsmall.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Stay in a Charming Flat near Historic Centre",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Description",
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "R\$ 788,99",
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
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
