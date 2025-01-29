import 'package:cardsapp/screens/CardsPage.dart';
import 'package:cardsapp/screens/HomePage.dart';
import 'package:cardsapp/screens/LastCards.dart';
import 'package:cardsapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final List<String> tarotKartResimleri = [
    "Hesap Ayarların",
    "Kişisel Bilgilerin"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            'Uygulama Ayarların',
            style:
                TextStyle(color: Colors.white, fontFamily: "CinzelDecorative"),
          ),
          backgroundColor: AppColors.primaryColor),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/images/wallpaper.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
            itemCount: tarotKartResimleri.length,
            itemBuilder: (context, index) {
              final item = tarotKartResimleri[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                child: Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor.withOpacity(0.9),
                    boxShadow: const [],
                  ),
                  child: Row(
                    children: [
                      Container(
                        child: Text(
                          item,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
      bottomNavigationBar: BottomAppBar(
        color: AppColors.primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const HomePage(),
                    transitionDuration:
                        Duration(seconds: 0), // Animasyon süresini sıfırlıyoruz
                  ),
                );
              },
              iconSize: 40,
              icon: SvgPicture.asset(
                'lib/assets/icons/griMain.svg',
                width: 40,
                height: 40,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const CardsPage(),
                    transitionDuration:
                        Duration(seconds: 0), // Animasyon süresini sıfırlıyoruz
                  ),
                );
              },
              iconSize: 40,
              icon: SvgPicture.asset(
                'lib/assets/icons/griTarot.svg',
                width: 40,
                height: 40,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const LastCardsPage()),
                );
              },
              iconSize: 40,
              icon: SvgPicture.asset(
                'lib/assets/icons/griGecmis.svg',
                width: 40,
                height: 40,
              ),
            ),
            IconButton(
              onPressed: () {},
              iconSize: 40,
              icon: SvgPicture.asset(
                'lib/assets/icons/morMenu.svg',
                width: 40,
                height: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
