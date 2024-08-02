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
    return Container(
      width: double.infinity,
      height: 700,
      child: Stack(
          children: [
            ...widget.cards.reversed.toList().asMap().entries.map((entry) {
              return entry.key == widget.cards.length - 1
              ? Dismissible(
                key: Key(entry.hashCode.toString()),
                direction: DismissDirection.horizontal,
                onDismissed: (direction) {
                  setState(() {
                    print(widget.cards.length);
                    widget.cards.removeAt(widget.cards.length - entry.key - 1);
                    print(widget.cards.length);
                  });
                },
                child: Container(
                  margin: EdgeInsets.only(top: 10*entry.key.toDouble()),
                  child: entry.value,
                  ), 
                )
              : Container(
                margin: EdgeInsets.only(top: 10*entry.key.toDouble()),
                child: entry.value,
                );
            })
          ],
        ),
      );
  }
}
