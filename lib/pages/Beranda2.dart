import 'package:flutter/material.dart';
import 'package:syn_laundry/themes/themes.dart';

class Beranda2 extends StatelessWidget {
  const Beranda2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(
            'Selamat Datang',
            style: primaryTextStyle.copyWith(fontSize: 16),
          ),
          Text(
            'Mau Dibantu Apa Hari Ini?',
            style: secondaryTextStyle.copyWith(fontSize: 16),
          )
        ],
      ),
    );
  }
}
