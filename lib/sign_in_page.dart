import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

var color_red = HexColor("FF7B4D");
var color_orange = HexColor('FC376F');

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [color_red, color_orange],
          ),
        ),
        child: Stack(children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 140),
                ),
                Image.asset('assets/images/logo.png'),
                const Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Find and Meet people around you to find LOVE',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    'SIGN IN',
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 40.0, left: 40.0, right: 40.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter Email',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 0.4),
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 40.0, left: 40.0, right: 40.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 0.4),
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 30, right: 30),
                      child: Text(
                        'Remember Password',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 70,
                      vertical: 30,
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      child: ElevatedButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              primary: Colors.red, // foreground
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50, vertical: 30)),
                          onPressed: () {},
                          child: GradientText(
                            'GET STARTED',
                            style: const TextStyle(
                              fontSize: 20.0,
                            ),
                            gradientType: GradientType.linear,
                            gradientDirection: GradientDirection.ltr,
                            colors: [color_orange, color_red],
                          )),
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.facebook,
                      size: 80,
                    ),
                    Icon(
                      Icons.facebook,
                      size: 80,
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Text(
                    'FORGOT PASSWORD?',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.3),
              ),
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'DONT HAVE ACCOUNT ? ',
                    style: TextStyle(color: Colors.orange),
                  ),
                  Text(
                    'SIGN UP?',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
