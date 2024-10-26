import 'package:flutter/material.dart';
import 'package:syn_laundry/pages/notifikasi.dart';
import 'package:syn_laundry/themes/themes.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            child: Text(
              'Selamat Datang!',
              style: primaryTextStyle.copyWith(
                  fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ),
          actions: [
            InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Notifikasi()));
                },
                child: Icon(Icons.notifications))
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.only(left: 35, right: 35),
          children: [
            Text(
              'Mau Dibantu Apa Hari Ini?',
              style: secondaryTextStyle.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Stack(
              children: [
                Image.asset('assets/img-cta.png'),
                Positioned(
                    left: 20,
                    bottom: 80,
                    top: 80,
                    child: Text(
                      'Cucian',
                      style: whiteTextStyle.copyWith(
                          fontSize: 24, fontWeight: FontWeight.w700),
                    )),
                Positioned(
                  left: 20,
                  bottom: 80,
                  child: Text(
                    'Numpuk?',
                    style: whiteTextStyle.copyWith(
                        fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                ),
                Positioned(
                  left: 20,
                  bottom: 10,
                  child: Container(
                    width: 115,
                    height: 33,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Positioned(
                    left: 40,
                    bottom: 15,
                    child: Text(
                      'Ayo Cuci',
                      style: greenTextStyle.copyWith(
                          fontSize: 16, fontWeight: FontWeight.w700),
                    ))
              ],
            ),

            const SizedBox(
              height: 10,
            ),
            Text(
              'Layanan Kami!',
              style: primaryTextStyle.copyWith(fontSize: 18),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/img-laundry.png',
                      width: 150,
                      height: 150,
                    ),
                    Positioned(
                        left: 10,
                        bottom: 30,
                        child: Text(
                          'Laundry',
                          style: whiteTextStyle.copyWith(fontSize: 24),
                        )),
                    Positioned(
                        left: 10,
                        bottom: 10,
                        child: Text(
                          'IDR 5000/KG',
                          style: whiteTextStyle.copyWith(fontSize: 20),
                        )),
                  ],
                ),
                Stack(
                  children: [
                    Image.asset(
                      'assets/img-setrika.png',
                      width: 150,
                      height: 150,
                    ),
                    Positioned(
                        left: 10,
                        bottom: 30,
                        child: Text(
                          'Setrika',
                          style: whiteTextStyle.copyWith(
                            fontSize: 24,
                          ),
                        )),
                    Positioned(
                        left: 10,
                        bottom: 10,
                        child: Text(
                          'IDR 3000/Kg',
                          style: whiteTextStyle.copyWith(fontSize: 20),
                        ))
                  ],
                )
              ],
            ),
            // nah coba nihy

            const SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Image.asset('assets/img-drycleaning.png'),
                Positioned(
                    left: 10,
                    bottom: 35,
                    child: Text(
                      'Dry Cleaning',
                      style: whiteTextStyle.copyWith(
                        fontSize: 24,
                      ),
                    )),
                Positioned(
                    left: 10,
                    bottom: 10,
                    child: Text('IDR 10.000/Kg',
                        style: whiteTextStyle.copyWith(
                          fontSize: 20,
                        )))
              ],
            )
          ],
        ));
  }
}
