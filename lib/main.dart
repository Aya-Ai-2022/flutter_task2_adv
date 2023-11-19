/*import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fashion E-Commerce Signup',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const SignUpPage(),
    );
  }
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.purple, Colors.blue],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlutterLogo(
                  size: 100.0,
                  //colors: Colors.white,
                ),
                SizedBox(height: 20.0),
                _buildInputField("Full Name"),
                _buildInputField("Email"),
                _buildInputField("Password", isPassword: true),
                SizedBox(height: 20.0),
                _buildSignUpButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInputField(String label, {bool isPassword = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: TextField(
        obscureText: isPassword,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.white),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
        ),
      ),
    );
  }

  Widget _buildSignUpButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Add your signup logic here
      },
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: Colors.purple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Text(
          "Sign Up",
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pinky Fashion',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnimatedLogo(),
    );
  }
}

class AnimatedLogo extends StatefulWidget {
  const AnimatedLogo({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedLogoState createState() => _AnimatedLogoState();
}

class _AnimatedLogoState extends State<AnimatedLogo>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 1.0, end: 1.5).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: const Text(
            "Pinky Fashion",
            style: TextStyle(
              fontFamily: 'Pacifico', // Replace with your custom font
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}




import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pinky Fashion',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AuthPage(),
    );
  }
}

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            child: Image.network(
              'https://t3.ftcdn.net/jpg/02/93/86/94/240_F_293869400_1wQslfARl3UCsmwVacM2VYekMVIoPvbG.jpg', // Replace with your image URL
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Animated Logo
                TweenAnimationBuilder(
                  duration: Duration(seconds: 1),
                  tween: Tween<double>(begin: 0, end: 1),
                  builder: (context, value, child) {
                    return Opacity(
                      opacity: value,
                      child: child,
                    );
                  },
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            'https://cdn.dribbble.com/users/2519752/screenshots/10572101/media/355c568a53e00a20e1b857cd9bc92b94.gif'), // Replace with your logo image URL
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    // Add your login logic here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                ElevatedButton(
                  onPressed: () {
                    // Add your signup logic here
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.pink,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
*/

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Pinky Fashion',
//       theme: ThemeData(
//         primarySwatch: Colors.pink,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: AuthPage(),
//     );
//   }
// }

// class AuthPage extends StatefulWidget {
//   @override
//   _AuthPageState createState() => _AuthPageState();
// }

// class _AuthPageState extends State<AuthPage> {
//   bool isLogin = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background Image
//           Image.network(
//             'https://t3.ftcdn.net/jpg/02/65/25/96/240_F_265259686_Q9jycSHojSLvwCVL0jdw6Oy4ElXQ7oyO.jpg', // Replace with your image URL
//             fit: BoxFit.cover,
//             width: double.infinity,
//             height: double.infinity,
//           ),
//           Center(
//             child: SingleChildScrollView(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   // Animated Logo
//                   TweenAnimationBuilder(
//                     duration: Duration(seconds: 1),
//                     tween: Tween<double>(begin: 0, end: 1),
//                     builder: (context, value, child) {
//                       return Opacity(
//                         opacity: value,
//                         child: child,
//                       );
//                     },
//                   //   child: Container(
//                   //     width: 200,
//                   //     height: 200,
//                   //     decoration: BoxDecoration(        
//                   //       image: DecorationImage(
//                   //         image: NetworkImage(
//                   //             'https://example.com/pinky_fashion_logo.png'), // Replace with your logo image URL
//                   //         fit: BoxFit.contain,
//                   //       ),
//                   //     ),
//                   //   ),
//                   ),
//                   SizedBox(height: 20.0),
//                   _buildAuthForm(),
//                   SizedBox(height: 10.0),
//                   ElevatedButton(
//                     onPressed: () {
//                       // Add your authentication logic here
//                     },
//                     style: ElevatedButton.styleFrom(
//                       primary: Colors.white,
//                       onPrimary: Colors.pink,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30.0),
//                       ),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 20.0, vertical: 10.0),
//                       child: Text(
//                         isLogin ? "Login" : "Sign Up",
//                         style: TextStyle(fontSize: 18.0),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 10.0),
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         isLogin = !isLogin;
//                       });
//                     },
//                     child: Text(
//                       isLogin
//                           ? "Don't have an account? Sign Up"
//                           : "Already have an account? Login",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16.0,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildAuthForm() {
//     return Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: Column(
//         children: [
//           TextField(
//             decoration: InputDecoration(
//               hintText: 'Email',
//               hintStyle: TextStyle(color: Colors.white),
//               enabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.white),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.white),
//               ),
//             ),
//           ),
//           SizedBox(height: 10.0),
//           TextField(
//             obscureText: true,
//             decoration: InputDecoration(
//               hintText: 'Password',
//               hintStyle: TextStyle(color: Colors.white),
//               enabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.white),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.white),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Pinky Fashion',
//       theme: ThemeData(
//         primarySwatch: Colors.pink,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: AuthPage(),
//     );
//   }
// }

// class AuthPage extends StatefulWidget {
//   @override
//   _AuthPageState createState() => _AuthPageState();
// }

// class _AuthPageState extends State<AuthPage> {
//   bool isLogin = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background Gradient
//           Container(
//             decoration: BoxDecoration(
//               gradient: LinearGradient(
//                 colors: [Colors.pink, Colors.white],
//                 begin: Alignment.topLeft,
//                 end: Alignment.bottomRight,
//               ),
//             ),
//           ),
//           Center(
//             child: SingleChildScrollView(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   // Animated Logo with Text
//                   TweenAnimationBuilder(
//                     duration: Duration(seconds: 1),
//                     tween: Tween<double>(begin: 0, end: 1),
//                     builder: (context, value, child) {
//                       return Opacity(
//                         opacity: value,
//                         child: child,
//                       );
//                     },
//                     child: Container(
//                       padding: EdgeInsets.all(20.0),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(20.0),
//                       ),
//                       child: Text(
//                         "Pinky Shop",
//                         style: TextStyle(
//                           fontSize: 40.0,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.pinkAccent,
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 20.0),
//                   _buildAuthForm(),
//                   SizedBox(height: 10.0),
//                   ElevatedButton(
//                     onPressed: () {
//                       // Add your authentication logic here
//                     },
//                     style: ElevatedButton.styleFrom(
//                       primary: Colors.white,
//                       onPrimary: Colors.pink,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30.0),
//                       ),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(
//                           horizontal: 20.0, vertical: 10.0),
//                       child: Text(
//                         isLogin ? "Login" : "Sign Up",
//                         style: TextStyle(fontSize: 18.0),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 10.0),
//                   GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         isLogin = !isLogin;
//                       });
//                     },
//                     child: Text(
//                       isLogin
//                           ? "Don't have an account? Sign Up"
//                           : "Already have an account? Login",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16.0,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildAuthForm() {
//     return Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: Column(
//         children: [
//           TextField(
//             decoration: InputDecoration(
//               hintText: 'Email',
//               hintStyle: TextStyle(color: Colors.pink),
//               enabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.pink),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.pink),
//               ),
//             ),
//           ),
//           SizedBox(height: 10.0),
//           TextField(
//             obscureText: true,
//             decoration: InputDecoration(
//               hintText: 'Password',
//               hintStyle: TextStyle(color: Colors.pink),
//               enabledBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.pink),
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(color: Colors.pink),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pinky Fashion',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const AuthPage(),
    );
  }
}

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLogin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gradient Background
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.pink, Colors.white],
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Animated Logo
                  TweenAnimationBuilder(
                    duration: const Duration(seconds: 1),
                    tween: Tween<double>(begin: 0, end: 1),
                    builder: (context, value, child) {
                      return Opacity(
                        opacity: value,
                        child: child,
                      );
                    },
                    child: Container(
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [Colors.pink, Colors.purple],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Pinky Shop',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  _buildAuthForm(),
                  const SizedBox(height: 10.0),
                  ElevatedButton(
                    onPressed: () {
                      // Add your authentication logic here
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.pink, backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: Text(
                        isLogin ? "Login" : "Sign Up",
                        style: const TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isLogin = !isLogin;
                      });
                    },
                    child: Text(
                      isLogin
                          ? "Don't have an account? Sign Up"
                          : "Already have an account? Login",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
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

  Widget _buildAuthForm() {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: 'Email',
              hintStyle: TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.white),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


