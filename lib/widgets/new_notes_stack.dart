import 'package:flutter/material.dart';

import './osa_note_card.dart';

class NewNotesList extends StatefulWidget {
  final List<OsaNoteCard> cards;

  NewNotesList(this.cards);

  @override
  State<NewNotesList> createState() => _NewNotesListState();
}

class _NewNotesListState extends State<NewNotesList> {
  @override
  Widget build(BuildContext context) {
    if (widget.cards == null || widget.cards.isEmpty) {
      return Center(
        child: Text(
          'No notes available',
          style: TextStyle(color: Colors.white),
        ),
      );
    }

    return Container(
      width: double.infinity,
      height: 700,
      child: Stack(
        children: [
          // ...widget.cards.asMap().entries.map((entry) {
          //   int index = entry.key;
          //   OsaNoteCard card = entry.value;
          //   return Positioned(
          //     top: 10 * index.toDouble(),
          //     child: card,
          //   );
          // }).toList(),
          ...widget.cards.asMap().entries.map((entry) {
            return Container(
              margin: EdgeInsets.only(top: 10*entry.key.toDouble()),
              child: entry.value,
            );
          })
        ],
      ),
    );
  }
}
