import 'package:day16_shopping/model/user.dart';
import 'package:rxdart/rxdart.dart';

class AppState {
  final user = BehaviorSubject<User>.seeded(User(isLogged: false));
}
