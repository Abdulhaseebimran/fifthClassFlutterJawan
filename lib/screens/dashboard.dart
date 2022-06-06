import 'package:flutter/material.dart';
import 'package:flutter_fifth_class/constant_widgets/app_color.dart';
import 'package:flutter_fifth_class/constant_widgets/app_text_const.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(AppTextConstant.apptitle),),
      body: Column(
        children: [
          ListTile(
            tileColor: Color(AppColorConstant.baseColor),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/car1.jpg'),),
          ),
          SizedBox( height: 5,),
           ListTile(
            tileColor: Color(AppColorConstant.baseColor),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/car2.jpg'),),
          ),
          SizedBox( height: 5,),
           ListTile(
            tileColor: Color(AppColorConstant.baseColor),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/car1.jpg'),),
          ),
          SizedBox(height:  20,),
          ElevatedButton(onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Dashboard()));
          }, child: Text("BACK")),
        ],
      ),
    );
  }
}