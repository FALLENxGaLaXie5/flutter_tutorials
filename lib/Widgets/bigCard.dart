import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class BigCard extends StatelessWidget
{
  const BigCard({
    super.key,
    required this.pair,
  });

  final WordPair pair;

  @override
  Widget build(BuildContext context)
  {
    final theme = Theme.of(context);

    final style = theme.textTheme.displayMedium!.copyWith(
      color: theme.colorScheme.onPrimary,
    );


    return Card(
      color: theme.colorScheme.primary,
      elevation: 50.0,
      shadowColor: Colors.green,
      surfaceTintColor: Colors.lime,
      shape: RoundedRectangleBorder( // Change the shape of the card
        borderRadius: BorderRadius.circular(100.0), // Set the border radius to make it rounded
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          pair.asLowerCase,
          style: style,
          semanticsLabel: "${pair.first} ${pair.second}",
        ),
      ),
    );
    //return Text(pair.asLowerCase);
  }
}