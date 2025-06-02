

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('la,sd'),
      ),
      body: ListView.builder(
        
        
        itemCount: 55,
        itemBuilder: (index,context){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
            
            width: 40,
            height: 50,
            color:  Colors.amber,
                    ),
          );
     
      }),
    );
  }
}
