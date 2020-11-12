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
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(quote.text,
                style: TextStyle(fontSize: 18, color: Colors.grey[600])),
            SizedBox(height: 10),
            Text(quote.author,
                style: TextStyle(fontSize: 14, color: Colors.grey[600])),
            SizedBox(height: 10),
            FlatButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text('delete'))
          ],
        ),
      ),
    );
  }
}
