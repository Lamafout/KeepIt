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
      //TODO вернутсья на использование стека и анимированного контейнера
      child: Stack(
          children: [
            ...widget.cards.reversed.toList().asMap().entries.map((entry) {
              return entry.key == 0
              ? Draggable(
                feedback: Container(
                  margin: EdgeInsets.only(top: 10*entry.key.toDouble()),
                  child: entry.value,
                  ),
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
