import 'package:flutter/material.dart';
import 'package:flutter_fifth_class/constant_widgets/app_text_const.dart';
import 'package:flutter_fifth_class/screens/dashboard.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(title: Center(child: Text(AppTextConstant.logintitle)),
      ),
      //drawerScrimColor: Colors.amber,
      body:  Column(
        children: [
          Image.asset("assets/images/login image.webp",
          height: 400, width: MediaQuery.of(context).size.width,),
          SizedBox(
            height: 20,
          ),
          Text("WELCOME", style: TextStyle(
            fontSize: 30, 
            fontWeight:  FontWeight.bold,
            color: Colors.black
          ),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(children: [
              TextField(
              decoration: InputDecoration(
                hintText: "Enter name",
                labelText: "user name",
                prefixIcon: Icon(Icons.people),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                )
              )
            ),SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter password",
                labelText: "password",
                 prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30) )

              ),
            ),
            ],),
          ) ,SizedBox(
            height: 20.0,),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Dashboard()));
            }, child: Text("LOGIN"), style: TextButton.styleFrom(),),
        ],
      ),
  );
  }
}