import 'package:flutter/material.dart';
import 'package:syn_laundry/themes/themes.dart';
import 'package:syn_laundry/widget/product_widget.dart';
import 'package:syn_laundry/widgets/product_widget.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // BARIS 1
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Row(
              children: [
                // sisi kiri
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Selamat Datang!",
                      style: primaryTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Mau dibantu apa hari ini?",
                      style: secondaryTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Spacer(), // mengambil sisa space
                // sisi kanan
                Icon(Icons.notifications),
              ],
            ),
          ),

          // BARIS 2
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Stack(
              // widget tumpukan
              children: [
                Image.asset('assets/img-cta.png'),
                Positioned(
                  top: 100,
                  left: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cucian",
                        style: whiteTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "Numpuk?",
                        style: whiteTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Container(
                        width: 115,
                        height: 33,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Ayo Cuci!",
                            style: greenTextStyle.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // BARIS 3
          Container(
            margin: EdgeInsets.only(top: 18, left: 20),
            child: Text(
              "Layanan Kami",
              style: primaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          // BARIS 4
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 18),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // memanggil widget yg sudah dibuat
                  ProductWidget(
                    imgUrl: "assets/img-laundry.png",
                    nama: "Laundry Regular",
                    harga: "IDR 5000 / Kg",
                  ),
                  ProductWidget(
                    imgUrl: "assets/img-setrika.png",
                    nama: "Laundry Plus Strika",
                    harga: "IDR 8000 / Kg",
                  ),
                  ProductWidget(
                    imgUrl: "assets/img-laundry.png",
                    nama: "Laundry Express",
                    harga: "IDR 10000 / Kg",
                  ),
                ],
              ),
            ),
          ),

          // BARIS 5
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 23),
            child: Stack(
              children: [
                Image.asset('assets/img-drycleaning.png'),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dry Cleaning",
                        style: whiteTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text("IDR 10000 / Kg",
                          style: whiteTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          )),
                    ],
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
