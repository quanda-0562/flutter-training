import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

var color_red = HexColor("FF7B4D");
var color_orange = HexColor('FC376F');

final Shader linearTopBottomGradient = LinearGradient(
  colors: <Color>[color_orange, color_red],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
).createShader(const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));

class SignInSocialPage extends StatelessWidget {
  const SignInSocialPage({Key? key}) : super(key: key);

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
              Container(
                padding: const EdgeInsets.all(50),
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 70,
                    vertical: 15,
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          primary: Colors.red, // foreground
                          padding: const EdgeInsets.symmetric(
                              vertical: 25, horizontal: 10)),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Icon(
                              Icons.facebook,
                              size: 40,
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 1,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [color_red, color_orange],
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: GradientText(
                              'Sign in with Facebook',
                              style: const TextStyle(
                                fontSize: 20.0,
                              ),
                              gradientType: GradientType.linear,
                              gradientDirection: GradientDirection.ttb,
                              colors: [color_orange, color_red],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 70,
                    vertical: 15,
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          primary: Colors.red, // foreground
                          padding: const EdgeInsets.symmetric(
                              vertical: 25, horizontal: 10)),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Icon(
                              Icons.facebook,
                              size: 40,
                            ),
                          ),
                          Container(
                            height: 30,
                            width: 1,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [color_red, color_orange],
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: GradientText(
                              'Sign in with Twitter',
                              style: const TextStyle(
                                fontSize: 20.0,
                              ),
                              gradientType: GradientType.linear,
                              gradientDirection: GradientDirection.ttb,
                              colors: [color_orange, color_red],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 70,
                    vertical: 15,
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          primary: Colors.red, // foreground
                          padding: const EdgeInsets.symmetric(
                            horizontal: 50,
                            vertical: 30,
                          )),
                      onPressed: () {},
                      child: GradientText(
                        'Sign Up',
                        style: const TextStyle(
                          fontSize: 20.0,
                        ),
                        gradientType: GradientType.linear,
                        gradientDirection: GradientDirection.ttb,
                        colors: [color_orange, color_red],
                      ),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(25.0),
                child: Text(
                  'ALREADY REGISTERED? SIGN IN',
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          )),
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
