import 'package:flutter/material.dart';
import 'package:task/Training.dart';

class Leader extends StatelessWidget {
  const Leader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 130),
            Container(
              width: 300,
              height: 290,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/leaders.gif"),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80),
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'ShareInfo',
              style: TextStyle(
                color: Color(0xFFF9762E),
                fontSize: 30,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Text(
                'Leaderboards',
                style: TextStyle(
                  color: Color(0xFFDA4ED4),
                  fontSize: 30,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: 330,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'You Haven’t Enough Permission to\nAccess to This Feature !\n',
                      style: TextStyle(
                        color: Color(0xFF414ECA),
                        fontSize: 12,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                    TextSpan(
                      text: 'Connect with Your Campus Administration to Unlock',
                      style: TextStyle(
                        color: Color(0xFF8B8B8B),
                        fontSize: 10,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 120),
            GestureDetector(
                    onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Training()));
                    },
              child: Container(
                width: 303,
                height: 40,
                decoration: ShapeDecoration(
                  color: Color(0xFF414ECA),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Explore More',
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
