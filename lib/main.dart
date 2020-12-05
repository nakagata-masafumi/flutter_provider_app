import 'package:flutter/material.dart';
import 'package:flutter_provider_app/main_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

 final String bodyString = 'What is Provider';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ChangeNotifierProvider<MainModel>(
       create : (_) => MainModel(),
        child: Scaffold(
          appBar: AppBar(
            title: Text('Provider App'),
          ),
          body: Consumer<MainModel>(builder: (context,model,child) {
              return Column(
                children: [
                  Text(
                    model.bodyString,
                    style: TextStyle(
                      fontSize: 30
                    ),
                  ),
                  RaisedButton(
                    child: Text('Button'),
                    onPressed: (){
                    //TODO If Button Pressed then ...
                      model.changeBodyString();
                    }
                  )
                ],
              );
            }
          ),
        ),
      )
    );
  }
}

