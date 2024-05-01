import 'package:flutter/material.dart';
//import 'package:task6/assessments_detailed_view.dart';


import 'package:task/practice_comming_soon.dart';
import 'package:task/pre_requirement_confirmation.dart';
import 'package:task/training.dart';

class PreRequirements extends StatelessWidget {
  const PreRequirements({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Image.asset('assets/images/Arrow back.png'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Training()));
          },
        ),
        title: const Text(
          'Prepare',
          style: TextStyle(
            color: Color(0xFF260446),
            fontSize: 18,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: _buildTrainingPage(context),
      ),
    );
  }
  Widget _buildTrainingPage(BuildContext context) { // Pass BuildContext here
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildBigContainer(),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Practice()));
            },
            child: Container(
              width: 324,
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 15),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Color(0xFF8B8B8B),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Start Preparing',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Confirmation()));
            },
            child: Container(
              width: 324,
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 15),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Color(0xFF077AD7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'I’m Ready for Training',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      );
  }

  Widget _buildBigContainer() {
    return Container(
      width: 385,
      height: 650,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFD9D9D9)),
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 17,
            top: 17,
            child: Container(
              width: 46,
              height: 46,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                  borderRadius: BorderRadius.circular(12.50),
                ),
              ),
              child: Center(
                child: Container(
                  width: 25,
                  height: 25,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/python.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 75,
            top: 22,
            child: Column(
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
                          fontSize: 12.50,
                          fontFamily: 'Nunito',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      TextSpan(
                        text: ' for ',
                        style: TextStyle(
                          color: Color(0xFF8B8B8B),
                          fontSize: 12.50,
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
          ),
          Positioned(
            left: 5,
            right: 5,
            top: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Container(
                child: const Divider(
                  height: 1.0,
                  color: Color(0xFFD9D9D9),
                ),
              ),
            ),
          ),
          const Positioned(
            left: 85,
            top: 85,
            child: Text(
              'Dr. Subhash',
              style: TextStyle(
                color: Color(0xFF8B8B8B),
                fontSize: 12,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const Positioned(
            left: 158,
            top: 85,
            child: Text(
              '||',
              style: TextStyle(
                color: Color(0xFF8B8B8B),
                fontSize: 12,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const Positioned(
            left: 172,
            top: 85,
            child: Text(
              'IIT Madras',
              style: TextStyle(
                color: Color(0xFF8B8B8B),
                fontSize: 12,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Positioned(
            left: 85,
            top: 110,
            child: Opacity(
              opacity: 0.80,
              child: Container(
                width: 70,
                height: 25,
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFF414ECA)),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'On-Site',
                      style: TextStyle(
                        color: Color(0xFF1B94F6),
                        fontSize: 10,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
            left: 162,
            top: 114,
            child: Text(
              '07 Mar 2024; Thursday',
              style: TextStyle(
                color: Color(0xFFF31919),
                fontSize: 10,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Positioned(
            left: 85,
            top: 140,
            child: Opacity(
              opacity: 0.80,
              child: Container(
                width: 176,
                height: 22,
                padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 4),
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: Color(0xFFEE5602)),
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'ShareInfo for Learn Assessment',
                      style: TextStyle(
                        color: Color(0xFFEE5602),
                        fontSize: 10,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            left: 5,
            right: 5,
            top: 175,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Container(
                child: const Divider(
                  height: 1.0,
                  color: Color(0xFFD9D9D9),
                ),
              ),
            ),
          ),
          const Positioned(
            left: 17,
            top: 186,
            child: Text(
              'Topics will Cover',
              style: TextStyle(
                color: Color(0xFFEE5602),
                fontSize: 13,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const Positioned(
  left: 17,
  top: 210,
  child: SizedBox(
    width: 288,
    child: Text.rich(
       TextSpan(
        children: [
          TextSpan(
            text: " 1. Technical Skills:\n",
            style: TextStyle(
              color: Color.fromARGB(255, 51, 1, 116),  // Dark blue color
              fontSize: 10,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700,
            ),
          ),
          TextSpan(
            text: " a. Basic Computer Literacy:\n",
            style: TextStyle(
               color: Color(0xFF414ECA),
              fontSize: 10,
              fontFamily: 'Nunito',
            ),
          ),
          TextSpan(
            text: "   i. Familiarity with using a computer, navigating operating systems (Windows, macOS, Linux), and using common software (browsers, word processors, etc.) is essential.\n",
            style: TextStyle(
              fontSize: 10,
              fontFamily: 'Nunito',
            ),
          ),
          TextSpan(
            text: " b. Logical Thinking:\n",
            style: TextStyle(
                color: Color(0xFF414ECA),
              fontSize: 10,
              fontFamily: 'Nunito',
            ),
          ),
          TextSpan(
            text: "   i. The ability to break down problems into logical steps and think algorithmically is crucial for programming.\n",
            style: TextStyle(
              fontSize: 10,
              fontFamily: 'Nunito',
            ),
          ),
          TextSpan(
            text: " c. Optional (but Beneficial):\n",
            style: TextStyle(
                color: Color(0xFF414ECA),
              fontSize: 10,
              fontFamily: 'Nunito',
            ),
          ),
          TextSpan(
            text: "   i. Prior Programming Experience: While not strictly necessary, some experience with another programming language can be helpful in understanding core programming concepts.\n",
            style: TextStyle(
              fontSize: 10,
              fontFamily: 'Nunito',
            ),
          ),
          TextSpan(
            text: " 2. Soft Skills:\n",
            style: TextStyle(
           color: Color.fromARGB(255, 51, 1, 116), 
              fontSize: 10,
              fontFamily: 'Nunito',
            ),
          ),
          TextSpan(
            text: "   a. Problem-Solving Skills:\n",
            style: TextStyle(
                color: Color(0xFF414ECA),
              fontSize: 10,
              fontFamily: 'Nunito',
            ),
          ),
          TextSpan(
            text: "     i. The ability to identify problems, analyze them, and develop solutions is essential for any programmer.\n",
            style: TextStyle(
              fontSize: 10,
              fontFamily: 'Nunito',
            ),
          ),
          TextSpan(
            text: "   b. Analytical Thinking:\n",
            style: TextStyle(
                color: Color(0xFF414ECA),
              fontSize: 10,
              fontFamily: 'Nunito',
            ),
          ),
          TextSpan(
            text: "     i. Being able to break down complex tasks into smaller, manageable steps is important for successful coding.\n",
            style: TextStyle(
              fontSize: 10,
              fontFamily: 'Nunito',
            ),
          ),
          TextSpan(
            text: "   c. Attention to Detail:\n",
            style: TextStyle(
                color: Color(0xFF414ECA),
              fontSize: 10,
              fontFamily: 'Nunito',
            ),
          ),
          TextSpan(
            text: "     i. Python relies heavily on proper syntax and structure. A keen eye for detail will help you write error-free code.\n",
            style: TextStyle(
              fontSize: 10,
              fontFamily: 'Nunito',
            ),
          ),
          TextSpan(
            text: "   d. Motivation and Self-Discipline:\n",
            style: TextStyle(
                color: Color(0xFF414ECA),
              fontSize: 10,
              fontFamily: 'Nunito',
            ),
          ),
          TextSpan(
            text: "     i. Learning to code takes time and effort. Being self-motivated and disciplined will help you stay on track and achieve your goals.\n",
            style: TextStyle(
              fontSize: 10,
              fontFamily: 'Nunito',
            ),
          ),
          TextSpan(
            text: " 3. Additional Tips:\n",
            style: TextStyle(
             color: Color.fromARGB(255, 51, 1, 116), 
              fontSize: 10,
              fontFamily: 'Nunito',
            ),
          ),
          TextSpan(
            text: "   a. Interest in Python and its Applications:\n",
            style: TextStyle(
                color: Color(0xFF414ECA),
              fontSize: 10,
              fontFamily: 'Nunito',
            ),
          ),
          TextSpan(
            text: "     i. Having a genuine interest in Python and the various fields it's used in (web development, data science, etc.) will make the learning process more enjoyable and engaging.\n",
            style: TextStyle(
              fontSize: 10,
              fontFamily: 'Nunito',
            ),
          ),
          TextSpan(
            text: "   b. Basic Math Skills:\n",
            style: TextStyle(
                color: Color(0xFF414ECA),
              fontSize: 10,
              fontFamily: 'Nunito',
            ),
          ),
          TextSpan(
            text: "     i. A solid understanding of basic mathematical concepts like arithmetic, algebra, and logic will be helpful for certain aspects of Python programming.",
            style: TextStyle(
              fontSize: 10,
              fontFamily: 'Nunito',
            ),
          ),
        ],
      ),
    ),
  ),
),

        ],
      ),
    );
  }
}
