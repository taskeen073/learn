import 'package:flutter/material.dart';
import 'package:learn/utility/my_constant.dart';

class TodSorb extends StatelessWidget {
  const TodSorb({Key? key}) : super(key: key);
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        backgroundColor: MyConstants.PrToBl6,
        centerTitle: true,
      ),
      body: const RadioForForm(),
    );
  }
}

enum SingingCharacter { Customer, Host }

class RadioForForm extends StatefulWidget {
  const RadioForForm({Key? key}) : super(key: key);

  @override
  State<RadioForForm> createState() => _RadioForFormState();
}

class _RadioForFormState extends State<RadioForForm> {
  SingingCharacter? _character = SingingCharacter.Customer;
  String? str;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile<SingingCharacter>(
          title: Text('Customer'),
          value: SingingCharacter.Customer,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
              str = _character.toString().split('.').last;
              print(str);
            });
          },
        ),
        RadioListTile<SingingCharacter>(
          title: Text('Host'),
          value: SingingCharacter.Host,
          groupValue: _character,
          onChanged: (SingingCharacter? value) {
            setState(() {
              _character = value;
              str = _character.toString().split('.').last;
              print(str);
            });
          },
        ),
      ],
    );
  }
}
