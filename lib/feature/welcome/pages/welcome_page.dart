import 'package:flutter/material.dart';
import 'package:whatsapp_using_flutter/common/utils/coloors.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Coloors.backgroundDark,
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 50,
                  vertical: 10,
                ),
                child: Image.asset(
                  'assets/images/circle.jpg',
                  color: Coloors.greenDark,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Expanded(
            child: Column(
              children: [
                const Text(
                  'Welcome to Whatsapp',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 20,
                  ),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: 'Read out',
                      style: TextStyle(
                        color: Coloors.greyDark,
                        height: 1.5,
                      ),
                      children: [
                        TextSpan(
                          text: 'Privacy Policy',
                          style: TextStyle(
                            color: Coloors.blueDark,
                            height: 1.5,
                          ),
                        ),
                        TextSpan(
                          text: 'Tao "Agree and continue" to accept the',
                        ),
                        TextSpan(
                          text: 'Terms of Services',
                          style: TextStyle(
                            color: Coloors.blueDark,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 42,
                  width: MediaQuery.of(context).size.width - 100,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Coloors.greenDark,
                      foregroundColor: Coloors.backgroundDark,
                      splashFactory: NoSplash.splashFactory,
                      elevation: 0,
                      shadowColor: Colors.transparent,
                    ),
                    child: const Text('AGREE AND CONTINUE'),
                  ),
                ),
                const SizedBox(height: 50),
                Material(
                  color: Color(0xFF182229),
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(20),
                    splashFactory: NoSplash.splashFactory,
                    highlightColor: const Color(0xFF09141A),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(
                            Icons.language,
                            color: Color(0xFF00A884),
                          ),
                          SizedBox(width: 10),
                          Text(
                            'English',
                            style: TextStyle(
                              color: Color(0xFF00A884),
                            ),
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Color(0xFF00A884),
                          ),
                        ],
                      ),
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
