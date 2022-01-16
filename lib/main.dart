import 'package:flutter/material.dart';
import 'package:learn/states/authen.dart';
import 'package:learn/states/create_account.dart';
import 'package:learn/states/customer_service.dart';
import 'package:learn/states/host_service.dart';
import 'package:learn/states/todSorb.dart';
import 'package:learn/utility/my_constant.dart';

final Map<String, WidgetBuilder> map = {
  '/authen': (BuildContext context) => Authen(),
  '/createAccount': (BuildContext context) => CreateAccount(),
  '/customerService': (BuildContext context) => CustomerService(),
  '/hostService': (BuildContext context) => HostService(),
  '/todSorb': (BuildContext context) => TodSorb()
};

String? initialRoute;

void main() {
  initialRoute = MyConstants.routhAuthen;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: MyConstants.appName,
      routes: map,
      initialRoute: initialRoute,
    );
  }
}
