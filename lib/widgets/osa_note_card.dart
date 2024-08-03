// TODO сделать изображение с помощью виджета из пакета с кэшем
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

//TODO нужно будет переработать, так как источник может быть разный, в том числе и само 
//приложение - тогда отображать текст заголовка вместо источника внутри стороннего приложения

const cardHeaderPadding = 20.0;

class OsaNoteCard extends StatelessWidget {
  final String text;
  final String picture;
  final String source;
  final String svg;
  int _limit = 200; //начальный лимит символов

  bool _checkAndUpLimit(String picStr){
    if (picStr.isNotEmpty){
      _limit = (_limit / 2).round();
      return true;
    }
    else return false;
  }

  String upperFirstLetter(String text){ 
    return text.substring(0, 1).toUpperCase() + text.substring(1);
  }

  String _cutTextToLimit(String text){
    if (text.length > _limit){
      return text.substring(0, _limit) + '...';
    }
    else return text;
  }

  OsaNoteCard({required this.text, required this.picture, required this.source, required this.svg});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        onTap: (){},
        child: Ink(
          height: 200.0,
          width: double.infinity * 0.7,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color.fromARGB(255, 28, 28, 28),
            border: Border(
              top: BorderSide(
                width: 0.5,
                color: Colors.white,
              ),
              bottom: BorderSide(
                width: 0.5,
                color: Colors.white,
              ),
              left: BorderSide(
                width: 0.5,
                color: Colors.white,
              ),
              right: BorderSide(
                width: 0.5,
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
                        width: 0.5,
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
                          SvgPicture.string(
                            svg,
                            color: Colors.white,
                            height: 30,
                            width: 30,
                          ),
                          const SizedBox(width: cardHeaderPadding,),
                          Text(
                            upperFirstLetter(source),
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                  
                      const FaIcon(FontAwesomeIcons.dragon, color: Colors.white,)
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ...{ 
                          if (_checkAndUpLimit(picture))...{
                            Container(
                              width: 100,
                              height: 100,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)), 
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                child: Image.network(
                                  picture,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                            ),
                            SizedBox(width: cardHeaderPadding,),
                            }
                          },
                      Expanded(
                        child: FractionallySizedBox(
                          widthFactor: 0.8,
                          child: Text(
                            _cutTextToLimit(text), 
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                            softWrap: true,
                          ),
                        ), 
                      ),
                    ],
                  ),
                )
              ],
            ),
        ),
      ),
    );
  }
}