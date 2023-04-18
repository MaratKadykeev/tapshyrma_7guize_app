import 'package:tapshyrma_7guize_app/model.dart';

class UseGuizew{
int index = 10;

  List <quizeModel> surooJoop = [
quizeModel(suroo: 'Flutter менен мобилдик тиркемелерди иштеп чыгуу үчүн DART тили колдонулат...',
 joop: true),
quizeModel(suroo: 'Флаттерди эч бир ОС колдобойт?...',
 joop: false),
quizeModel(suroo: 'Flutter менен колдонмолорду иштеп чыгуу үчүн IDE колдонуш керекби?...',
 joop: true),
quizeModel(suroo: 'Флуттерде эч кандай виджеттер колдонулабайт...',
 joop: false),
quizeModel(suroo: 'DART программалоо тили дүйнөдө жалгыз программалоо тили...',
 joop: false),
quizeModel(suroo: 'void эч нерсе кайтарбаган фунция...',
 joop: true),
quizeModel(suroo: 'String жалаң гана сан алуучу класс...',
 joop: false),
 quizeModel(suroo: 'Navigator бир беттен экинчи бетко өтүүчү класс...',
 joop: true),
 quizeModel(suroo: 'Flutter вепсайттарды жасоочу платформа...',
 joop: false),
quizeModel(suroo: 'AssetImage Сүрөт коюууда колдонулат...',
 joop: true), 
 quizeModel(suroo: 'SDK инструменттердин топтому...',
 joop: true),
 quizeModel(suroo: '"debugShowCheckedModeBanner: true," демобаннерди өчүрөт...',
 joop: false),
 quizeModel(suroo: 'Баскыч кылуу үчүн Button колдонобуз...',
 joop: true), 
  ];
  String surooAluu(){
    return surooJoop[index].suroo;
  }
  bool joopAluu(){
    return surooJoop[index].joop;
  }
  
  void nextQuestion(){
    if(index <= surooJoop.length)
      index ++;
      }
  
  
  bool isfinished(){

  if (surooJoop[index] == surooJoop.last){
    return true;
  }else{
    return false;
  }
}
void indexZero(){
  index = 0;
}
}