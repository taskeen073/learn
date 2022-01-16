import 'package:flutter/material.dart';
import 'package:learn/states/todSorb.dart';
import 'package:learn/utility/my_constant.dart';
import 'package:learn/widgets/show_image.dart';
import 'package:learn/widgets/show_title.dart';

class Authen extends StatefulWidget {
  const Authen({Key? key}) : super(key: key);

  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  bool statusredeye = true;

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
            child: GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      behavior: HitTestBehavior.opaque,
      child: ListView(
        children: [
          buildImage(size),
          buildAppname(),
          buildUser(size),
          buildPassword(size),
          buildLogin(size),
          NonAccout(),
          TodSorb()
        ],
      ),
    )));
  }

  Row NonAccout() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowTitle(title: 'Non Account ?', textStyle: MyConstants().h2Style),
        TextButton(
          onPressed: () =>
              Navigator.pushNamed(context, MyConstants.routhCreatedAccount),
          child: Text('CreateAccount'),
        ),
      ],
    );
  }

  Row TodSorb() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowTitle(title: '  ?', textStyle: MyConstants().h2Style),
        TextButton(
          onPressed: () =>
              Navigator.pushNamed(context, MyConstants.routhTodsorb),
          child: Text('TodSorb'),
        ),
      ],
    );
  }

  Row buildLogin(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            margin: EdgeInsets.symmetric(vertical: 16),
            width: size * 0.6,
            child: ElevatedButton(
                style: MyConstants().myButtonStyle(),
                onPressed: () {},
                child: Text('Login'))),
      ],
    );
  }

  Row buildUser(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            margin: EdgeInsets.only(top: 16),
            width: size * 0.6,
            child: TextFormField(
                decoration: InputDecoration(
                    labelStyle: MyConstants().h3Small,
                    labelText: 'User :',
                    prefixIcon: Icon(
                      Icons.account_circle_outlined,
                      color: MyConstants.PrToBl5,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: MyConstants.PrToBl5),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: MyConstants.PrToMt15),
                        borderRadius: BorderRadius.circular(25))))),
      ],
    );
  }

  Row buildPassword(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            margin: EdgeInsets.only(top: 16),
            width: size * 0.6,
            child: TextFormField(
                obscureText: statusredeye,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            statusredeye = !statusredeye;
                          });
                        },
                        icon: statusredeye
                            ? Icon(Icons.remove_red_eye_outlined,
                                color: MyConstants.PrToMt05)
                            : Icon(Icons.sync_disabled_outlined,
                                color: MyConstants.PrToMt05)),
                    labelStyle: MyConstants().h3Small,
                    labelText: 'Password :',
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: MyConstants.PrToBl5,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: MyConstants.PrToBl5),
                        borderRadius: BorderRadius.circular(20)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: MyConstants.PrToMt15),
                        borderRadius: BorderRadius.circular(25))))),
      ],
    );
  }

  Row buildAppname() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ShowTitle(title: MyConstants.appName, textStyle: MyConstants().h1Style),
      ],
    );
  }

  Row buildImage(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: size * 0.6,
          child: ShowImage(
            path: MyConstants.image1,
          ),
        ),
      ],
    );
  }
}
