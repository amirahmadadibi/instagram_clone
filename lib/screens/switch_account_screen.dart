import 'dart:ui';

import 'package:flutter/material.dart';

class SwitchAccountScreen extends StatelessWidget {
  const SwitchAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff1C1F2E),
        body: Column(
          children: [
            Expanded(
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image:
                            AssetImage('images/switch_account_background.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 250,
                    child: ClipRRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                        child: Container(
                          height: 352,
                          width: 340,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromRGBO(255, 255, 255, 0.5),
                                Color.fromRGBO(255, 255, 255, 0.2),
                              ],
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 32,
                              ),
                              Image(image: AssetImage('images/profile.png')),
                              SizedBox(
                                height: 20,
                              ),
                              Text('AmirahmadAdibi',
                                  style: Theme.of(context).textTheme.headline4),
                              SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 46,
                                width: 129,
                                child: ElevatedButton(
                                  style: Theme.of(context)
                                      .elevatedButtonTheme
                                      .style,
                                  onPressed: () {},
                                  child: Text('Confirm'),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text('switch account',
                                  style: Theme.of(context).textTheme.headline4)
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 132, bottom: 63),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'don\'t have an account? / ',
                    style: TextStyle(
                        fontFamily: 'GB',
                        color: Colors.grey[700],
                        fontSize: 16),
                  ),
                  Text(
                    'Sign up',
                    style: TextStyle(
                        fontFamily: 'GB', color: Colors.white, fontSize: 20),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
