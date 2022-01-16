import 'package:flutter/material.dart';
import 'package:learn/utility/my_constant.dart';
import 'package:learn/widgets/show_radio_for_form.dart';
import 'package:learn/widgets/show_title.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    String? typeUser;

    return Scaffold(
      appBar: AppBar(
        title: Text('CreateAccount'),
        backgroundColor: MyConstants.PrToBl6,
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          buildTitle('Basic Data'),
          buildName(size),
          buildTitle('Type User'),
          RadioForForm(),
          buildTitle('Normal Data'),
        ],
      ),
    );
  }

  Container buildTitle(String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      child: ShowTitle(
        title: title,
        textStyle: MyConstants().h2Style,
      ),
    );
  }
}

Row buildName(double size) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
              decoration: InputDecoration(
                  labelStyle: MyConstants().h3Small,
                  labelText: 'Test : ',
                  prefixIcon: Icon(
                    Icons.fingerprint,
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
