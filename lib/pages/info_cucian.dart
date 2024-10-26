import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syn_laundry/themes/themes.dart';

class InfoCucian extends StatefulWidget {
  const InfoCucian({super.key});

  @override
  State<InfoCucian> createState() => _InfoCucianState();
}

class _InfoCucianState extends State<InfoCucian> {
  // variable untuk menampung inputan pada kolom
  TextEditingController dateInput = TextEditingController();

  String MetodeBayar = 'Tunai';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dateInput.text = "";
  }

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
        margin: EdgeInsets.only(
          top: 54,
          left: 20,
          right: 20,
        ),
        child: ListView(
          children: [
            Text(
              'Perkiraan Berat Cucian',
              style: primaryTextStyle.copyWith(
                  fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Kg'),
                  ),
                  hintText: 'Masukan Berat Cucian',
                  hintStyle: secondaryTextStyle,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: greyColor)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: greyColor))),
            ),
            Text(
              '*Tim kami akan menimbang kembali berat cucian',
              style: secondaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic),
            ),
            Text(
              'Waktu Pengambilan',
              style: primaryTextStyle.copyWith(
                  fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.date_range),
                    hintText: 'dd/mm/yyy',
                    hintStyle: secondaryTextStyle,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: greyColor)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: greyColor))),
                readOnly: true,
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2100));

                  if (pickedDate != null) {
                    String formattedDate =
                        DateFormat('dd-MM-yyyy').format(pickedDate);
                    setState(() {
                      dateInput.text = formattedDate;
                    });
                  }
                }),
            SizedBox(
              height: 6,
            ),
            Text(
              'Pilih Paket',
              style: primaryTextStyle.copyWith(
                  fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Container(
              decoration: BoxDecoration(
                  color: primaryColor, borderRadius: BorderRadius.circular(15)),
              height: 73,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Reguler',
                          style: primaryTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '(Lebih Hemat)',
                          style: secondaryTextStyle.copyWith(
                            fontStyle: FontStyle.italic,
                          ),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Text('IDR 5K'),
                  Checkbox(
                      value: false,
                      onChanged: (value) {
                        setState(() {});
                      })
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: blackColor),
                borderRadius: BorderRadius.circular(15),
              ),
              height: 73,
              width: double.infinity,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Express',
                          style: primaryTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '(Langsung Jemput Tanpa Antri)',
                          style: secondaryTextStyle.copyWith(
                            fontStyle: FontStyle.italic,
                          ),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Text('IDR 10K'),
                  Checkbox(
                      value: false,
                      onChanged: (value) {
                        setState(() {});
                      })
                ],
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Text(
              'Metode Pembayaran',
              style: primaryTextStyle.copyWith(
                  fontSize: 18, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 7,
            ),
            DropdownButtonFormField<String>(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: greyColor)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: greyColor))),
                value: MetodeBayar,
                items: <String>['Tunai', 'Transfer']
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
                    MetodeBayar = newValue!;
                  });
                }),
            Container(
              margin: EdgeInsets.only(
                left: 10,
              ),
              child: Text(
                '*Bayar Setelah Beres',
                style: secondaryTextStyle.copyWith(fontStyle: FontStyle.italic),
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
              'Lanjut',
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
  }
}
