import 'package:learn_bloc/bloc/user/event.dart';
import 'package:learn_bloc/bloc/user/state.dart';
import 'package:learn_bloc/model/user_model.dart';
import 'package:learn_bloc/repository/user.dart';
import 'package:bloc/bloc.dart';


class UserBloc extends Bloc<UserFetchEvent,UserFetchState>{

  UserRepository userRepository;

  //initializing userRepository using constructor

  UserBloc({this.userRepository});

  @override
  get initialState => FetchingUserState();

  @override
  Stream<UserFetchState> mapEventToState(UserFetchEvent event) async* {

   if(event is FetchUserEvent){

     final Users user = await userRepository.getUsers();

     print(("JITEN"+user.name));

     if(user!=null){

       yield UserFetchedState(users: user);
     }
   }
  }




}

