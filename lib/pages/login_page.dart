import 'package:flutter/material.dart';
import 'package:syn_laundry/themes/themes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          //baris 1 =Image
          Image.asset('assets/img-login.png'),
          SizedBox(
            height: 37,
          ),

          //baris 2 = Text
          Center(
            child: Text(
              'Laundry Lebih Mudah!',
              style: primaryTextStyle.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          //Baris 3 = container
          Container(
            margin: EdgeInsets.only(top: 60, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'Masukan Username',
                      hintStyle: secondaryTextStyle,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(
                          color: greyColor,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: greyColor))),
                ),
                SizedBox(
                  height: 37,
                ),
                TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      suffix: Image.asset(
                        'assets/ic-eye.png',
                        width: 24,
                        height: 24,
                      ),
                      hintText: 'Masukkan Password',
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
                  height: 10,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    'Lupa Password',
                    style: greenTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(
                  height: 37,
                ),
                Container(
                  height: 50,
                  width: double.infinity,
                  margin: EdgeInsets.all(20),
                  child: TextButton(
                      style: TextButton.styleFrom(
                          backgroundColor: Color(0xFF4ABF92),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: null,
                      child: Text(
                        'Masuk',
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ],
            ),
          ),

          //baris 4 : Belum punya akun

          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Belum Punya Akun?',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  'Daftar',
                  style: greenTextStyle.copyWith(fontSize: 16),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}