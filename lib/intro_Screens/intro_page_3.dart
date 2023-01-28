import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class intro_page_3 extends StatelessWidget {
  const intro_page_3({Key? key}) : super(key: key);

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

              const Text('paket bisa diterima dari jarak jauh dan sistem bisa dikontrol\n '
                  'dengan sebuah Aplikasi Sosial Media \n ',
                style: TextStyle(
                  color: Colors.black54,
                  fontFamily: 'Poppins',
                  fontSize: 10,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 40),
              Lottie.network('https://assets4.lottiefiles.com/private_files/lf30_lgRVxp.json'),
            ]
        ),

      ),
    );
  }
}

// Tidak perlu cemas jika status pengantaran paket kamu sudah dekat dari lokasi rumahmu
// karena smartbox dapat diakses dimana saja walau kamu tidak berada dirumah

