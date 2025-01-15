import 'package:cardsapp/screens/CardsPage.dart';
import 'package:cardsapp/screens/LastCards.dart';
import 'package:cardsapp/screens/MenuPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cardsapp/utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Her kutu için yazılar
  final List<String> kutuYazilari = [
    'Tek Kart Açılımı',
    'Üç Kart Açılımı',
    'Çapraz Açılımı',
    'Dört Kart Açılımı',
    'İlişki Açılımı',
    'Yıldız Açılımı',
    'Hayat Yolu Açılımı',
    'Element Açılımı',
    'Karmic Açılımı'
  ];

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      automaticallyImplyLeading: false,
      title: Align(
        alignment: Alignment.centerLeft, // Yazıyı sağa yaslar
        child: const Text(
          'MYSTIFY',
          style: TextStyle(
            color: Colors.white,
            fontSize: 52,
            fontFamily: "CinzelDecorative",
          ),
        ),
      ),
      backgroundColor: AppColors.primaryColor,
      toolbarHeight: 70, // AppBar boyutunu büyütür
    ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/images/wallpaper.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
  padding: const EdgeInsets.all(16.0),
  decoration: BoxDecoration(
    color: const Color.fromARGB(141, 34, 2, 44).withOpacity(0.7),
    borderRadius: BorderRadius.circular(8),
    border: Border.all(color: Colors.white, width: 0),
  ),
  child: const Text(
    "Merhaba Tatlım!\nBugün sana özel bir tarot açılımı seçmek ister misin? Her açılım farklı bir yolculuğa çıkmanı sağlayacak ve hayatındaki bazı sorulara ışık tutacak. Hangi açılımı seçersen seç o anın enerjisini seninle paylaşacak. Hadi, içinden geleni dinle ve birini seç!",
    style: TextStyle(
      fontFamily: 'PlayfairDisplay',
      fontSize: 16,  // Font büyüklüğünü artırdım
      fontWeight: FontWeight.w500,
      color: Colors.white,
      height: 1.6,  // Satır yüksekliğini artırdım
    ),
    textAlign: TextAlign.justify,  // Metni ortaladım
  ),
),
              ),

              // Kart kutuları
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 18,
                    mainAxisSpacing: 18,
                    childAspectRatio: 3 / 4,
                  ),
                  itemCount: kutuYazilari.length,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("lib/assets/images/kart.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppColors.accentColor, width: 2),
                      ),
                      child: Center(
                        child: Text(
                          kutuYazilari[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
bottomNavigationBar: BottomAppBar( 
  color: AppColors.primaryColor, 
child: Row(
   mainAxisAlignment: MainAxisAlignment.spaceBetween,
 children: [ 
    IconButton(onPressed: () {},
  iconSize: 40,icon: SvgPicture.asset(
                'lib/assets/icons/morMain.svg',  // Diğer ikon için de geçerli
                width: 40,
                height: 40,
  )), 
  IconButton(onPressed: () {
    Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CardsPage()),
                );
  },
  iconSize: 40,
  icon:SvgPicture.asset(
                'lib/assets/icons/griTarot.svg',  // Diğer ikon için de geçerli
                width: 40,
                height: 40,)),

 IconButton(onPressed: () {
  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LastCardsPage()),
                );
 },
  iconSize: 40,
  icon:SvgPicture.asset(
                'lib/assets/icons/griGecmis.svg',  // Diğer ikon için de geçerli
                width: 40,
                height: 40,)),
 IconButton(onPressed: () {
  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuPage()),
                );
 },
  iconSize: 40,
  icon:SvgPicture.asset(
                'lib/assets/icons/griMenu.svg',  // Diğer ikon için de geçerli
                width: 40,
                height: 40,)),  ], ), ), ); } }