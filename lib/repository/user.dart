import 'package:learn_bloc/datasource/user.dart';
import 'package:learn_bloc/model/user_model.dart';
import 'package:http/http.dart' as http;

class UserRepository {

  final userDataSource = UsersDataSource(httpClient: http.Client());

  Future<Users> getUsers() async {
    return await userDataSource.fetchUser();

  }

}


