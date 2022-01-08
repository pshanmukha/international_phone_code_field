import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
//import package file

void main() => runApp(const MyApp());
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Home() //set the class here
    );
  }
}

class Home extends StatefulWidget{

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String number = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Phone Country Code"), //appbar title
        backgroundColor: Colors.redAccent, //appbar color
      ),
      body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(children: <Widget>[
            IntlPhoneField(
              decoration: const InputDecoration( //decoration for Input Field
                labelText: 'Phone Number',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
              initialCountryCode: 'IN', //default contry code, NP for Nepal
              onChanged: (phone) {
                //when phone number country code is changed
                print(phone.completeNumber); //get complete number
                print(phone.countryCode); // get country code only
                print(phone.number);// only phone number
                number = phone.completeNumber;
              },
            ),
            Container(
              margin: const EdgeInsets.only(top:20), //make submit button 100% width
              child:SizedBox(
                width:double.infinity,
                child:RaisedButton(
                  onPressed: (){
                    setState(() {
                    });
                  },
                  color: Colors.redAccent,
                  child: const Text("Submit"),
                  colorBrightness: Brightness.dark,
                  //backgroud color is darker so its birghtness
                ),
              ),
            ),
            Text("Mobile number : $number")
          ],)
      ),
    );
  }
}
