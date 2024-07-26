// TODO сделать изображение с помощью виджета из пакета с кэшем
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconify_flutter/iconify_flutter.dart';

//TODO нужно будет переработать, так как источник может быть разный, в том числе и само 
//приложение - тогда отображать текст заголовка вместо источника внутри стороннего приложения

const cardHeaderPadding = 20.0;

class OsaNoteCard extends StatelessWidget {
  final String text;
  final String picture;
  final String source;

  const OsaNoteCard({required this.text, required this.picture, required this.source});

  IconData getIconByName(String name){
    switch (name){
      case 'app': return FontAwesomeIcons.userNinja;
      case 'telegram': return FontAwesomeIcons.telegram;
      case 'instagram': return FontAwesomeIcons.instagram;
      case 'vk': return FontAwesomeIcons.vk;
      case 'wiki': return FontAwesomeIcons.wikipediaW;
      default: return FontAwesomeIcons.a;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.0,
      width: double.infinity * 0.7,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.transparent,
        border: Border(
          top: BorderSide(
            color: Colors.white,
          ),
          bottom: BorderSide(
            color: Colors.white,
          ),
          left: BorderSide(
            color: Colors.white,
          ),
          right: BorderSide(
            color: Colors.white,
          )
        )
      ),

        child: Column(
          children: [
            // header
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: cardHeaderPadding,
                vertical: cardHeaderPadding * 0.7
              ),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white
                  ),
                )
              ),
              child: Row(        
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      FaIcon(
                        getIconByName(source),
                        color: Colors.white,
                      ),
                      SizedBox(width: cardHeaderPadding,),
                      Text(
                        source,
                        style: const TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
              
                  FaIcon(FontAwesomeIcons.spaghettiMonsterFlying, color: Colors.white,)
                ],
              ),
            ),

            // text and picture
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: cardHeaderPadding,
                vertical: cardHeaderPadding * 0.7
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                ],
              ),
            )
          ],
        ),
    );
  }
}