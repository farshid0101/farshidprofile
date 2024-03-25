import 'package:flutter/material.dart';
import 'reusableCard.dart';
import 'iconContent.dart';


class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  
                  flex: 1,
                  child: GestureDetector(
                    onTap: (){
                      print('button clicked');
                    },
                  child: const ReusableCard(
                    colour: Color(0xFF1D1E33),
                    cardChild: GenderColumn(text: Text('MALE',style: TextStyle(fontSize: 20),),icon: Icon(Icons.male,size: 100,),),
                  ),
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                    cardChild: GenderColumn(text: Text('FEMALE',style: TextStyle(fontSize: 20),),icon: Icon(Icons.female,size: 100,),),
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            flex: 2,
            child: ReusableCard(
              colour: Color(0xFF1D1E33),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,

              ),
            ),
          ),
          const Expanded(
            flex: 2,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                    cardChild: Column(
                      children: [Icon(Icons.male), Text('four')],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                    cardChild: Column(
                      children: [
                        // Center(
                        //   child: Icon(Icons.female),
                        // ),
                        // Text('five')
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.red,
            margin: const EdgeInsets.only(top: 15),
            width: double.infinity,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Calculate',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}