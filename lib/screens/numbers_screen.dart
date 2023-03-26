import 'package:flutter/material.dart';
import '../components/list_item.dart';
import '../models/item.dart';

class NumbersScreen extends StatelessWidget {
  const NumbersScreen({Key? key}) : super(key: key);

 final List<Item> numbers = const [
   Item(
      sound: 'number_one_sound.mp3',
      jpName: 'ichi',
      image: 'assets/images/numbers/number_one.png',
      enName: 'one',
  ),
   Item(
     sound: 'number_two_sound.mp3',
     jpName: 'Ni',
     image: 'assets/images/numbers/number_two.png',
     enName: 'two',
   ),
   Item(
     sound: 'number_three_sound.mp3',
     jpName: 'San',
     image: 'assets/images/numbers/number_three.png',
     enName: 'three',
   ),
   Item(
     sound: 'number_four_sound.mp3',
     jpName: 'Shi',
     image: 'assets/images/numbers/number_four.png',
     enName: 'four',
   ),
   Item(
     sound: 'number_five_sound.mp3',
     jpName: 'Go',
     image: 'assets/images/numbers/number_five.png',
     enName: 'five',
   ),
   Item(
     sound: 'number_six_sound.mp3',
     jpName: 'Liù',
     image: 'assets/images/numbers/number_six.png',
     enName: 'six',
   ),
   Item(
     sound: 'number_seven_sound.mp3',
     jpName: 'Sebun',
     image: 'assets/images/numbers/number_seven.png',
     enName: 'seven',
   ),
   Item(
     sound: 'number_eight_sound.mp3',
     jpName: 'hachi',
     image: 'assets/images/numbers/number_eight.png',
     enName: 'eight',
   ),
   Item(
     sound: 'number_nine_sound.mp3',
     jpName: 'Kyū',
     image: 'assets/images/numbers/number_nine.png',
     enName: 'nine',
   ),
   Item(
     sound: 'number_ten_sound.mp3',
     jpName: 'Jū',
     image: 'assets/images/numbers/number_ten.png',
     enName: 'ten',
   ),

 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xff46322b),
        title: Text('Numbers'),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context , index){
          return Listitem(
            item: numbers[index],
            color: Color(0xffEF9235),
            itemType: 'numbers',
          );
        },
      ),
    );
  }
  List<Widget> getList(List<Item> numbers){
    List<Widget> itemList =[];
        for(int i =0 ; i < numbers.length ; i++){
          itemList.add(Listitem(item: numbers[i], color: Color(0xffEF9235), itemType: 'numbers',));
        }
        return itemList;
  }
}

