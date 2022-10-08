import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'custom_icons_icons.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(  
      home: MyWidget()
    );
  }
}


class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);


  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  double _currentSliderValue = 0;
  final _textControllerbest = TextEditingController();
  final _textControllerworst = TextEditingController();
  String best = ' ';
  String worst = ' ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Align(  
                  alignment: Alignment.center,
                  child: Text("How was your day?",),
                ),
                
                
                Align(  
                  alignment: Alignment.bottomCenter,
                  child: Slider(  
                  value: _currentSliderValue,
                  min: 0,
                  max: 10,
                  divisions: 10,
                  label: _currentSliderValue.round().toString(),
                  onChanged: (double value){
                    setState(() {
                      _currentSliderValue = value;
                    });
                  },
                  ),
                )
              ], 
              
            )
          ),

          Expanded(  
            child: Row(  
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children:  const [
              Icon(CustomIcons.sad_tear),
              Icon(CustomIcons.frown),
              Icon(CustomIcons.meh),
              Icon(CustomIcons.smile),
              Icon(CustomIcons.grin),
            ]
          )
          ),

          Expanded(  
            child: Padding(  
              padding: const EdgeInsets.all(20.0),
              child: Column(  
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ 
                  TextField(  
                    controller: _textControllerbest,
                    decoration: InputDecoration(  
                      hintText: 'What was the best part of your day?',
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(  
                        onPressed: () { 
                          _textControllerbest.clear();
                        },
                        icon: const Icon(Icons.clear),
                      )
                    )
                  ),
                    MaterialButton(  
                    onPressed: () {
                      setState(() {
                        best = _textControllerbest.text;
                      });
                    },
                    color: Colors.blue,
                    child: const Text('Post', style: TextStyle(color: Colors.white)),
                  )
                  
                ]
              )
            )
          ),

          Expanded(  
            child: Padding(  
              padding: const EdgeInsets.all(20.0),
              child: Column(  
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [ 
                  TextField(  
                    controller: _textControllerworst,
                    decoration: InputDecoration(  
                      hintText: 'What was the worst part of your day?',
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(  
                        onPressed: () { 
                          _textControllerworst.clear();
                        },
                        icon: const Icon(Icons.clear),
                      )
                    )
                  ),
                  MaterialButton(  
                    onPressed: () {
                      setState(() {
                        worst = _textControllerworst.text;
                      });
                    },
                    color: Colors.blue,
                    child: const Text('Post', style: TextStyle(color: Colors.white)),
                  )
                  
                  
                ]
              )
            )
          )
        ]
      )
    );
  }
}


