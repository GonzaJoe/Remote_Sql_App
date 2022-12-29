
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text("RemoDB"),
        actions: const [
          Icon(Icons.diamond,size: 32,),
          SizedBox(width: 30,),
          Icon(Icons.color_lens,size: 32,),
          SizedBox(width: 30,),
          Icon(Icons.more_vert,size: 32,),
          SizedBox(width: 15,),
        ],
        leading: InkWell(
          child: const Icon(Icons.menu,size: 30,),
          onTap: (){
            print("woyo");
            setState(() {
              scaffoldKey.currentState!.openDrawer();
            });
          },
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () async {
          await newConnectionDialog();
        },
        child: Container(
          height: 75,
          width: 75,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
          ),
          child: const Center(
            child: Text(
              "+",
              style: TextStyle(fontSize: 40,color: Colors.white),
            )
          ),
        ),
      ),
      drawer: Container(
        width: MediaQuery.of(context).size.width*0.75,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(color: Colors.blue,height: 200,),
            Container(color: Colors.yellow,height: 100,),
            Expanded(
              child: Container(color: Colors.green)
            ),
          ],
        ),
      ),
    );
  }

  Future newConnectionDialog() async {
    return showDialog(
      context: context,
      builder: (_) => Dialog(
        backgroundColor: Colors.white70,
        insetPadding: EdgeInsets.all(15),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("New Connecton", style: TextStyle(color: Colors.black, fontSize: 25)),
              const SizedBox(height: 20,),
              Container(
                color: Colors.white,
                height: 60,
              ),
              const SizedBox(height: 20,),
              const Text("Parameters", style: TextStyle(color: Colors.black, fontSize: 25)),
              const SizedBox(height: 20,),
              Container(
                color: Colors.white,
                height: 100,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children:  [
                    Icon(Icons.view_list_sharp,size: 30,),
                    SizedBox(width: 15,),
                    Expanded(
                      //width: MediaQuery.of(context).size.width*0.6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          TextField(
                            //controller: emailController,
                            style: TextStyle(fontSize: 22,),
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder( //<-- SEE HERE
                                borderSide: BorderSide(
                                    width: 3, color: Colors.greenAccent),
                              ),
                              //hintText: 'Hostname / IP address',
                              labelText: 'Hostname / IP address',
                              labelStyle: TextStyle(fontSize: 20),
                            ),
                          ),
                          SizedBox(height: 25,)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                color: Colors.white,
                height: 100,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children:  [
                    Icon(Icons.usb,size: 30,),
                    SizedBox(width: 15,),
                    Expanded(
                      //width: MediaQuery.of(context).size.width*0.6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          TextField(
                            //controller: emailController,
                            style: TextStyle(fontSize: 22,),
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder( //<-- SEE HERE
                                borderSide: BorderSide(
                                    width: 3, color: Colors.greenAccent),
                              ),
                              //hintText: 'Hostname / IP address',
                              labelText: 'Port',
                              labelStyle: TextStyle(fontSize: 20),
                            ),
                          ),
                          SizedBox(height: 25,)
                        ],
                      ),
                    ),
                    SizedBox(width: 15,),
                    Icon(Icons.rotate_left_sharp,size: 30,)
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                color: Colors.white,
                height: 120,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children:  [
                    const Icon(Icons.folder,size: 30,),
                    const SizedBox(width: 15,),
                    Expanded(
                      //width: MediaQuery.of(context).size.width*0.6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children:  [
                          TextField(
                            //controller: emailController,
                            style: TextStyle(fontSize: 22,),
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder( //<-- SEE HERE
                                borderSide: BorderSide(
                                    width: 3, color: Colors.greenAccent),
                              ),
                              //hintText: 'Hostname / IP address',
                              labelText: 'Schema',
                              labelStyle: TextStyle(fontSize: 20),
                            ),
                          ),
                          Container(
                            height: 40,
                            padding: EdgeInsets.only(top: 10),
                            child: Text("optional",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                color: Colors.white,
                height: 100,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children:  [
                    Icon(Icons.account_circle_rounded,size: 30,),
                    SizedBox(width: 15,),
                    Expanded(
                      //width: MediaQuery.of(context).size.width*0.6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          TextField(
                            //controller: emailController,
                            style: TextStyle(fontSize: 22,),
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder( //<-- SEE HERE
                                borderSide: BorderSide(
                                    width: 3, color: Colors.greenAccent),
                              ),
                              //hintText: 'Hostname / IP address',
                              labelText: 'User',
                              labelStyle: TextStyle(fontSize: 20),
                            ),
                          ),
                          SizedBox(height: 25,)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                color: Colors.white,
                height: 120,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children:  const [
                        Icon(Icons.key,size: 30,),
                        SizedBox(width: 15,),
                        Expanded(
                          //width: MediaQuery.of(context).size.width*0.6,
                          child: TextField(
                            //controller: emailController,
                            style: TextStyle(fontSize: 22,),
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder( //<-- SEE HERE
                                borderSide: BorderSide(
                                    width: 3, color: Colors.greenAccent),
                              ),
                              //hintText: 'Hostname / IP address',
                              labelText: 'Port',
                              labelStyle: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        Icon(Icons.rotate_left_sharp,size: 30,)
                      ],
                    ),
                    Container(
                      height: 40,
                      padding: EdgeInsets.only(top: 15),
                      child: const Text("leave empty to ask on connection",textAlign: TextAlign.center,style: TextStyle(fontSize: 15),),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              const Text("Others", style: TextStyle(color: Colors.black, fontSize: 25)),
              const SizedBox(height: 15,),
              Container(
                color: Colors.white,
                height: 120,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children:  [
                    const Icon(Icons.edit,size: 30,),
                    const SizedBox(width: 15,),
                    Expanded(
                      //width: MediaQuery.of(context).size.width*0.6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children:  [
                          TextField(
                            //controller: emailController,
                            style: TextStyle(fontSize: 22,),
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder( //<-- SEE HERE
                                borderSide: BorderSide(
                                    width: 3, color: Colors.greenAccent),
                              ),
                              //hintText: 'Hostname / IP address',
                              labelText: 'Description',
                              labelStyle: TextStyle(fontSize: 20),
                            ),
                          ),
                          Container(
                            height: 40,
                            padding: EdgeInsets.only(top: 10),
                            child: Text("optional",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Container(
                color: Colors.white,
                height: 120,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children:  [
                    const Icon(Icons.image_outlined,size: 30,),
                    const SizedBox(width: 15,),
                    Expanded(
                      //width: MediaQuery.of(context).size.width*0.6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children:  [
                          const TextField(
                            //controller: emailController,
                            style: TextStyle(fontSize: 22,),
                            textAlign: TextAlign.left,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder( //<-- SEE HERE
                                borderSide: BorderSide(
                                    width: 3, color: Colors.greenAccent),
                              ),
                              //hintText: 'Hostname / IP address',
                              labelText: 'Picture URL',
                              labelStyle: TextStyle(fontSize: 20),
                            ),
                          ),
                          Container(
                            height: 40,
                            padding: EdgeInsets.only(top: 10),
                            child: Text("optional",textAlign: TextAlign.center,style: TextStyle(fontSize: 20),),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 35,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("CANCEL",style: TextStyle(color: Colors.blue, fontSize: 20)),
                  Row(
                    children: const [
                      Text("TEST",style: TextStyle(color: Colors.blue, fontSize: 20)),
                      SizedBox(width: 60,),
                      Text("SAVE",style: TextStyle(color: Colors.blue, fontSize: 20)),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 25,),
            ],
          ),
        ),
      )
    );
  }
}

//Tomorrow
