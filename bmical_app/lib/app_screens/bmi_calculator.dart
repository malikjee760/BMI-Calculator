import 'dart:math';
import 'package:flutter/material.dart';
import 'bmi_result.dart';

class BmaiCalculator extends StatefulWidget {

  @override
  _BmaiCalculatorState createState() => _BmaiCalculatorState();
}

class _BmaiCalculatorState extends State<BmaiCalculator> {
  double height=120.0;
  bool IsMale =true;
  int age=20;
  int weight =50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('BMI Calculator'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: <Widget>
                [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                       setState(() {
                       IsMale =true;
                       });
                      },
                      child: Container(
                        child: Column(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                                Icons.male,
                              size: 100.0,
                            ),

                            Text('MALE',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold

                              ),),

                          ],
                        ),
                          decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: IsMale ?  Colors.lightBlueAccent : Colors.grey[400],
                          )
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          IsMale =false;
                        });
                      },
                      child: Container(
                          child: Column(

                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                  Icons.female,
                                  size: 100.0,
                              ),

                              Text('FEMALE',
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold

                                ),),

                            ],
                          ),
                          decoration:BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                            color: IsMale ?  Colors.grey[400] : Colors.lightBlueAccent,
                          )
                      ),
                    ),
                  ),
                ],
              ),
            ),

          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('HEIGHT',
                      style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold

                      ),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text('${height.round()}',
                          style: TextStyle(
                              fontSize: 40.0,
                              fontWeight: FontWeight.w900

                          ),),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text('cm',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold

                          ),),

                      ],
                    ),
                    Slider(
                        value: height,
                        max: 220.0,
                        min: 80.0,
                        onChanged:(value){
                          setState(() {
                            height=value;
                          });
                        }
                    )
                  ],
                ),
                  decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[400]
                  )
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('Weight',
                            style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold

                            ),),
                          Text('${weight.round()}',
                            style: TextStyle(
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900

                            ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                   weight--;
                                  });
                                },
                                heroTag: 'weight-',
                                mini: true,
                                child: Icon(
                                  Icons.remove
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: (){
                                  setState(() {
                                    weight++;
                                  });
                                },
                                heroTag: 'weight+',
                                mini: true,
                                child: Icon(
                                    Icons.add
                                ),
                              ),
                            ],
                          ),

                        ],

                      ),
                        decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[400]
                        )
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('AGE',
                              style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.bold

                              ),),
                            Text('${age.round()}',
                              style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w900

                              ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  heroTag: 'age-',
                                  mini: true,
                                  child: Icon(
                                      Icons.remove
                                  ),
                                ),
                                FloatingActionButton(
                                  onPressed: (){
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  heroTag: 'age+',
                                  mini: true,
                                  child: Icon(
                                      Icons.add
                                  ),
                                ),
                              ],
                            )

                          ],
                        ),
                        decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.grey[400]
                        )
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.blue,
            child: MaterialButton(
                onPressed: () {
                 double result =weight / pow(height / 100, 2);
               //  print(result.round());

                 Navigator.push(
                     context, 
                     MaterialPageRoute(
                     builder: (context) => Result(age, IsMale,result),

                  )
                 );
                },
              height: 60.0,
              child: Text(
                'CALCULATE',
                style: TextStyle(
                  color: Colors.white
                ),
              ),
                ),
          )
        ],
      ),
    );
  }
}
