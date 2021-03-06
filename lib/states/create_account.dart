import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:learn/utility/my_constant.dart';
import 'package:learn/widgets/show_image.dart';
import 'package:learn/widgets/show_image_and_select.dart';
import 'package:learn/widgets/show_radio_for_form.dart';
import 'package:learn/widgets/show_title.dart';
import 'package:learn/widgets/show_image.dart';

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
    File? file;

    @override
    void initState() {
      super.initState();
    }

    Future<void> chooseImage(ImageSource source) async {
      try {
        var result = await ImagePicker().pickImage(
            source: source, maxHeight: 800, maxWidth: 800, imageQuality: 100);
        setState(() {
          file = File(result!.path);
          print(file);
        });
      } catch (e) {
        setState(() {
          print(e);
        });
      }
    }

    Row buildSelectPhoto(double size) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () => chooseImage(
              ImageSource.camera,
            ),
            icon: Icon(Icons.add_a_photo, size: 36),
            color: MyConstants.PrToBl5,
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 16),
              width: size * 0.6,
              child: file == null
                  ? ShowImage(path: MyConstants.image_account)
                  : Image.file(file!)),
          IconButton(
              onPressed: () => chooseImage(ImageSource.gallery),
              icon: Icon(Icons.add_photo_alternate, size: 36),
              color: MyConstants.PrToBl5),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('CreateAccount'),
        backgroundColor: MyConstants.PrToBl6,
        centerTitle: true,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        behavior: HitTestBehavior.opaque,
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            buildTitle('Basic Data'),
            buildName(size),
            buildTitle('Type User'),
            RadioForForm(),
            buildTitle('Normal Data'),
            buildAddress(size),
            buildPhone(size),
            buildUser(size),
            buildPassWord(size),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.navigation),
      ),
    );
  }

  ShowTitle buildSub() {
    return ShowTitle(
        title:
            'Picture if you not private we just show cartoon images is Default images',
        textStyle: MyConstants().h3Small);
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
                  labelText: 'Name : ',
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

Row buildAddress(double size) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
              maxLength: 4,
              decoration: InputDecoration(
                  hintStyle: MyConstants().h3Small,
                  hintText: 'Address : ',
                  prefixIcon: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 60),
                    child: Icon(
                      Icons.home_filled,
                      color: MyConstants.PrToBl5,
                    ),
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

Row buildPhone(double size) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
              decoration: InputDecoration(
                  labelStyle: MyConstants().h3Small,
                  labelText: 'Phone : ',
                  prefixIcon: Icon(
                    Icons.phone_android_outlined,
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
                  labelText: 'User : ',
                  prefixIcon: Icon(
                    Icons.person_outlined,
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

Row buildPassWord(double size) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
              decoration: InputDecoration(
                  labelStyle: MyConstants().h3Small,
                  labelText: 'PassWord : ',
                  prefixIcon: Icon(
                    Icons.lock_outlined,
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
