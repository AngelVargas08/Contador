


import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle(fontSize: 30);
    int counter = 15;

      return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('HomeScreen')
            ),
        ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children:  <Widget> [
                  const Text('Contador de clicks',  style: fontSize30,),
                  Text('$counter',style: fontSize30,)
                ],
            ),
          ),
         // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton(
           // backgroundColor: Colors.black,
            child: const Icon(Icons.add),
            onPressed:(){
              counter++;
              print('Consola'+ ('$counter'));  
            } 
            ),
      );    


  }


}