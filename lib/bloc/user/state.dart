

import 'package:learn_bloc/model/user_model.dart';

abstract class UserFetchState{}

class FetchingUserState extends UserFetchState{}

class FetchUserState extends UserFetchState{}

class UserFetchedState extends UserFetchState{

  final Users users;

  UserFetchedState({this.users});
}

class UserFetchErrorState extends UserFetchState{}