import 'package:flutter/material.dart';

class MyConstants {
  static String appName = "Shaman";

  static String routhAuthen = '/authen';
  static String routhCreatedAccount = '/createAccount';
  static String routhcustomerService = '/customerService';
  static String routhhostService = '/hostService';
  static String routhTodsorb = '/todSorb';

  static String image1 = 'images/image1.png';
  static String image2 = 'images/image2.png';
  static String image3 = 'images/image3.png';
  static String image4 = 'images/image4.png';
  static String image_account = 'images/account_g.png';

  static Color primary = Color(0xff92e3a9);
  static Color Primary2 = Color(0xff3a5a43);

//shade to white
  static Color PrToWh1 = Color(0xff9ce5b1);
  static Color PrToWh2 = Color(0xffa7e8ba);
  static Color PrToWh3 = Color(0xffb2ebc2);
  static Color PrToWh4 = Color(0xffbdeecb);
  static Color PrToWh5 = Color(0xffc8f1d4);

  //shade to black
  static Color PrToBl1 = Color(0xff83cc98);
  static Color PrToBl2 = Color(0xff74b587);
  static Color PrToBl3 = Color(0xff669e76);
  static Color PrToBl4 = Color(0xff578865);
  static Color PrToBl5 = Color(0xff497154);
  static Color PrToBl6 = Color(0xff3a5a43);

  //match primary
  static Color PrToMt01 = Color(0xffD2F69E);
  static Color PrToMt02 = Color(0xFFF7FEED);
  static Color PrToMt03 = Color(0xffE6FBC6);
  static Color PrToMt04 = Color(0xffBFEF79);
  static Color PrToMt05 = Color(0xffA5DE53);
  static Color PrToMt11 = Color(0xff8CC6D6);
  static Color PrToMt12 = Color(0xffEBF8FC);
  static Color PrToMt13 = Color(0xffBDE3EE);
  static Color PrToMt14 = Color(0xff5FA4B7);
  static Color PrToMt15 = Color(0xff3C8296);

  //style
  TextStyle h1Style = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: PrToBl5,
  );
  TextStyle h1Big =
      TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: PrToBl5);
  TextStyle h3Small =
      TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: PrToBl5);
  TextStyle h2Style =
      TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: PrToBl5);

  ButtonStyle myButtonStyle() => ElevatedButton.styleFrom(
      primary: MyConstants.PrToBl5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)));
  ButtonStyle createAccountStyle() =>
      ElevatedButton.styleFrom(primary: MyConstants.PrToBl5);
}
