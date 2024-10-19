import 'package:flutter/material.dart';
import 'package:syn_laundry/themes/themes.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: 10, right: 5, top: 5),
          child: Image.asset(
            'assets/ic-back.png',
            height: 20,
            width: 120,
          ),
        ),
        title: Text(
          'Persiapkan Akunmu',
          style: primaryTextStyle.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 10),
            child: Text(
              'Lengkapi semua informasi untuk membuat akun di syKlin.',
              style: secondaryTextStyle.copyWith(
                  fontSize: 16, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 0,
          ),
          Container(
            margin: EdgeInsets.only(top: 60, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'Masukkan Username',
                      hintStyle: secondaryTextStyle,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: greyColor)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: greyColor))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'Masukkan Nomer telepon',
                      hintStyle: secondaryTextStyle,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: greyColor)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: greyColor))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'Masukkan Email',
                      hintStyle: secondaryTextStyle,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: greyColor)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: greyColor))),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'Masukkan Password',
                      hintStyle: secondaryTextStyle,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: greyColor)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: greyColor))),
                ),
                SizedBox(
                  height: 200,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.all(20),
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0XFF4ABF92),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: null,
                      child: Text(
                        'Daftar',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'dengan mendaftar, anda setuju dengan syarat dan ketentuan aplikasi',
                        style: secondaryTextStyle.copyWith(fontSize: 10),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
