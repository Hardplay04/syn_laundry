import 'package:flutter/material.dart';
import 'package:syn_laundry/themes/themes.dart';

class InformasiPesananPage extends StatefulWidget {
  const InformasiPesananPage({super.key});

  @override
  State<InformasiPesananPage> createState() => _InformasiPesananPageState();
}

class _InformasiPesananPageState extends State<InformasiPesananPage> {
  //siapkan variable untuk menampung nilai default pada pilihan dropdown

  String layanan = 'Laundry';

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
          'Informasi Pesanan',
          style: primaryTextStyle.copyWith(
              fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 54, left: 20, right: 20),
        child: ListView(
          children: [
            Text(
              'Layanan',
              style: primaryTextStyle.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 6,
            ),
            DropdownButtonFormField<String>(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: greyColor)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: greyColor))),
                value: layanan,
                items: <String>['Laundry', 'Setrika']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: primaryTextStyle,
                    ),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    layanan = newValue!;
                  });
                }),
            SizedBox(
              height: 12,
            ),
            Text(
              'Nama Pemesan',
              style: primaryTextStyle.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'Masukan Nama Lengkap',
                  hintStyle: secondaryTextStyle,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: greyColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: greyColor))),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Nomer Telepon',
              style: primaryTextStyle.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'Masukan Nomer Telepon',
                  hintStyle: secondaryTextStyle,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: greyColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: greyColor))),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Alamat Penjemputan',
              style: primaryTextStyle.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 6,
            ),
            TextFormField(
              maxLines: 4,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'Masukan Alamat Anda',
                  hintStyle: secondaryTextStyle,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: greyColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: greyColor))),
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
              'Lanjut',
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
