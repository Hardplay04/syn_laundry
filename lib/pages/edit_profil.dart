import 'package:flutter/material.dart';
import 'package:syn_laundry/themes/themes.dart';

class EditProfil extends StatelessWidget {
  const EditProfil({super.key});

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
            'Edit Profil',
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
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: 'Uzumaki Boruto',
                    hintStyle:
                        primaryTextStyle.copyWith(fontWeight: FontWeight.bold),
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
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: 'uzumakiboruto@gmail.com',
                    hintStyle:
                        primaryTextStyle.copyWith(fontWeight: FontWeight.bold),
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
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: '081367055676',
                    hintStyle:
                        primaryTextStyle.copyWith(fontWeight: FontWeight.bold),
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
        ));
  }
}
