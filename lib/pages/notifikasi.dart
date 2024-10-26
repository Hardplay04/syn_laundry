import 'package:flutter/material.dart';
import 'package:syn_laundry/themes/themes.dart';

class Notifikasi extends StatelessWidget {
  const Notifikasi({super.key});

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
            'Notifikasi',
            style: primaryTextStyle.copyWith(
                fontSize: 24, fontWeight: FontWeight.w500),
          ),
          actions: [
            Text(
              'Tandai Dibaca',
              style: greenTextStyle.copyWith(fontWeight: FontWeight.w500),
            )
          ],
        ),
        body: ListView(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, top: 10),
                    decoration: BoxDecoration(color: greencolor),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hore!! Pesananmu sedang diproses',
                              style: primaryTextStyle.copyWith(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              'Cek pesananmu sekarang!',
                              style: primaryTextStyle.copyWith(
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/img-sukses.png',
                          height: 15,
                          width: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
