import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/project/presentation/register%20screens/login_screen.dart';

class WellcomPage extends StatelessWidget {
  const WellcomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Scaffold(
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bu.jpg'), fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                Text(
                  'Wellcom',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    fontFamily: 'Borel',
                    wordSpacing: 2,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'to Ema Burger',
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.amber,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Borel',
                    letterSpacing: 1,
                    wordSpacing: 2,
                  ),
                ),
                SizedBox(
                  height: 490,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 7),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: InkWell(
                            onTap: () {
                              Get.to(LoginScreen());
                            },
                            child: Text(
                              'Next',
                              style: TextStyle(
                                  fontSize: 38,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
