import 'package:flutter/material.dart';
import 'package:tapshyrma_7guize_app/Pages/seconPage.dart';

class FirsPage extends StatefulWidget {
  const FirsPage({super.key});

  @override
  State<FirsPage> createState() => _FirsPageState();
}

class _FirsPageState extends State<FirsPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:  const Padding(
          padding:  EdgeInsets.all(5.0),
          child: Center(child: Text('ВИКТОРИНАГА КОШ КЕЛИҢИЗ!', 
          style: TextStyle(fontSize: 23,))),
        ),
        elevation: 5.0,
        toolbarHeight: 150.0,
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            width: 270,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0), color: Colors.white,),
              child: TextFormField(
                decoration: InputDecoration(labelText: "Ысымыңызды жазыңыз", 
                labelStyle: TextStyle(color: Colors.blue, fontSize: 20), 
                border: OutlineInputBorder() ),
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
          ),
          
          Image.asset("assets/firsPage.jpg"),
          const SizedBox(height: 25,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, 
            MaterialPageRoute(builder: (context)=> SecondPage()));
          }, child: const Text("КИРИШҮҮ", 
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, 
          color: Colors.white),
          )
          ),
         ],
      )
    );
  }
}