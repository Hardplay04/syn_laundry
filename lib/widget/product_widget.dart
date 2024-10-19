import 'package:flutter/material.dart';
import 'package:syn_laundry/themes/themes.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget(
      {super.key,
      required this.imgUrl,
      required this.nama,
      required this.harga});

  //buat variabel agar bisa menerima nilai dari si pemakai class/widget ini
  final String imgUrl, nama, harga;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Stack(
        children: [
          Image.asset(
            imgUrl,
            width: 150,
            height: 165,
          ),
          Container(
            margin: const EdgeInsets.only(top: 60, left: 11),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  harga,
                  style: whiteTextStyle.copyWith(fontSize: 24),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  harga,
                  style: whiteTextStyle.copyWith(fontSize: 20),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
