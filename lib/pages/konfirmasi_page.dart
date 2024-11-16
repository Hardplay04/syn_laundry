import 'package:flutter/material.dart';
import 'package:syn_laundry/themes/themes.dart';

class KonfirmasiPage extends StatelessWidget {
  const KonfirmasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: 10, right: 10, top: 5),
          child: Image.asset(
            'assets/ic-back.png',
            height: 20,
            width: 120,
          ),
        ),
        title: Text(
          'Konfirmasi Pesanan',
          style: primaryTextStyle.copyWith(
              fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            Row(children: [
              Text(
                'Layanan :',
                style: primaryTextStyle.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                'Laundry',
                style: primaryTextStyle.copyWith(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ]),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  'Nama Pemesan :',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 5,
                ),
                Text('Uzumaki Boruto',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(children: [
              Text(
                'Nomer Telepon :',
                style: primaryTextStyle.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '0813670556763',
                style: primaryTextStyle.copyWith(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ]),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  'Alamat :',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                    'jalan sei itam no12 pos:30139\nkelurahan No.rw007, Bukit Lama,\nKec. Ilir Bar. I, Kota Palembang,\nSumatera Selatan 30151',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  'Berat Pesanan :',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 5,
                ),
                Text('1 Kg',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(children: [
              Text(
                'Waktu Pengambilan :',
                style: primaryTextStyle.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '10/09/2024',
                style: primaryTextStyle.copyWith(
                    fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ]),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  'Paket :',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 5,
                ),
                Text('Reguler',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.bold))
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  'Pembayaran :',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Tunai',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              width: 320,
              height: 220,
              decoration: BoxDecoration(
                  color: greencolor, borderRadius: BorderRadius.circular(15)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Informasi Pesanan',
                      style: primaryTextStyle.copyWith(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    '* Total pembayaran akan direkap oleh tim saat penjemputan dan penimbangan',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Text(
                    '* Nota pembayaran diberikan setelah cucian diterima beres setelah pengantaran',
                    style: primaryTextStyle.copyWith(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 24, left: 20, right: 20),
        width: double.infinity,
        height: 50,
        child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Color(0XFF4ABF92),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            onPressed: null,
            child: Text(
              'Konfirmasi',
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
