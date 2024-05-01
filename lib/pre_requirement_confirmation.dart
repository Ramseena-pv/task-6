import 'package:flutter/material.dart';
import 'package:task/training.dart';

class Confirmation extends StatelessWidget {
  const Confirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 200),
            Container(
              
              width: 320,
              height: 320,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("assets/images/gify2.gif"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 30),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'You are in Queue !\n',
                    style: TextStyle(
                      color: Color(0xFF260446),
                      fontSize: 20,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  TextSpan(
                    text: 'We will Notify You !',
                    style: TextStyle(
                      color: Color(0xFF260446),
                      fontSize: 30,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 100),
            GestureDetector(
                        onTap: () {
                // Navigate to BuySellPage when tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Training()),
                );
              },

              child: Container(
                width: 330,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFF414ECA),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Center(
                  child: Text(
                    'Go to Home !',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                      height: 0,
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