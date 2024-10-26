import 'package:flutter/material.dart';
import 'package:syn_laundry/themes/themes.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profil saya',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                'Edit Profil',
                style: greenTextStyle.copyWith(),
              ),
            ),
            Text(
              'Username',
              style: primaryTextStyle.copyWith(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              'Uzumaki Boruto',
              style: primaryTextStyle.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              'Email',
              style: primaryTextStyle.copyWith(fontWeight: FontWeight.w500),
            ),
            Text(
              'uzumakinaruto@gmail.com',
              style: primaryTextStyle.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              'Nomer Telepon',
              style: primaryTextStyle.copyWith(fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              '08136755676',
              style: primaryTextStyle.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              children: [
                Text(
                  'Reset Password',
                  style: primaryTextStyle.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
            SizedBox(
              height: 39,
            ),
            Text(
              'Logout',
              style: redTextStyle.copyWith(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
