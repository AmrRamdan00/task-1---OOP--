import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // hides the debug banner
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(top: 28),
          child: IconButton(
            icon: Icon(Icons.arrow_back, size: 24),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 1- title ("Welcome !")
          const SizedBox(height: 3), // spacing from top
          Padding(
            padding: const EdgeInsets.only(
              left: 18,
            ), // same as IconButton default
            child: const Text(
              'Welcome!',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                fontSize: 25,
                color: Color(0xFFD692E3),
              ),
            ),
          ),

          // 2- subtitle
          const Padding(
            padding: EdgeInsets.only(left: 19, top: 0),
            child: Text(
              "Sign In To Countinue",
              style: TextStyle(
                fontFamily: "Poppins",
                fontWeight: FontWeight.w500,
                fontSize: 14,
              ),
            ),
          ),

          // 3- login fields (E-mail)
          const Padding(
            padding: EdgeInsets.only(left: 30, top: 8),
            child: Text(
              "Email",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xFF606060),
              ),
            ),
          ),

          SizedBox(height: 4), // for space

          Align(
            alignment: Alignment.center, // Center horizontally
            child: Container(
              width: 380,
              height: 55, // Adjust width to make it shorter
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),

              child: TextField(
                decoration: InputDecoration(
                  hintText: "E-mail....",
                  hintStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF999999),
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 14,
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 4), // for space
          // 4- login fields (paswword)
          const Padding(
            padding: EdgeInsets.only(left: 30, top: 8),
            child: Text(
              "Password",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xFF606060),
              ),
            ),
          ),

          SizedBox(height: 4), // for space

          Align(
            alignment: Alignment.center, // Center horizontally
            child: Container(
              width: 380,
              height: 55, // Adjust width to make it shorter
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "password....",
                  hintStyle: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF999999),
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 14,
                  ),
                ),
              ),
            ),
          ),

          SizedBox(height: 16), // for space
          // 5- Sign In button
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                // Your navigation logic here
              },
              style: ButtonStyle(
                minimumSize: WidgetStateProperty.all(
                  const Size(390, 60),
                ), // change size
                backgroundColor: WidgetStateProperty.all(
                  const Color(0xFFD692E3),
                ), // change color
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17), // change radius
                  ),
                ),
                textStyle: WidgetStateProperty.all(
                  const TextStyle(
                    // ??
                  ),
                ),
              ),

              child: const Text(
                "Sign In",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontFamily: "Poppins",
                  fontSize: 15,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
          ),

          SizedBox(height: 32), // for space
          //6 - Or sign with
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20),
            child: Row(
              children: [
                Expanded(child: Divider(color: Colors.black, thickness: 1)),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Or sign with",
                    style: TextStyle(
                      color: Color.fromARGB(118, 102, 101, 101),
                      fontFamily: "Poppins",
                      fontSize: 12,
                    ),
                  ),
                ),
                Expanded(child: Divider(color: Colors.black, thickness: 1)),
              ], // Row children
            ),
          ),

          // 6- Continue with Google & Facebook
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                // Your navigation logic here
              },
              style: ButtonStyle(
                minimumSize: WidgetStateProperty.all(
                  const Size(390, 60),
                ), // change size
                backgroundColor: WidgetStateProperty.all(
                  const Color.fromARGB(255, 255, 255, 255),
                ), // change color
                elevation: WidgetStateProperty.all(5), // shadow
                shadowColor: WidgetStateProperty.all(
                  Colors.grey.withOpacity(0.4),
                ),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17), // change radius
                  ),
                ),
                textStyle: WidgetStateProperty.all(
                  const TextStyle(
                    // ??
                  ),
                ),
              ),

              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.all(6), // space inside circle
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(
                        255,
                        255,
                        255,
                        255,
                      ), // circle background color
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: SvgPicture.asset(
                      'assets/icons/google-icon.svg',
                      height: 19,
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Continue with Google",
                    style: TextStyle(
                      color: Color.fromARGB(118, 102, 101, 101),
                      fontFamily: "Poppins",
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ], // row children
              ),
            ),
          ),

          SizedBox(height: 16), // for space
          Align(
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: () {
                // Your navigation logic here
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(390, 60),
                backgroundColor: Colors.white,
                elevation: 5,
                shadowColor: Colors.grey.withOpacity(0.4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    // Facebook icon
                    'assets/icons/Facebook-icon.svg',
                    height: 24,
                  ),

                  const SizedBox(width: 10),

                  const Text(
                    "Continue with Facebook",
                    style: TextStyle(
                      color: Color.fromARGB(118, 102, 101, 101),
                      fontFamily: "Poppins",
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ], // Row children
              ),
            ),
          ),

          SizedBox(height: 100), // for space

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 25),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Sigukljgrlktjopthrkho;",
                    style: TextStyle(
                      color: Color.fromARGB(118, 102, 101, 101),
                      fontFamily: "Poppins",
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ], // Coulmn children
      ),
    );
  }
}
