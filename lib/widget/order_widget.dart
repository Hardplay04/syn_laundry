import 'package:flutter/material.dart';
import 'package:syn_laundry/themes/themes.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget(
      {super.key,
      required this.layanan,
      required this.paket,
      required this.tanggal,
      required this.status});

  final String layanan, paket, tanggal, status;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: blackColor,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Layanan',
                      style: primaryTextStyle.copyWith(
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      layanan,
                      style: primaryTextStyle.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Tanggal',
                      style: primaryTextStyle.copyWith(
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      tanggal,
                      style: primaryTextStyle.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  width: 90,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Paket',
                      style: primaryTextStyle.copyWith(
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      paket,
                      style: primaryTextStyle.copyWith(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Status',
                      style: primaryTextStyle.copyWith(
                          fontWeight: FontWeight.w500),
                    ),
                    Text(status,
                        style: status == 'Diproses'
                            ? yellowTextStyle.copyWith(
                                fontSize: 18, fontWeight: FontWeight.w500)
                            : greenTextStyle.copyWith(
                                fontSize: 18, fontWeight: FontWeight.w500)),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
