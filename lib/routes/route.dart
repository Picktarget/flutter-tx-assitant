import 'package:tx_assitant/views/home.dart';
import 'package:tx_assitant/views/login.dart';

final routes = {
  // When navigating to the "/" route, build the FirstScreen widget.
  // 当我们跳转到“/”时，构建 FirstScreen Widget（When we navigate to the "/" route, build the FirstScreen Widget）
  '/': (context) => Home(),
  // When navigating to the "/second" route, build the SecondScreen widget.
  // 当我们跳转到“/second”时，构建 SecondScreen Widget（When we navigate to the "/second" route, build the SecondScreen Widget）
  '/login': (context) => Login(),
};
