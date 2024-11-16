import 'package:flutter/material.dart';
import 'package:syn_laundry/themes/themes.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
          'Reset Password',
          style: primaryTextStyle.copyWith(
              fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 43),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  suffixIcon: Image.asset(
                    'assets/ic-eye.png',
                    width: 24,
                    height: 24,
                  ),
                  hintText: 'Masukkan Password Lama',
                  hintStyle: secondaryTextStyle,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: greyColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: greyColor))),
            ),
            SizedBox(
              height: 23,
            ),
            TextFormField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  suffixIcon: Image.asset(
                    'assets/ic-eye.png',
                    width: 24,
                    height: 24,
                  ),
                  hintText: 'Masukkan Password Baru',
                  hintStyle: secondaryTextStyle,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: greyColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: greyColor))),
            ),
            SizedBox(
              height: 23,
            ),
            TextFormField(
              obscureText: true,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  suffixIcon: Image.asset(
                    'assets/ic-eye.png',
                    width: 24,
                    height: 24,
                  ),
                  hintText: 'Masukkan Password Baru',
                  hintStyle: secondaryTextStyle,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: greyColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: greyColor))),
            ),
          ],
        ),
      ),
    );
  }
}
