


import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget{
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
  
}
class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;//propiedad

  void decreaseFn(){
    counter--;
    setState(() {}); 
  }
   void creaseFn(){
    counter++;
    setState(() {}); 
  }
  void resetfn(){
    counter=0;
    setState(() {}); 
  }

  @override
  Widget build(BuildContext context) {

    
       const fontSize30 =  TextStyle(fontSize: 30);
   return Scaffold(
    appBar: AppBar(
      title: const Center(
        child:  Text('CounterScreen'),
        )
      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text('Número de clicks', style: fontSize30,),
            Text('$counter',style: fontSize30,),
          ],
        ),
         ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
         floatingActionButton: CustomFloatingActions(
              decreaseFn: decreaseFn,  //referencia
              creaseFn: creaseFn,
              resetfn: resetfn,
         ),
    );

  }
}

  class CustomFloatingActions extends StatelessWidget {

      final Function decreaseFn;
      final Function creaseFn;
      final Function resetfn;

    const CustomFloatingActions({
      Key? key, required this.decreaseFn, required this.creaseFn, required this.resetfn,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
          child: const Icon(Icons.plus_one_outlined),
          onPressed: ()=>creaseFn()
          ),
           const SizedBox(width: 20),

            FloatingActionButton(
          child: const Icon(Icons.restart_alt_outlined),
          onPressed: ()=>resetfn()
          ),
          const SizedBox(width: 20),
            
          FloatingActionButton(
          child: const Icon(Icons.exposure_minus_1_rounded),
          onPressed: ()=>decreaseFn()
          ),
        ],
      );
    }
  }