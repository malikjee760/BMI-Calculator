import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Result extends StatelessWidget {
  int res=0;
  bool IsM=true;
  int ag=0;

Result(int age,bool IsMale ,double result){
  this.ag=age;
  this.IsM =IsMale;
  this.res = result.toInt();

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Gender : ${IsM ? 'Male' : 'Female'}',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold
              ),

            ),
            Text('Age : $ag',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text('Result : $res',
              style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold
              ),
            ),

          ],
        ),
      ),
    );
  }
}
