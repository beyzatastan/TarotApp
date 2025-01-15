import 'package:cardsapp/screens/CardsPage.dart';
import 'package:cardsapp/screens/HomePage.dart';
import 'package:cardsapp/screens/MenuPage.dart';
import 'package:cardsapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';

class LastCardsPage extends StatefulWidget {
  const LastCardsPage({super.key});

  @override
  State<LastCardsPage> createState() => _LastCardsPageState();
}

class _LastCardsPageState extends State<LastCardsPage> {

  final Map<String, Map<String, String>> tarotKartResimleri = { 
    "Tek Kart Açılımı": { 
      "image": 'lib/assets/images/kartlar/joker.png', 
      "meaning": 'This card represents new beginnings, innocence, and spontaneity.', }};

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Geçmiş Açılımların',
          style: TextStyle(color: Colors.white, fontFamily: "CinzelDecorative"),
        ),
        backgroundColor: AppColors.primaryColor
      ),
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
         final itemKey = tarotKartResimleri.keys.elementAt(index); 
         final item = tarotKartResimleri[itemKey]!;
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4,
                        offset: Offset(2, 2),
                      )
                    ],
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 110,
                        height: 180,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Image.asset(
                           item['image']!,
                          fit: BoxFit.cover,
                           ),
                           ), ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              itemKey,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                             Text(
                              item['meaning']!,
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
          },
        ),
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
                  MaterialPageRoute(builder: (context) => const HomePage()),
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
              onPressed: () { Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CardsPage()),
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
              onPressed: () {},
              iconSize: 40,
              icon: SvgPicture.asset(
                'lib/assets/icons/morGecmis.svg',
                width: 40,
                height: 40,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MenuPage()),
                );
              },
              iconSize: 40,
              icon: SvgPicture.asset(
                'lib/assets/icons/griMenu.svg',
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