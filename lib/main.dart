import 'package:flutter/material.dart';
import 'package:frontend/quote.dart';
import 'package:frontend/quote_card.dart';

void main ()=>runApp(MaterialApp(
  home: QuoteList(),
));


class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes=[
    Quote(quote:'Be yourself; everyone else is already taken',author: 'Yubraj Upadhaya'),
    Quote(quote:'I have nothing to declare except my genius',author: 'Sangam Raj Tamang'),
    Quote(quote:'The truth is rarely pure and never simple',author: 'Unknown' )
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quote'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote)=>QuoteCard(
            quote: quote,
            delete:(){
              setState(() {
                quotes.remove(quote);
              });
            }
        )).toList(),
      ),
    );
  }
}


