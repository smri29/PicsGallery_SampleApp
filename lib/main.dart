import 'package:flutter/material.dart';

// Container, dialog, bottom-sheet

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Home(),
      title: 'My app',
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home>{
  List<String> friendList=['Niloy','Rim','Boruto','Jim','Lousie','Specter','Hervey','Riv'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white38,
        appBar: AppBar(
        title: Text('Pics Gallery'),
    backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                //padding: EdgeInsets.all(4),
                /*padding: EdgeInsets.symmetric(
                  vertical: 3,
                  horizontal: 2,
                ),*/
                padding: EdgeInsets.only(
                  bottom:2,
                ),
                margin: EdgeInsets.all(14),
                alignment: Alignment.bottomRight,
                decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    border: Border.all(color: Colors.black, width:1),
                    //borderRadius: BorderRadius.circular(14),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),//border Radius only
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: AssetImage('asset/img/messi.jpg'),
                    fit: BoxFit.cover,
                    opacity: 0.8,
                  ),//decoration image
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.white.withOpacity(0.6),
                      spreadRadius: 5,
                      blurRadius: 6,
                      offset: Offset(0,4),
                    ),
                  ]
                ), //Box Decoration
                child: Text('Messi'),
              ),
              Container(
                height: 100,
                width: 100,
                //padding: EdgeInsets.all(4),
                /*padding: EdgeInsets.symmetric(
                  vertical: 3,
                  horizontal: 2,
                ),*/
                padding: EdgeInsets.only(
                  bottom:2,
                ),
                margin: EdgeInsets.all(14),
                alignment: Alignment.bottomRight,
                decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    border: Border.all(color: Colors.black, width:1),
                    //borderRadius: BorderRadius.circular(14),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),//border Radius only
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      image: AssetImage('asset/img/ronaldo.jpg'),
                      fit: BoxFit.cover,
                      opacity: 0.8,
                    ),//decoration image
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.white.withOpacity(0.6),
                        spreadRadius: 5,
                        blurRadius: 6,
                        offset: Offset(0,4),
                      ),
                    ]
                ), //Box Decoration
                child: Text('CR7'),
              ),
              Container(
                height: 100,
                width: 100,
                //padding: EdgeInsets.all(4),
                /*padding: EdgeInsets.symmetric(
                  vertical: 3,
                  horizontal: 2,
                ),*/
                padding: EdgeInsets.only(
                  bottom:2,
                ),
                margin: EdgeInsets.all(14),
                alignment: Alignment.bottomRight,
                decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    border: Border.all(color: Colors.black, width:1),
                    //borderRadius: BorderRadius.circular(14),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),//border Radius only
                    shape: BoxShape.rectangle,
                    image: DecorationImage(
                      image: AssetImage('asset/img/Background.jpeg'),
                      fit: BoxFit.cover,
                      opacity: 0.8,
                    ),//decoration image
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.white.withOpacity(0.6),
                        spreadRadius: 5,
                        blurRadius: 6,
                        offset: Offset(0,4),
                      ),
                    ]
                ), //Box Decoration
                child: Text('i29'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Shah Mohammad Rizvi'),
              ),
              ElevatedButton(
                  onPressed:(){
                    /*showAboutDialog(
                        context: context,
                        applicationName: 'i29',
                        applicationVersion: '10.0.5',
                    children: [
                      Text('Welcome to the configuration page'),
                        ],
                    );*/
                    showDialog(
                        context: context,
                        barrierDismissible: false,
                        barrierColor: Colors.black54,
                        builder: (ctx){
                      return AlertDialog(
                        title: Text('Custom Dialog Box'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Sample Text'),
                            Text('Sample Text'),
                            Text('Sample Text'),
                          ],
                        ),
                        actions: [
                          TextButton(onPressed: (){
                            Navigator.pop(context);
                          }, child:Text('Cancel')),
                          TextButton(onPressed: (){
                            Navigator.pop(context);
                          }, child:Text('Confirm')),
                        ],
                        shape: RoundedRectangleBorder(
                          //borderRadius: BorderRadius.zero,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        backgroundColor: Colors.grey,
                      );
                    });
                  },
                  child: Text('Dialog')),
              SizedBox(height: 12),
              ElevatedButton(
                  onPressed: (){
                    showModalBottomSheet(
                      backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        context: context,
                        barrierColor: Colors.black54,
                        isDismissible: false,
                        enableDrag: true,
                        builder:(ctx){
                      return SizedBox(
                        height: 600,
                        width: double.infinity,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text('Shah Mohammad Rizvi',),
                            ),
                            Divider(),
                            Column(
                              children: [

                              ],
                            )
                          ],
                        ),
                      );
                    });
                  },
                  child: Text('Bottom Sheet Dialog')),
            ],
          ),
        ),
    );
  }
}