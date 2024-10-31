import 'package:basketball_counter/cubits/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});






  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit , CounterState>(
        builder: (context , state)=>  Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text(
              'Points Counter',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Container(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Team A',
                            style:TextStyle(
                              fontSize: 32,
                            ),

                          ),
                          Text(
                            '${ BlocProvider.of<CounterCubit>(context).teamAPoints}',
                            style: TextStyle(
                              fontSize:
                              100,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 60,),
                          ElevatedButton(

                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50),

                            ),
                            onPressed: (){
                              BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'A', buttonNumber: 1);



                            },
                            child: Text(
                              'Add 1 point',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),

                          ),
                          SizedBox(height: 40,),
                          ElevatedButton(onPressed: (){
                            BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'A', buttonNumber: 2);

                          },
                            child: Text(
                              'Add 2 point',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50),

                            ),
                          ),
                          SizedBox(height: 40,),
                          ElevatedButton(onPressed: (){
                            BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'A', buttonNumber: 3);
                          },
                            child: Text(
                              'Add 3 point',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50),

                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 500,
                      width: 2,
                      color: Colors.grey,
                    ),
                    Container(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Team B',
                            style:TextStyle(
                              fontSize: 32,
                            ),

                          ),
                          Text(
                            '${ BlocProvider.of<CounterCubit>(context).teamBPoints}',
                            style: TextStyle(
                              fontSize:
                              100,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 60,),
                          ElevatedButton(

                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50),

                            ),
                            onPressed: (){

                              BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'B', buttonNumber: 1);

                            },
                            child: Text(
                              'Add 1 point',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),

                          ),
                          SizedBox(height: 40,),
                          ElevatedButton(onPressed: (){
                            BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'B', buttonNumber: 2);
                          },
                            child: Text(
                              'Add 2 point',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50),

                            ),
                          ),
                          SizedBox(height: 40,),
                          ElevatedButton(onPressed: (){
                            BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'B', buttonNumber: 3);
                          },
                            child: Text(
                              'Add 3 point',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: Size(150, 50),

                            ),
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(onPressed: (){
                      BlocProvider.of<CounterCubit>(context).teamIncrement(team: 'c', buttonNumber: 0);
                    },
                      child: Text(
                        'Reset',
                        style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(250, 75),

                      ),
                    ),
                  ],
                ),






              ],

            ),
          ),


        ),
        listener:(context , state) {

        } ,
    );
  }
}
