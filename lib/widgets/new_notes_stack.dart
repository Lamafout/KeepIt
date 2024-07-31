import 'package:flutter/material.dart';
import 'package:flutter_tindercard_plus/flutter_tindercard_plus.dart';
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
      //TODO исправить краш, пока не понимаю сути проблемы
      child: TinderSwapCard(
        totalNum: widget.cards.length,
        stackNum: 5,
        swipeUp: false,
        swipeDown: false,
        cardBuilder: (context, index) => widget.cards[index],
        swipeCompleteCallback: (CardSwipeOrientation orientation, int index) {
          setState(() {
            widget.cards.removeAt(index);
          });
        },
        // child: Stack(
        //   children: [
        //     ...widget.cards.reversed.toList().asMap().entries.map((entry) {
        //       return Container(
        //         margin: EdgeInsets.only(top: 10*entry.key.toDouble()),
        //         child: entry.value,
        //       );
        //     })
        //   ],
        // ),
      ),
    );
  }
}
