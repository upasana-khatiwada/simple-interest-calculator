import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Simple Interest Calculator",
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String p='',t='',r='',result='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Interest Calculator"),
        backgroundColor: myColor,
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children:  [
            const SizedBox(
              height: 15,
            ),
            //for principal
             TextField(
              onChanged: (val){
                p=val;
              },

              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  hintText: "Enter Principal",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  )),
            ),
            const SizedBox(height: 8,),
            //for time
            TextField(
              onChanged: (val){
                t=val;
              },

              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  hintText: "Enter Time",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  )),
            ),
             const SizedBox(height: 8,),
            //for rate
            TextField(
              onChanged: (val){
                r=val;
              },

              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  hintText: "Enter rate",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  )),
            ),
             const SizedBox(height: 8,),
             //for button
             MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: const BorderSide(color: Colors.red)
              ),
              height: 50,
              color: myColor,
              child: const Text('calculate',style: TextStyle(color:Colors.white,fontSize:22),),
              onPressed: (){
                setState(() {
                  result= (double.parse(p)*double.parse(t)*double.parse(r)/100).toString();

                });
              }),
              const SizedBox(height: 8,),
               Center(
                child:  Text("the result is $result",style: const TextStyle(fontSize: 22),),
              )
          ],
        ),
      ),
    );
  }
}

const myColor = Color(0xFFE21717);
