import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SimpleCalculator(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({Key? key}) : super(key: key);

  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  String input1 = "";
  String input2 = "";
  String operator = "";
  double answer= 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Calculator App"),
      // ),

      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            color: Colors.black ,
            child:Text("${input1} ${operator} ${input2}",

              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),



          Row(
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height:50,
                  color: Colors.black ,
                  child:Text("${answer}",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,

                  ),
                ),
              ),
            ],
          ),



          Row(
            children: [
              Container(
                margin: EdgeInsets.all(12),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    elevation: 8.0,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(150.0, 150.0),
                    maximumSize: const Size(2000.0, 2000.0),
                  ),
                  onPressed: ()=>{
                      setState((){
                        operator="+";
                      })
                  },
                  child: const Icon(Icons.add)
              ),
              ),

              Container(
                margin: EdgeInsets.all(12),
                child:ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    elevation: 8.0,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(150.0, 150.0),
                    maximumSize: const Size(2000.0, 2000.0),
                  ),
                  onPressed: ()=>{
                    setState((){
                      operator="-";
                    })
                  },
                  child: const Icon(Icons.minimize)
              ),
              ),

              Container(
                margin: EdgeInsets.all(12),
              child:ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    elevation: 8.0,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(150.0, 150.0),
                    maximumSize: const Size(2000.0, 2000.0),
                  ),
                  onPressed: ()=>{
                    setState((){
                      operator="x";
                    })
                  },
                  child: const Icon(Icons.cancel)
              ),
              ),

              Container(
              margin: EdgeInsets.all(12),
              child:ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    elevation: 8.0,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(150.0, 150.0),
                    maximumSize: const Size(2000.0, 2000.0),
                  ),
                  onPressed: ()=>{
                    setState((){
                      operator="/";
                    })
                  },
                  child: const Text("/")
              ),
              ),

              Container(
                margin: EdgeInsets.all(12),
                child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      elevation: 8.0,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(150.0, 150.0),
                      maximumSize: const Size(2000.0, 2000.0),
                    ),
                    onPressed: ()=>{
                        operator = "%"
                    },
                    child: const Text("%")
                ),
              ),

              Container(
                margin: EdgeInsets.all(12),
                child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      elevation: 8.0,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(150.0, 150.0),
                      maximumSize: const Size(2000.0, 2000.0),
                    ),
                    onPressed: ()=>{
                    setState(() {
                        operator = "^";
                    })
                    },
                    child: const Text("^")
                ),
              ),
            ],
          ),

          Row(
            children:[
            Container(
              margin: EdgeInsets.all(12),
              child:ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    elevation: 8.0,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(150.0, 150.0),
                    maximumSize: const Size(2000.0, 2000.0),
                  ),
                  onPressed: ()=>{
                    setState(() {
                      if(operator == "") {
                        input1 += '1';
                      } else {
                        input2 += '1';
                      }
                    })
                  },
                  child: const Text("1")
              ),
            ),
              Container(
                margin: EdgeInsets.all(12),
                child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      elevation: 8.0,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(150.0, 150.0),
                      maximumSize: const Size(2000.0, 2000.0),
                    ),
                    onPressed: ()=>{
                      setState(() {
                        if(operator == "") {
                          input1 += '2';
                        } else {
                          input2 += '2';
                        }
                      })
                    },
                    child: const Text("2")
                ),
              ),
              Container(
                margin: EdgeInsets.all(12),
                child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      elevation: 8.0,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(150.0, 150.0),
                      maximumSize: const Size(2000.0, 2000.0),
                    ),
                    onPressed: ()=>{
                      setState(() {
                        if(operator == '') {
                          input1 += '3';
                        } else {
                          input2 += '3';
                        }
                      })
                    },
                    child: const Text("3")
                ),
              ),
              Container(
                margin: EdgeInsets.all(12),
                child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      elevation: 8.0,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(150.0, 150.0),
                      maximumSize: const Size(2000.0, 2000.0),
                    ),
                    onPressed: ()=>{
                      setState(() {
                        if(operator == '') {
                          input1 += '4';
                        } else {
                          input2 += '4';
                        }
                      })
                    },
                    child: const Text("4")
                ),
              ),
              Container(
                margin: EdgeInsets.all(12),
                child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      elevation: 8.0,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(150.0, 150.0),
                      maximumSize: const Size(2000.0, 2000.0),
                    ),
                    onPressed: ()=>{
                      setState(() {
                        if(operator == '') {
                          input1 += '5';
                        } else {
                          input2 += '5';
                        }
                      })
                    },
                    child: const Text("5")
                ),
              ),
              Container(
                margin: EdgeInsets.all(12),
                child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      elevation: 8.0,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(150.0, 150.0),
                      maximumSize: const Size(2000.0, 2000.0),
                    ),
                    onPressed: ()=>{
                      setState(() {
                        if(operator == '') {
                          input1 += '6';
                        } else {
                          input2 += '6';
                        }
                      })
                    },
                    child: const Text("6")
                ),
              ),
            ],
          ),

          Row(
            children: [
              Container(
                margin: EdgeInsets.all(12),
                child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      elevation: 8.0,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(150.0, 150.0),
                      maximumSize: const Size(2000.0, 2000.0),
                    ),
                    onPressed: ()=>{
                      setState(() {
                        if(operator == '') {
                          input1 += '7';
                        } else {
                          input2 += '7';
                        }
                      })
                    },
                    child: const Text("7")
                ),
              ),

              Container(
                margin: EdgeInsets.all(12),
                child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      elevation: 8.0,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(150.0, 150.0),
                      maximumSize: const Size(2000.0, 2000.0),
                    ),
                    onPressed: ()=>{
                      setState(() {
                        if(operator == '') {
                          input1 += '8';
                        } else {
                          input2 += '8';
                        }
                      })
                    },
                    child: const Text("8")
                ),
              ),
              Container(
                margin: EdgeInsets.all(12),
                child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      elevation: 8.0,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(150.0, 150.0),
                      maximumSize: const Size(2000.0, 2000.0),
                    ),
                    onPressed: ()=>{
                      setState(() {
                        if(operator == '') {
                          input1 += '9';
                        } else {
                          input2 += '9';
                        }
                      })
                    },
                    child: const Text("9")
                ),
              ),
              Container(
                margin: EdgeInsets.all(12),
                child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      elevation: 8.0,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(150.0, 150.0),
                      maximumSize: const Size(2000.0, 2000.0),
                    ),
                    onPressed: ()=>{
                      setState(() {

                      })
                    },
                    child: const Text("0")
                ),
              ),


              Container(
                margin: EdgeInsets.all(12),
                child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      elevation: 8.0,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(150.0, 150.0),
                      maximumSize: const Size(2000.0, 2000.0),
                    ),
                    onPressed: ()=>{
                      setState(() {
                        input1 = '';
                        input2 = '';
                        answer = 0;
                        operator = "";
                      })
                    },
                    child: const Text("Reset")
                ),
              ),

              Container(
                margin: EdgeInsets.all(12),
                child:ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      elevation: 8.0,
                      foregroundColor: Colors.white,
                      minimumSize: const Size(150.0, 150.0),
                      maximumSize: const Size(2000.0, 2000.0),
                    ),
                    onPressed: ()=>{
                      setState(()=>{
                       if(operator == '+'){
                         answer = ((int.parse(input1)  + int.parse(input2))) as double
                       }
                       else if(operator == 'x'){
                         answer = (int.parse(input1)*int.parse(input2)) as double
                        }
                       else if(operator == '/'){
                         answer = (int.parse(input1) / int.parse(input2))
                        }
                       else if(operator == '*'){
                          answer = (int.parse(input1)*int.parse(input2)) as double
                        }
                       else if(operator == "^"){
                         answer = (int.parse(input1) ^ int.parse(input2)) as double
                       }
                             else if(operator == "-"){
                                 answer = (int.parse(input1) - int.parse(input2)) as double
                               }
                      })
                    },
                    child: const Text("=")
                ),
              ),
            ],
          ),

        ],
      ),


    );
  }
}
