import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Work extends StatefulWidget {
  @override _WorkState createState() => _WorkState();
}
class _WorkState extends State<Work>{
  TextEditingController txt=TextEditingController();
  var gettext= "William";
  var lst=[];
  submit(){
    setState((){
      lst.add(gettext);
      print(lst);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          toolbarHeight: MediaQuery.of(context).size.height*0.08,
          backgroundColor: Colors.blue,
          title: Center(child: Text("TODO APP",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),

        ),
        body: SingleChildScrollView(
            child:Column(
                children: [SizedBox(height: MediaQuery.of(context).size.height*0.1),
                  TextFormField(style:TextStyle(color: Colors.red),controller:txt,onChanged: (value){gettext=value;},
                  ),

                  TextButton(onPressed: (){submit();
                  txt.clear();},
                      child:Text("Add Data",style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold,color: Colors.black),
                      )),

                  ListView.builder(shrinkWrap: true,
                      physics:NeverScrollableScrollPhysics(),
                      itemCount:lst.length,
                      itemBuilder:(context,index){
                        return Text(lst[index]);
                      }
                  )
                ]
            )
        )
    );



  }
}