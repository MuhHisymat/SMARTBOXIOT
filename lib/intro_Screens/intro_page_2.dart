import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class intro_page_2 extends StatelessWidget {
  const intro_page_2({Key? key}) : super(key: key);

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

              const Text('Tidak perlu cemas jika status pengantaran \n '
              'paket kamu sudah dekat dari lokasi rumahmu\n',
                style: TextStyle(
                  color: Colors.black54,
                  fontFamily: 'Poppins',
                  fontSize: 10,
                ),
                textAlign: TextAlign.center,
              ),
              Lottie.network('https://assets4.lottiefiles.com/packages/lf20_ngfmgkrn.json'),
            ]
        ),

      ),
    );
  }
}

