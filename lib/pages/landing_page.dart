import 'package:flutter/material.dart';
import 'package:syn_laundry/pages/beranda.dart';
import 'package:syn_laundry/pages/list_order_page.dart';
import 'package:syn_laundry/pages/profil_page.dart';
import 'package:syn_laundry/themes/themes.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  //siapkan variable untuk sebagai wadah nilai awal index
  int selectedIndex = 0;

  //variable untuk menampung screen/page yang akan dipakai

  static List<Widget> screenlist = [Beranda(), ListOrderPage(), ProfilPage()];

  //fungsi app

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
              icon: Image.asset(
                width: 18,
                height: 18,
                'assets/ic-pesanan.png',
              ),
              label: 'Pesanan'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
              ),
              label: 'Profile'),
        ],
        //atribut konfigurasi
        currentIndex: selectedIndex,
        selectedItemColor: primaryColor,
        unselectedItemColor: greyColor,
        onTap: onItemTapped,
        backgroundColor: whiteColor,
        type: BottomNavigationBarType.fixed,
      ),
      body: screenlist.elementAt(selectedIndex),
    );
  }
}
