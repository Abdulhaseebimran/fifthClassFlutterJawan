import 'package:flutter/material.dart';
import 'package:flutter_fifth_class/constant_widgets/app_text_const.dart';

class CoustomApp extends StatefulWidget {
  const CoustomApp({ Key? key }) : super(key: key);

  @override
  State<CoustomApp> createState() => _CoustomAppState();
}

class _CoustomAppState extends State<CoustomApp> {
  num count = 0;
  addValue() {
    setState(() {
      count++;
    print(count);
  }); 
    return count;
    }
  Widget build(BuildContext context) {
    return Scaffold(
     body:  Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         Text(
           "$count",
           style:  const TextStyle(fontSize: 30 ),),
           ElevatedButton(onPressed: (){
             addValue();
           }, child: Center(
             child: Text(AppTextConstant.addTextConst)))
       ],
     ), 
    );
  }
}