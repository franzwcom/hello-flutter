import 'package:flutter/material.dart';
import 'quote.dart';
import 'quoteCard.dart';

var appName = "Chuck Norries jokes";
var customImage = "https://picsum.photos/400";
void main() => runApp(MaterialApp(home: QuoteList()));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(author: 'vizcarra', text: 'ex president of peru'),
    Quote(
        author: 'Srinivasa Ramanujan',
        text: 'Srinivasa Ramanujan was an Indian mathematician'),
    Quote(author: 'Donald trump', text: 'USA president')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text(appName),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: quotes
              .map((quote) => QuoteCard(
                    quote: quote,
                    delete: () => setState(() => quotes.remove(quote)),
                  ))
              .toList(),
        ));
  }
}
