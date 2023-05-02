import 'package:flutter/material.dart';
import 'package:tapshyrma_7guize_app/Pages/seconPage.dart';

class FirsPage extends StatefulWidget {
  const FirsPage({super.key});

  @override
  State<FirsPage> createState() => _FirsPageState();
}

class _FirsPageState extends State<FirsPage> {
  String? katyshuuchununYsymy;
  bool kyimyl= false;

void ekinchiberkeotuu(){
if(katyshuuchununYsymy != null){
  if(katyshuuchununYsymy!.isEmpty){
    kyimyl = false;
  }else{kyimyl = true;}
  setState(() { });
}
}
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
              borderRadius: BorderRadius.circular(13.0), color: Colors.white,),
              child: TextFormField(
              
                onChanged: (String ? name){
                  katyshuuchununYsymy = name;
                },
                decoration: const InputDecoration(
                  hintText: '!',
                  labelText: "Ысымыңызды жазыңыз", 
                labelStyle: TextStyle(color: Colors.blue, fontSize: 20), 
                border: OutlineInputBorder() ),
                style: const TextStyle(fontSize: 20, color: Colors.black),
              ),


          ),
          
          Image.asset("assets/firsPage.jpg"),
          const SizedBox(height: 25,),
          ElevatedButton(style: ElevatedButton.styleFrom(
            side: const BorderSide(width: 2, color: Colors.yellow),
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8)
          ),
          
          onPressed: (){
             Navigator.push(context, 
            MaterialPageRoute(builder: (context)=>  SecondPage(name:katyshuuchununYsymy.toString() , )));
          } ,
           child: const Text("КИРИШҮҮ", 
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, 
          color: Colors.white),
          )
          ),
         ],
      )
    );
  }
}
