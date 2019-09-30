import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_bloc/bloc/user/bloc.dart';
import 'package:learn_bloc/bloc/user/event.dart';
import 'package:learn_bloc/bloc/user/state.dart';
import 'package:learn_bloc/repository/user.dart';

import 'model/user_model.dart';


void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {


  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  UserBloc userBloc;
  UserRepository userRepository;

  @override
  void initState() {
    userRepository = UserRepository();
    userBloc = UserBloc(userRepository: userRepository);
    userBloc.dispatch(FetchUserEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: BlocBuilder(
          bloc: userBloc,
          // ignore: missing_return
          builder: (context,state){
            if(state is UserFetchedState){
              Users fetchedUsers = state.users;
              print("FETCHED"+fetchedUsers.name);
             return Center(
               child: Column(
                 children: <Widget>[
                   Center(child: Text( fetchedUsers.name)),
                   Container(
                     height: 400,
                     width: 400,
                     child: ListView.builder(
                       itemCount: fetchedUsers.films.length,

                         itemBuilder: (context,index){

                         String film = fetchedUsers.films[index];
                         return GestureDetector(
                           onTap: (){
                             
                           },

                             child: Text(film));



                         }),
                   )
                 ],
               ),
             );
            }

          },

        ),
      ),
    );
  }


  @override
  void dispose() {
    userBloc.dispose();
    super.dispose();
  }
}


/*Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 33,),
                  InkWell(
                    onTap: (){ Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => UsingHttp()));},
                    child: Container(
                      height: 100,
                      width: 80,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/company_logo_by_priyasakhi.jpg'),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  ),
                  Center(
                    child: Text('Welcome to Angel Investment Network.',
                        style: TextStyle(color: Colors.white, fontSize: 35)),
                  ),
                  SizedBox(
                    height: 85,
                  ),
                  Center(
                    child: MaterialButton(
                      color: Colors.white,
                      height: 55,
                      minWidth: double.infinity,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('Login',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 24,
                              fontWeight: FontWeight.w600)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: ButtonTheme(
                      height: 55,
                      minWidth: double.infinity,
                      child: OutlineButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        borderSide: BorderSide(
                          width: 1.5,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => GoogleMapsS()));
                        },
                        child: Text(
                          'Create Account',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 103,),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 80,
                color: Colors.blue[400],
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20.0,20,20,20),
                  child: Text(
                    'We dont post anything to LinkedIn. By signing in, you agree to our terms of service and privacy policy.',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        )*/
