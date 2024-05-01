import 'package:flutter/material.dart';
import 'package:task/assesment_splash.dart';

class Assessments extends StatelessWidget {
  const Assessments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 140),
            Container(
              width: 281,
              height: 281,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/gify.gif"),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80),
                ),
              ),
            ),
            SizedBox(
              width: 351,
              child: Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'ShareInfo Assessments\n',
                        style: TextStyle(
                          color: Color(0xFFEE5602),
                          fontSize: 13,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: 'are only available when your institution publishes them out,\n',
                        style: TextStyle(
                          color: Color(0xFF260446),
                          fontSize: 12,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      TextSpan(
                        text: 'We’ll Notify You !',
                        style: TextStyle(
                          color: Color(0xFF260446),
                          fontSize: 18,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 180),
            Text(
              'Need Help? Talk to Us !',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF8B8B8B),
                fontSize: 10,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10), // Adding some space between the text and the button
            GestureDetector(
                        onTap: () {
                // Navigate to BuySellPage when tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Splash()),
                );
              },

              child: Container(
                width: 260,
                height: 44,
                decoration: ShapeDecoration(
                  color: Color(0xFF414ECA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Return to Home !',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
