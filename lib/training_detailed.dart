import 'package:flutter/material.dart';
import 'package:task/assesment_detailed_view.dart';

//import 'package:task6/trainings.dart';

import 'package:task/pre_requirement.dart';
import 'package:task/training.dart';

class TrainingDetailed extends StatelessWidget {
  const TrainingDetailed({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Training()));
            },
            child: Image.asset('assets/images/Arrow back.png'),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Trainings',
          style: TextStyle(
            color: Color(0xFF260446),
            fontSize: 18,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w700,
            height: 0,
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => const TrainingDetailed()));
            },
            child: Container(
              width: 324,
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 114, vertical: 15),
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
                    'Remind Me',
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PreRequirements()));
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
                    'Check Pre-Requirements',
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => Assessments()));
            },
            child: Container(
              width: 324,
              height: 50,
              decoration: ShapeDecoration(
                color: Color(0xFF414ECA),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Center(
                child: Text(
                  'Start Assessment',
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
    );
  }

  Widget _buildBigContainer() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 360,
        height: 784,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFFD9D9D9)),
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
                    side: BorderSide(width: 1, color: Color(0xFFD9D9D9)),
                    borderRadius: BorderRadius.circular(12.50),
                  ),
                ),
                child: Center(
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
                      height: 0,
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
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: ' for ',
                          style: TextStyle(
                            color: Color(0xFF8B8B8B),
                            fontSize: 12.50,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: 'CE Thalassery',
                          style: TextStyle(
                            color: Color(0xFF077AD7),
                            fontSize: 12.50,
                            fontFamily: 'Nunito',
                            fontWeight: FontWeight.w700,
                            height: 0,
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
                  child: Divider(
                    height: 1.0,
                    color: Color(0xFFD9D9D9),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 85,
              top: 85,
              child: Text(
                'Dr. Subhash',
                style: TextStyle(
                  color: Color(0xFF8B8B8B),
                  fontSize: 12,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            Positioned(
              left: 158,
              top: 85,
              child: Text(
                '||',
                style: TextStyle(
                  color: Color(0xFF8B8B8B),
                  fontSize: 12,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            Positioned(
              left: 172,
              top: 85,
              child: Text(
                'IIT Madras',
                style: TextStyle(
                  color: Color(0xFF8B8B8B),
                  fontSize: 12,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                  height: 0,
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
                      side: BorderSide(width: 1, color: Color(0xFF414ECA)),
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  child: Row(
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
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 162,
              top: 114,
              child: Text(
                '07 Mar 2024; Thursday',
                style: TextStyle(
                  color: Color(0xFFF31919),
                  fontSize: 10,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                  height: 0,
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
                      side: BorderSide(width: 1, color: Color(0xFFEE5602)),
                      borderRadius: BorderRadius.circular(7),
                    ),
                  ),
                  child: Row(
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
                          height: 0,
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
                  child: Divider(
                    height: 1.0,
                    color: Color(0xFFD9D9D9),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 17,
              top: 195,
              child: Text(
                'Topics will Cover',
                style: TextStyle(
                  color: Color(0xFFEE5602),
                  fontSize: 13,
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
            Positioned(
              left: 17,
              top: 218,
              child: SizedBox(
                width: 288,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1. Introduction to Python',
                      style: TextStyle(
                        color: Color(0xFF414ECA),
                        fontSize: 10,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '• What is Python and why is it popular?\n• Setting up your Python development environment',
                      style: TextStyle(
                        color: Color(0xFF8B8B8B),
                        fontSize: 10,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 5),
                   Text(
            '2. Python Fundamentals',
            style: TextStyle(
              color: Color(0xFF414ECA),
              fontSize: 10,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 5), // Add space between numbered text and bullet points
          Text(
            '• Understanding basic syntax and data types (numbers, \n   strings, booleans, etc.)\n• Working with variables and operators (arithmetic, \n   comparison, logical)',
            style: TextStyle(
              color: Color(0xFF8B8B8B),
              fontSize: 10,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w600,
            ),
          ),
                              SizedBox(height: 5), // Add space between numbered text and bullet points
           SizedBox(height: 5), // Adjust the height as needed
          Text(
            '3. Control Flow',
            style: TextStyle(
              color: Color(0xFF414ECA),
              fontSize: 10,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 5), // Add space between numbered text and bullet points
          Text(
            '• Using conditional statements (if/else) for decision making\n• Implementing loops (for, while) for repetitive tasks',
            style: TextStyle(
              color: Color(0xFF8B8B8B),
              fontSize: 10,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w600,
            ),
          ),
           SizedBox(height: 5), // Adjust the height as needed
          Text(
            '4. Functions',
            style: TextStyle(
              color: Color(0xFF414ECA),
              fontSize: 10,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 5), // Add space between numbered text and bullet points
          Text(
            '• Defining and using functions to organize code\n• Understanding arguments and return values',
            style: TextStyle(
              color: Color(0xFF8B8B8B),
              fontSize: 10,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w600,
            ),
          ),
                              SizedBox(height: 5), // Add space between numbered text and bullet points
          SizedBox(height: 5), // Adjust the height as needed
          Text(
            '5. Data Structures',
            style: TextStyle(
              color: Color(0xFF414ECA),
              fontSize: 10,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 5), // Add space between numbered text and bullet points
          Text(
            '• Creating and manipulating lists, tuples, and dictionaries',
            style: TextStyle(
              color: Color(0xFF8B8B8B),
              fontSize: 10,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w600,
            ),
          ),
                               // Add space between numbered text and bullet points
          SizedBox(height: 5), // Adjust the height as needed
          Text(
            '6. Input and Output',
            style: TextStyle(
              color: Color(0xFF414ECA),
              fontSize: 10,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 5), // Add space between numbered text and bullet points
          Text(
            '• Getting user input using the input() function\n• Formatting and printing output to the console',
            style: TextStyle(
              color: Color(0xFF8B8B8B),
              fontSize: 10,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w600,
            ),
          ),
                               // Add space between numbered text and bullet points
          SizedBox(height: 5), // Adjust the height as needed
          Text(
            '7. Debugging Techniques',
            style: TextStyle(
              color: Color(0xFF414ECA),
              fontSize: 10,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 5), // Add space between numbered text and bullet points
          Text(
            '• Identifying and fixing errors in your Python code',
            style: TextStyle(
              color: Color(0xFF8B8B8B),
              fontSize: 10,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w600,
            ),
          ),
                              SizedBox(height: 5), // Add space between numbered text and bullet points
          SizedBox(height: 5), // Adjust the height as needed
          Text(
            '8. Additional Topics (Optional)',
            style: TextStyle(
              color: Color(0xFF414ECA),
              fontSize: 10,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 5), // Add space between numbered text and bullet points
          Text(
            '• Introduction to file handling (reading and writing to files)\n• Basic modules and packages in Python',
            style: TextStyle(
              color: Color(0xFF8B8B8B),
              fontSize: 10,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w600,
            ),
          ),
                              SizedBox(height: 5), // Add space between numbered text and bullet points
          SizedBox(height: 5), // Adjust the height as needed
          Text(
            '9. Practice and Next Steps',
            style: TextStyle(
              color: Color(0xFF414ECA),
              fontSize: 10,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 5), // Add space between numbered text and bullet points
          Text(
            '• Resources for further learning and practice exercises\n• Exploring potential applications of Python',
            style: TextStyle(
              color: Color(0xFF8B8B8B),
              fontSize: 10,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.w600,
            ),
          ),
                              SizedBox(height: 8), // Add space between numbered text and bullet points
          Text(
             'This training will equip you with the essential building blocks of Python programming. By the end, you\'ll be able to write simple Python programs and have a strong foundation for further learning.',
                                style: TextStyle(
                                  color: Color(0xFF8B8B8B),
                                  fontSize: 10,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
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