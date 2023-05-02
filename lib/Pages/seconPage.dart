import 'package:flutter/material.dart';
import 'package:tapshyrma_7guize_app/contstants/app_textStyle.dart';
import 'package:tapshyrma_7guize_app/contstants/user_name.dart';
import 'package:tapshyrma_7guize_app/useFail.dart';

class SecondPage extends StatefulWidget {
  final String name;
  const SecondPage({super.key,required this.name});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  UseGuizew useGuizew = UseGuizew();
  List<Icon> iconAluu = [];
  
  

 

  void teksher(bool koldonuu){
    setState(() {
      if(useGuizew.isfinished() == true){
        showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title:   Text('${widget.name}!'),
          content: const Text(AppUserName.azamat),
          actions: <Widget>[
            
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('башынан'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('аяктоо'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
    useGuizew.indexZero();
  }else{
    if(useGuizew.joopAluu() == koldonuu){
      iconAluu.add(const Icon(Icons.done));
    }else{
      iconAluu.add(const Icon(Icons.close));
    }
    useGuizew.nextQuestion();
  }
   
    }
  );
} 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(child: Text('СУРОО:')),
        elevation: 0,
         ),

body: Stack(
  children: [
    
     Image.asset('assets/secondPage.jpg'),
      Text(
      useGuizew.surooAluu(),  
    style: ApptextStyle.AppTextStyle,
    textAlign: TextAlign.center,
    ),
    
     Row(
       children: [
    Center(
      child: Padding(
        padding: const EdgeInsets.all(35.0),
        child: ElevatedButton(onPressed: () {
          teksher(true);
        },

        child:  const Icon(Icons.close, color: Colors.white, size: 50,),
        style: ElevatedButton.styleFrom( shape: const CircleBorder(),
        padding: const EdgeInsets.all(10), backgroundColor: Colors.red,),
        
        ),
      ),
    ),
    const SizedBox(width: 145,),
    ElevatedButton(onPressed: () {
      teksher(false);
    },
       child: const Icon(Icons.done, color: Colors.white, size: 50,),
  style: ElevatedButton.styleFrom( shape: const CircleBorder(),
    padding: const EdgeInsets.all(10), backgroundColor: Colors.blue,),),



], 
),
  Row(
     children: const [
      Padding(padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 158.0 )),
      Icon(Icons.done, color: Colors.blue,size: 18,),
       Icon(Icons.close, color: Colors.red,size: 18,),
      // Align(alignment: Alignment.topCenter,)
     ],
  
  )      
]),
);
  
 
  }
}