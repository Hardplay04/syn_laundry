import 'package:flutter/material.dart';
import 'package:syn_laundry/themes/themes.dart';

class Pesanan1 extends StatelessWidget {
  const Pesanan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Stack(
            children: [
              Image.asset('assets/img-empty.png'),
            ],
          ),
          SizedBox(
            height: 33,
          ),
          Text('Belum Ada\nPesanan..',
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center)
        ]),
      ),
    );
  }
}
