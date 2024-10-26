import 'package:flutter/material.dart';
import 'package:syn_laundry/themes/themes.dart';
import 'package:syn_laundry/widget/order_widget.dart';

class ListOrderPage extends StatelessWidget {
  const ListOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Pemesanan',
          style: primaryTextStyle.copyWith(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
              margin: EdgeInsets.only(top: 50, left: 20),
              child: Text(
                'Dalam Proses',
                style: primaryTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              )),

          //baris 2
          OrderWidget(
            layanan: 'Laundry',
            paket: 'Reguler',
            tanggal: '10/09/2024',
            status: 'Diproses',
          ),

          Container(
            margin: EdgeInsets.only(top: 40, left: 20),
            child: Text(
              'Riwayat Pemesanan',
              style: primaryTextStyle.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          OrderWidget(
            layanan: 'Laundry',
            paket: 'Reguler',
            tanggal: '12/08/2024',
            status: 'Selesai',
          ),
          OrderWidget(
            layanan: 'Laundry',
            paket: 'Reguler',
            tanggal: '24/08/2024',
            status: 'Selesai',
          )
        ],
      ),
    );
  }
}
