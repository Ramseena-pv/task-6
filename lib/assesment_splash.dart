import 'package:flutter/material.dart';
import 'package:task/assesments.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 150),
            Container(
              width: 281,
              height: 270,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/splash.gif"),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80),
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Why ?',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF260446),
                fontSize: 35,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            
            Text(
              'Assessments',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF260446),
                fontSize: 20,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w600,
                height: 0, 
              ),
            ),
            SizedBox(width: 289,child: Text(
              'Assessments are like check-ups for learning. They show strengths, weaknesses, and areas to improve, guiding both students and teachers for better outcomes.',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF8B8B8B),
                fontSize: 12,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            ),),
            SizedBox(height: 160),
            GestureDetector(
                    onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Assessment()));
                    },
              child: Container(
                width: 350,
                height: 40,
                decoration: ShapeDecoration(
                  color: Color(0xFF414ECA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                  child: Text(
                    'GET STARTED',
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
