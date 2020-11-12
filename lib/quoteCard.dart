import 'package:flutter/material.dart';
import 'quoteClass.dart';

class QuoteCard extends StatelessWidget {
  // passing variables and construction
  // stateless widgets uses final
  final Quote quote;
  final Function delete;
  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      elevation: 1,
      // color: Colors.redAccent,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            FittedBox(
              child: Image(
                alignment: FractionalOffset.centerLeft,
                image: new AssetImage(
                  "assets/images/george_clooney.jpg",
                ),
                height: 190.0,
                width: 190.0,
              ),
            ),
            SizedBox(height: 10),
            Text(quote.text,
                style: TextStyle(fontSize: 18, color: Colors.grey[700])),
            SizedBox(height: 10),
            Text(quote.author,
                style: TextStyle(fontSize: 14, color: Colors.grey[600])),
            SizedBox(height: 10),
            Row(
              // crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Ink(
                  decoration: const ShapeDecoration(
                    color: Colors.white30,
                    shape: CircleBorder(),
                  ),
                  child: IconButton(
                    color: Colors.grey,
                    iconSize: 25,
                    onPressed: delete,
                    icon: Icon(
                      Icons.delete,
                    ),
                    // label: Text('delete')
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
