
import 'package:myapp/MoodIcons.dart';
import 'package:flutter/material.dart';

class Journal extends StatefulWidget {
  const Journal({Key? key}) : super(key: key);

  @override
  _JournalState createState() => _JournalState();
}

class _JournalState extends State<Journal> {
  final  _textController0 = TextEditingController();
  final  _textController1 = TextEditingController();
  String out0 = ' ';
  String out1 = ' ';

  @override
  Widget build(BuildContext context){
    return Scaffold( 
      body: Column(  
        children:  <Widget>[
        Expanded(
        child :Container( 
            padding: const EdgeInsets.all(20.0),
            child: Column(  
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(  
                  child: Container(  
                    child: Center(  
                      child: Text(out0),
                    )
                  )
                ),

                TextField(  
                  controller: _textController0,
                  decoration: InputDecoration(  
                    hintText: 'Rate your day on a scale from 1 - 10',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(  
                      onPressed: () { 
                        _textController0.clear();
                      },
                      icon: const Icon(Icons.clear),
                    )
                  )
                ),

                MaterialButton(  
                  onPressed: () {
                    setState(() {
                      out0 = _textController0.text;
                    });
                  },
                  color: Colors.blue,
                  child: const Text('Post', style: TextStyle(color: Colors.white)),
                )
              ]
            )
          ),
        ),

        Expanded( 
          child: Row(  
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children:  [
              Icon(MoodIcons.emo_unhappy),
              Icon(MoodIcons.emo_displeased),
              Icon(MoodIcons.emo_sleep),
              Icon(MoodIcons.emo_squint),
              Icon(MoodIcons.emo_laugh),
            ]
          )
        ),

        Expanded(
        child :Container( 
            padding: const EdgeInsets.all(20.0),
            child: Column(  
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(  
                  child: Container(  
                    child: Center(  
                      child: Text(out1),
                    )
                  )
                ),

                TextField(  
                  controller: _textController1,
                  decoration: InputDecoration(  
                    hintText: 'What\'s on your mind?',
                    border: const OutlineInputBorder(),
                    suffixIcon: IconButton(  
                      onPressed: () { 
                        _textController1.clear();
                      },
                      icon: const Icon(Icons.clear),
                    )
                  )
                ),

                MaterialButton(  
                  onPressed: () {
                    setState(() {
                      out1 = _textController1.text;
                    });
                  },
                  color: Colors.blue,
                  child: const Text('Post', style: TextStyle(color: Colors.white)),
                )
              ]
            )
          ),
        )
          

        ]
      ) 
    );
  }
}