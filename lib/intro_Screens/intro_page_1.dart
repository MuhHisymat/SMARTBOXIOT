import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class intro_page_1 extends StatelessWidget {
  const intro_page_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children :[
            const Text('SMARTBOX',
              style: TextStyle(
                color: Colors.brown,
                fontSize: 30,
                fontFamily: 'Compose',
              ),
            ),
            const SizedBox(height: 10),

            const Text('perangkat SMARTBOX terhubung dengan akses internet\n '
                'untuk dapat ter-hubung dengan pengguna.\n ',

              style: TextStyle(
                color: Colors.black54,
                fontFamily: 'Poppins',
                fontSize: 10,
              ),
              textAlign: TextAlign.center,
            ),
            Lottie.network('https://assets7.lottiefiles.com/packages/lf20_M3Uk5P.json'),
          ]
        ),

      ),
    );
  }
}
