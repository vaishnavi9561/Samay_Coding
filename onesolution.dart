import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'One Solution',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Determine the screen size and device type
    double screenWidth = MediaQuery.of(context).size.width;
    double scaleFactor = screenWidth / 375; // Base scale for mobile
    if (screenWidth >= 600 && screenWidth < 1024) {
      scaleFactor = screenWidth / 768; // Base scale for tablet
    } else if (screenWidth >= 1024) {
      scaleFactor = screenWidth / 1440; // Base scale for desktop
    }

    bool isMobile = screenWidth < 600;
    bool isTablet = screenWidth >= 600 && screenWidth < 1024;
    bool isDesktop = screenWidth >= 1024;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(16 * scaleFactor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Streamline\nYour\nBusiness\nAt one place',
                      style: TextStyle(
                        color: Color(0xBF1F1616),
                        fontSize: isDesktop ? 80 : (isTablet ? 60 : 40) * scaleFactor,
                        fontFamily: 'Poppins',
                        height: 1.2,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 32 * scaleFactor),
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(16 * scaleFactor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: isDesktop ? 400 : (isTablet ? 300 : 150) * scaleFactor,
                      height: isDesktop ? 200 : (isTablet ? 150 : 100) * scaleFactor,
                      child: Text(
                        'ONE',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFF0C421F),
                          fontSize: isDesktop ? 200 : (isTablet ? 150 : 80) * scaleFactor,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          height: 1.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 8 * scaleFactor),
                    Text(
                      'SOLUTION',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF0C421F),
                        fontSize: isDesktop ? 100 : (isTablet ? 60 : 40) * scaleFactor,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        height: 1.0,
                      ),
                    ),
                    SizedBox(height: 32 * scaleFactor),
                    GestureDetector(
                      onTap: () {
                        // Handle button tap
                        print('Register button tapped!');
                        // You can add navigation logic or other actions here
                      },
                      child: Container(
                        width: isDesktop ? 600 : (isTablet ? 300 : 150) * scaleFactor,
                        height: isDesktop ? 150 : (isTablet ? 80 : 50) * scaleFactor,
                        padding: EdgeInsets.symmetric(horizontal: 16 * scaleFactor, vertical: 8 * scaleFactor),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: Color(0xFF06240A),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Color(0xFF4CF753)),
                            borderRadius: BorderRadius.circular(20 * scaleFactor),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 10 * scaleFactor,
                              offset: Offset(0, -1 * scaleFactor),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                        child: Center(
                          child: Text(
                            'Register your business',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: isDesktop ? 36 : (isTablet ? 24 : 18) * scaleFactor,
                              fontFamily: 'Roboto Slab',
                              fontWeight: FontWeight.w500,
                              height: 1.2,
                            ),
                            textAlign: TextAlign.center,
                          ),
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
    );
  }
}
