import 'package:flutter/material.dart';
import 'package:task/assesment_detailed_view.dart';
import 'package:task/leaders_board.dart';
import 'package:task/training_detailed.dart';

class Assessment extends StatelessWidget {
  const Assessment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                decoration: BoxDecoration(color: Colors.white),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/Arrow back.png',
                      width: 22,
                      height: 22,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'Assessments',
                      style: TextStyle(
                        color: Color(0xFF260446),
                        fontSize: 18,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                        onTap: () {
                // Navigate to BuySellPage when tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Leader()),
                );
              },

                      child: Container(
                        width: 22,
                        height: 22,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/data_exploration.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                        onTap: () {
                // Navigate to BuySellPage when tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TrainingDetailed()),
                );
              },

                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1, color: Color(0xFFD9D9D9)),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 46,
                              height: 46,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 1,
                                  color: Color(0xFFD9D9D9),
                                ),
                              ),
                              child: Container(
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/python.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Python Basics',
                                  style: TextStyle(
                                    color: Color(0xFF260446),
                                    fontSize: 15,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'ShareInfo',
                                        style: TextStyle(
                                          color: Color(0xFFEE5602),
                                          fontSize: 12.5,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' for ',
                                        style: TextStyle(
                                          color: Color(0xFF8B8B8B),
                                          fontSize: 12.5,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'CE Thalassery',
                                        style: TextStyle(
                                          color: Color(0xFF077AD7),
                                          fontSize: 12.50,
                                          fontFamily: 'Nunito',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/notification_add.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Text(
                              'Dr. Subhash || IIT Madras',
                              style: TextStyle(
                                color: Color(0xFF8B8B8B),
                                fontSize: 12,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Spacer(),
                            Text(
                              '07 Mar 2024; Thursday',
                              style: TextStyle(
                                color: Color(0xFFF31919),
                                fontSize: 10,
                                fontFamily: 'Nunito',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Container(
                              width: 100,
                              height: 39,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(width: 1, color: Color(0xFFEE5602)),
                              ),
                              child: Center(
                                child: Text(
                                  'MCQ Level',
                                  style: TextStyle(
                                    color: Color(0xFFEE5602),
                                    fontSize: 10,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 100,
                              height: 39,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(width: 1, color: Color(0xFFEE5602)),
                              ),
                              child: Center(
                                child: Text(
                                  'Technical Test',
                                  style: TextStyle(
                                    color: Color(0xFFEE5602),
                                    fontSize: 10,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 100,
                              height: 39,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7),
                                border: Border.all(width: 1, color: Color(0xFFEE5602)),
                              ),
                              child: Center(
                                child: Text(
                                  'Aptitude',
                                  style: TextStyle(
                                    color: Color(0xFFEE5602),
                                    fontSize: 10,
                                    fontFamily: 'Nunito',
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(width: 1, color: Color(0xFFEE5602)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Center(
                              child: Text(
                                'ShareInfo for Learn Assessment Ends on: 19 Mar 2024',
                                style: TextStyle(
                                  color: Color(0xFFEE5602),
                                  fontSize: 10,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: double.infinity,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Color(0xFF414ECA),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: GestureDetector(
                          onTap: () {
                  // Navigate to BuySellPage when tapped
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Assessments()),
                  );
                },
                
                              child: Text(
                                'Attempt Now',
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
                        SizedBox(height: 8),
                        Container(
                          width: double.infinity,
                          height: 45,
                          decoration: BoxDecoration(
                            color: Color(0xFF077AD7),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: TextButton(
                            onPressed: () {},
                            child: GestureDetector(
                          onTap: () {
                  // Navigate to BuySellPage when tapped
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Assessments()),
                  );
                },
                
                              child: Text(
                                'Check Pre-Requirement',
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
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
              child: 
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Instructions to ShareInfo Assessments*',
                        style: TextStyle(
                          color: Color(0xFFEE5602),
                          fontSize: 10,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'MCQ (Multiple Choice Question): This is a type of question where you are given a statement or problem and presented with several answer options. You choose the single answer that you believe is the most correct. MCQ tests are popular because they are easy to grade and can assess a wide range of knowledge.',
                        style: TextStyle(
                          color: Color(0xFF8B8B8B),
                          fontSize: 10,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                     
                      Text(
                        'Aptitude: In the context of exams, aptitude refers to your natural ability or potential for success in a particular area. Aptitude tests are designed to measure your skills in areas like reasoning, problem-solving, critical thinking, and data analysis. These skills are applicable across many different fields.',
                        style: TextStyle(
                          color: Color(0xFF8B8B8B),
                          fontSize: 10,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        'Technical: Technical questions are specific to a particular field or technology. They assess your knowledge and understanding of concepts, tools, and practices relevant to that field. For instance, a software developer job might include technical questions about programming languages, algorithms, or software design.',
                        style: TextStyle(
                          color: Color(0xFF8B8B8B),
                          fontSize: 10,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            
          ],
        ),
      ),
    );
  }
}
