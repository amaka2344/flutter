import 'package:flutter/material.dart';

class LiverDiseasePage extends StatefulWidget {
  const LiverDiseasePage({Key? key}) : super(key: key);

  @override
  LiverDiseasePageState createState() => LiverDiseasePageState();
}

class LiverDiseasePageState extends State<LiverDiseasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'LIVE R',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Caesar',
            fontSize: 30.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff011A2D),
      ),
      backgroundColor: const Color(0xff02243D),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 30.0,
          left: 20.0,
          right: 20.0,
          bottom: 0,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.85,
                  color: Colors.transparent,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.25,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('images/liverDiagram.png'),
                            ),
                          ),
                        ),
                        const Divider(),
                        Container(
                          padding: const EdgeInsets.only(
                            bottom: 2.5, // Space between underline and text
                          ),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.white,
                                width: 1.0, // Underline thickness
                              ),
                            ),
                          ),
                          // header text
                          child: const Text(
                            'WHAT IS A LIVER? WHAT IS ITS FUNCTION?',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Century Gothic',
                            ),
                          ),
                        ),
                        // text descr
                        const Text(
                          '    The liver plays an important role in many bodily functions from protein production and blood clotting to cholesterol, glucose (sugar), and iron metabolism.',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Century Gothic',
                          ),
                        ),
                        const Divider(), // give spave between top and bottom
                        // header text
                        const Text(
                          'What Causes Liver Disease?',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Century Gothic',
                          ),
                        ),
                        const Text(
                          '     Many diseases and conditions can affect the liver, for example, certain drugs like excessive amounts of acetaminophen, and acetaminophen combination medications like Vicodin and Norco, as well as statins, cirrhosis, alcohol abuse, hepatitis A, B, C, D, and E, infectious mononucleosis (Epstein Barr virus), nonalcoholic fatty liver disease (NASH), and iron overload (hemochromatosis).',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Century Gothic',
                          ),
                        ),
                        const Divider(), // give spave between top and bottom
                        Container(
                          padding: const EdgeInsets.only(
                            bottom: 2.5, // Space between underline and text
                          ),
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                color: Colors.white,
                                width: 1.0, // Underline thickness
                              ),
                            ),
                          ),
                          child: const Text(
                            'What are the signs and symptoms of liver disease?',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Century Gothic',
                            ),
                          ),
                        ),
                        const Text(
                          '     Many diseases and conditions can affect the liver, for example, certain drugs like excessive amounts of acetaminophen, and acetaminophen combination medications like Vicodin and Norco, as well as statins, cirrhosis, alcohol abuse, hepatitis A, B, C, D, and E, infectious mononucleosis (Epstein Barr virus), nonalcoholic fatty liver disease (NASH), and iron overload (hemochromatosis).',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Century Gothic',
                          ),
                        ),
                        const Divider() // give spave between top and bottom
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
