import 'package:desafio_arquitetura/produto/produto.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          fullscreenDialog: true,
            builder: (context) {
              return ProdutoWidget();
            }
          ));
      },
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.all(18),
        width: MediaQuery.of(context).size.width - 60,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Stay in a Charming Flat near Historic Centre",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            Text(
              "Description",
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            ),
            Spacer(),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "R\$ 788,99",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
