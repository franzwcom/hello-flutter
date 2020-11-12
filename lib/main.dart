import 'package:flutter/material.dart';
import 'quoteClass.dart';
import 'quoteCard.dart';

var appName = "Programming quotes";
var customImage = "https://picsum.photos/400";
void main() => runApp(MaterialApp(home: QuoteList()));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'Chris Pine',
        text:
            'Programming isn\'t about what you know; it\'s about what you can figure out.'),
    Quote(
        author: 'Dennis Ritchie',
        text:
            'The only way to learn a new programming language is by writing programs in it.'),
    Quote(
        author: 'Burt Rutan',
        text: 'Testing leads to failure, and failure leads to understanding.'),
    Quote(
        author: 'Thomas Fuchs',
        text: 'The best error message is the one that never shows up.')
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
        body: SingleChildScrollView(
            child: Column(
          children: quotes
              .map((quote) => QuoteCard(
                    quote: quote,
                    delete: () => setState(() => quotes.remove(quote)),
                  ))
              .toList(),
        )));
  }
}
