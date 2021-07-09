import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sofia/utils/database.dart';

class DebugScreen extends StatefulWidget {
  @override
  _DebugScreenState createState() => _DebugScreenState();
}

class _DebugScreenState extends State<DebugScreen> {
  bool _isUploading = false;
  Database _database = Database();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.light,
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'YogApp: yoga trainer',
      theme: ThemeData(
        fontFamily: 'GoogleSans',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Debug Screen'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'For uploading and reloading the Firebase data press the button below.',
              ),
              SizedBox(height: 16.0),
              RaisedButton(
                onPressed: () async {
                  setState(() {
                    _isUploading = true;
                  });
                  await _database.uploadTracks();
                  setState(() {
                    _isUploading = false;
                  });
                },
                child: Text('Upload & reload'),
              ),
              SizedBox(height: 16.0),
              _isUploading ? CircularProgressIndicator() : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
