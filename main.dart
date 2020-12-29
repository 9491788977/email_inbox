import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.black45,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
 
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black45,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text("Search in mail",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight:FontWeight.w400
          ),
        ),


        actions:<Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 13.0),
            child: Icon(
              Icons.search,
              size: 25.0,),)
        ],
      ),


     drawer: Drawer(
      //  child: Column(children:<Widget>[UserAccountsDrawerHeader(
      //    decoration:BoxDecoration(color: Colors.black54),
      // //   accountName:"manisha palukuru",
      //   // accountEmail:"manisha@gmail.com",
      //    currentAccountPicture:Icon(
      //    Icons.account_circle,
      //    size:50.0,
      //    color:Colors.black12)
      //  ),
      //  ]),
     ),
     floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
        backgroundColor: Colors.red,
      ),


      body: ListView.builder(
        itemCount: MailGenerator.mailListLength,
        itemBuilder: (context,position){
          MailContent mailContent= MailGenerator.getMailContent(position);
          return Column(children:<Widget>[
            Padding(padding: EdgeInsets.only(left:14.0, right:14.0,top:5.0,bottom:5.0),
            child: Row(crossAxisAlignment:CrossAxisAlignment.center,
            children:<Widget>[Icon(Icons.account_circle,size:55.0,color:Colors.lightBlue,),
            Expanded(child: Padding(padding: const EdgeInsets.only(left:10.0),
                      child: Column(children:<Widget>[Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(mailContent.sender,
                         style:TextStyle(
                           fontWeight: FontWeight.w400,
                           color: Colors.white,
                           fontSize: 17.0),
                       ),
                       Text(mailContent.time,
                        style:TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 13.5),
                        ),
                      ]),
                       Row(crossAxisAlignment:CrossAxisAlignment.start,
                           mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children:<Widget>[
                               Column(crossAxisAlignment: CrossAxisAlignment.start ,
                                 children: <Widget>[Text(     
                                    mailContent.subject,
                                      style:TextStyle(
                                       fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                        fontSize: 15.5),
                                 ), 
                                  Text(mailContent.message,
                                    style:TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white24,
                                      fontSize: 15.5),
                                  )],
                               ),
                               Icon(Icons.star_border,size: 25.0,)
                          ],
                        ),
                        ],
                        ),
                        ),
                        ),
            ]
            ),
            ),
            Divider()
          ]);
        }),
    );
    
    
    
  }


  
}

class MailContent{
    String subject;
    String time;
    String sender;
    String message;

    MailContent(this.subject,this.time,this.sender,this.message);
    String getSender()=>this.sender;
    String getTime()=>this.time;
    String getSubject()=>this.subject ;
    String getMessage()=>this.message;
  }

class MailGenerator{
  static var mailList=[MailContent("[Slack]D3E Studio updates for the week of .....","Dec 27","Slack","Sunday,Decempber 20 th -Saturday,December ..."),
  MailContent("[Success]Extension publish on visual Studio ...","31 0ct","Visual Studio Marketplace","[Success]Extension publish on visual Studio"),
  MailContent("[Slack]D3E Studio updates for the week of .....","Dec 27","Slack","Sunday,Decempber 20 th -Saturday,December ..."),
   MailContent("[Success]Extension publish on visual Studio ...","31 0ct","Visual Studio Marketplace","[Success]Extension publish on visual Studio"),
  MailContent("[Slack]D3E Studio updates for the week of .....","Dec 27","Slack","Sunday,Decempber 20 th -Saturday,December ..."),
   MailContent("[Success]Extension publish on visual Studio ...","31 0ct","Visual Studio Marketplace","[Success]Extension publish on visual Studio"),
  MailContent("[Slack]D3E Studio updates for the week of .....","Dec 27","Slack","Sunday,Decempber 20 th -Saturday,December ..."),
   MailContent("[Success]Extension publish on visual Studio ...","31 0ct","Visual Studio Marketplace","[Success]Extension publish on visual Studio"),];

  static MailContent getMailContent(int position)=>mailList[position];
  static int mailListLength= mailList.length;
  
}
