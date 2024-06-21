import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'package:scroll_loop_auto_scroll/scroll_loop_auto_scroll.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      theme: ThemeData(


        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(  backgroundColor: Colors.teal,
          title: Text("tanjiro kamado "),

          leading: Builder(
            builder: (context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            },
          )

      ),
      drawer: Drawer(

        child: ListView(

          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),

              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomAppBar(
          color: Colors.teal
      ),



      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [


              ScrollLoopAutoScroll(
                child: Row(
                  children: [
                    Container(
                      height:double.infinity,
                            width: double.infinity,
                            color: Colors.blue,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 200,
                      height: 200,
                      color: Colors.teal,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 200,
                      height: 200,
                      color: Colors.tealAccent,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 200,
                      height: 200,
                      color: Colors.redAccent,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 200,
                      height: 200,
                      color: Colors.purpleAccent,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 200,
                      height: 200,
                      color: Colors.orangeAccent,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 200,
                      height: 200,
                      color: Colors.lightGreen,
                    ),


                  ],
                ),
                scrollDirection: Axis.horizontal,
              ),




              Container(
                margin: EdgeInsets.only(bottom: 10 ),
                height: 150,


                child: Container(
                    width: 400,
                    decoration:BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
                        boxShadow: [
                        BoxShadow(
                        blurRadius: 51,
                        spreadRadius: 15,
                        color: Colors.green.shade50
                    )]
                    ) ,
                    child: Image.asset("assets/images/gojo.png")),

              ),
              Container(
                margin: EdgeInsets.only(bottom: 10 ,),
                height: 150,

                child: Container(
                  width: 400,
                  decoration:BoxDecoration(
                      color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
                      boxShadow: [
                      BoxShadow(
                      blurRadius: 51,
                      spreadRadius: 15,
                      color: Colors.green.shade50
                  )
                    ]
                      ) ,
                        child:  Image.asset("assets/images/leef.jpg"),),

              ),
              Container(
                margin: EdgeInsets.only(bottom: 10 ),
                height: 150,

                child: Container(
                  width: 400,
                  decoration:BoxDecoration(
                      color: Colors.limeAccent,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
                      boxShadow: [
                      BoxShadow(
                      blurRadius: 51,
                      spreadRadius: 15,
                      color: Colors.green.shade50
                  )]
                  ) ,
                  child:  Image.asset("assets/images/tony.jpg"),),

              ),
              Container(
                margin: EdgeInsets.only(bottom: 10 ),
                height: 150,

                child: Container(
                  width: 400,
                  decoration:BoxDecoration(
                      color: Colors.pinkAccent,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
                      boxShadow: [
                      BoxShadow(
                      blurRadius: 51,
                      spreadRadius: 15,
                      color: Colors.green.shade50
                  )]
                  ) ,
                  child:  Image.asset("assets/images/tom.jpg"),),

              ),
              Container(
                margin: EdgeInsets.only(bottom: 10 ),
                height: 150,

                child: Container(
                  width: 400,
                  decoration:BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(50),bottomRight: Radius.circular(50), ),
                   boxShadow: [
                     BoxShadow(
                       blurRadius: 51,
                       spreadRadius: 15,
                       color: Colors.green.shade50
                     )
                   ]
                  ) ,
                  child:  Image.asset("assets/images/mj.jpg"),),

              ),
            ],
          ),
        ),
      )
      ,



    );
  }
}
