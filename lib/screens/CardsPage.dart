import 'package:cardsapp/screens/HomePage.dart';
import 'package:cardsapp/screens/LastCards.dart';
import 'package:cardsapp/screens/MenuPage.dart';
import 'package:cardsapp/utils/cards.dart';
import 'package:cardsapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CardsPage extends StatefulWidget {
  const CardsPage({super.key});

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  String _selectedFilter = 'Tümü'; // Default filter
  @override
  Widget build(BuildContext context) {
    Map<String, Map<String, String>> filteredList = _selectedFilter == 'Tümü'
        ? CardInfos().tumTarotKartlari
        : _selectedFilter == 'Major Arkana'
            ? CardInfos().majorArkanaKartlari
            : CardInfos().minorArkanaKartlari;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Kartlar ve Anlamları',
          style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontFamily: "CinzelDecorative"),
        ),
        backgroundColor: AppColors.primaryColor,
        actions: [
          IconButton(
            icon: const Icon(Icons.format_list_bulleted_sharp,
                color: Colors.white),
            onPressed: () {
              RenderBox renderBox = context.findRenderObject() as RenderBox;
              Offset position = renderBox.localToGlobal(Offset.zero);

              showMenu(
                context: context,
                surfaceTintColor: AppColors.primaryColor,
                position: RelativeRect.fromLTRB(
                    position.dx + 200, position.dy + 100, 0, 0),
                items: [
                  const PopupMenuItem<String>(
                    value: 'Major Arkana ',
                    child: Text('Major Arkana',
                        style: TextStyle(fontFamily: "Poppins")),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Minor Arkana ',
                    child: Text('Minor Arkana',
                        style: TextStyle(fontFamily: "Poppins")),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Tümü',
                    child: Text('Tüm Kartlar',
                        style: TextStyle(fontFamily: "Poppins")),
                  ),
                ],
                elevation: 8.0,
              ).then((value) {
                if (value != null) {
                  setState(() {
                    _selectedFilter = value;
                  });
                }
              });
            },
          ),
        ],
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
          itemCount: filteredList.length,
          itemBuilder: (context, index) {
            final itemKey =
                filteredList.keys.elementAt(index); // Kart ismi burada
            final item = filteredList[itemKey];

            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
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
                          item!["image"]!, // Correctly access the image
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            itemKey,
                            style: const TextStyle(
                              fontFamily: "Poppins",
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            item["meaning"]!, // Correctly access the meaning
                            style: const TextStyle(
                              fontFamily: "Poppins",
                              color: Colors.black87,
                              fontSize: 12,
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
              onPressed: () {},
              iconSize: 40,
              icon: SvgPicture.asset(
                'lib/assets/icons/morTarot.svg',
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
                        const LastCardsPage(),
                    transitionDuration:
                        Duration(seconds: 0), // Animasyon süresini sıfırlıyoruz
                  ),
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
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const MenuPage(),
                    transitionDuration:
                        Duration(seconds: 0), // Animasyon süresini sıfırlıyoruz
                  ),
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
