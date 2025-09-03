// import 'package:flutter/material.dart';

// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         // Animated gradient background
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [
//               Color(0xFF1a2a22),
//               Color(0xFF111714),
//               Color(0xFF1f3a2c),
//               Color(0xFF111714),
//             ],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Stack(
//           children: [
//             // Center Icon
//             Center(
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Icon(
//                     Icons.chat_bubble_rounded,
//                     color: Color(0xFF38e07b),
//                     size: 96,
//                   ),
//                 ],
//               ),
//             ),

//             // Bottom loader + text
//             Positioned(
//               bottom: 80,
//               left: 0,
//               right: 0,
//               child: Column(
//                 children: [
//                   // Loading bar
//                   Container(
//                     width: 64,
//                     height: 6,
//                     decoration: BoxDecoration(
//                       color: Colors.grey.shade700,
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Align(
//                       alignment: Alignment.centerLeft,
//                       child: FractionallySizedBox(
//                         widthFactor: 0.3,
//                         child: Container(
//                           decoration: BoxDecoration(
//                             color: Color(0xFF38e07b),
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 12),
//                   const Text(
//                     "Connecting...",
//                     style: TextStyle(
//                       color: Colors.grey,
//                       fontSize: 14,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  // Brand colors (can later move to core/constants/app_colors.dart)
  static const Color brandGreen = Color(0xFF38e07b);
  static const Color darkBg1 = Color(0xFF1a2a22);
  static const Color darkBg2 = Color(0xFF111714);
  static const Color darkBg3 = Color(0xFF1f3a2c);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Gradient background
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [darkBg1, darkBg2, darkBg3, darkBg2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Stack(
          children: [
            // Center Icon
            const Center(
              child: Icon(
                Icons.chat_bubble_rounded,
                color: brandGreen,
                size: 96,
              ),
            ),

            // Bottom loader + text
            Positioned(
              bottom: 80,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  // Loading bar
                  Container(
                    width: 64,
                    height: 6,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade700,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Align(
                      alignment: Alignment.centerLeft,
                      child: FractionallySizedBox(
                        widthFactor: 0.3,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: brandGreen,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "Connecting...",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
