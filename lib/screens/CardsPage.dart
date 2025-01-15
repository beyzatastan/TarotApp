import 'package:cardsapp/screens/HomePage.dart';
import 'package:cardsapp/screens/LastCards.dart';
import 'package:cardsapp/screens/MenuPage.dart';
import 'package:cardsapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_svg/svg.dart';

class CardsPage extends StatefulWidget {
  const CardsPage({super.key});

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
 final Map<String, String> tarotKartResimleri = {
  // Major Arkana Kartları
  "Joker": "lib/assets/images/kartlar/joker.png",
  "Büyücü": 'lib/assets/images/kartlar/buyucu.png',
  "Azize": 'lib/assets/images/kartlar/azize.png',
  "İmparatoriçe": 'lib/assets/images/kartlar/imparatorice.png',
  "İmparator": 'lib/assets/images/kartlar/imparator.png',
  "Aziz": 'lib/assets/images/kartlar/aziz.png',
  "Aşıklar": 'lib/assets/images/kartlar/asiklar.png',
  "Savaş Arabası": 'lib/assets/images/kartlar/araba.png',
  "Güç": 'lib/assets/images/kartlar/guc.png',
  "Ermiş": 'lib/assets/images/kartlar/ermis.png',
  "Kader Çarkı": 'lib/assets/images/kartlar/kader.png',
  "Adalet": 'lib/assets/images/kartlar/adalet.png',
  "Asılan Adam": 'lib/assets/images/kartlar/asilanAdam.png',
  "Ölüm": 'lib/assets/images/kartlar/olum.png',
  "Denge": 'lib/assets/images/kartlar/denge.png',
  "Şeytan": 'lib/assets/images/kartlar/seytan.png',
  "Kule": 'lib/assets/images/kartlar/kule.png',
  "Yıldız": 'lib/assets/images/kartlar/yildiz.png',
  "Ay": 'lib/assets/images/kartlar/ay.png',
  "Güneş": 'lib/assets/images/kartlar/gunes.png',
  "Mahkeme": 'lib/assets/images/kartlar/mahkeme.png',
  "Dünya": 'lib/assets/images/kartlar/dunya.png',

  // Minor Arkana - Değnek Serisi
  "Değnek Ası": 'lib/assets/images/kartlar/degnek-asi.png',
  "Değnek 2'lisi": 'lib/assets/images/kartlar/degnek-ikilisi.png',
  "Değnek 3'lüsü": 'lib/assets/images/kartlar/degnek-uclusu.png',
  "Değnek 4'lüsü": 'lib/assets/images/kartlar/degnek-dortlusu.png',
  "Değnek 5'lisi": 'lib/assets/images/kartlar/degnek-beslisi.png',
  "Değnek 6'lısı": 'lib/assets/images/kartlar/degnek-altilisi.png',
  "Değnek 7'lisi": 'lib/assets/images/kartlar/degnek-yedilisi.png',
  "Değnek 8'lisi": 'lib/assets/images/kartlar/degnek-sekizlisi.png',
  "Değnek 9'lusu": 'lib/assets/images/kartlar/degnek-dokuzlusu.png',
  "Değnek 10'lusu": 'lib/assets/images/kartlar/degnek-onlusu.png',
  "Değnek Prensi": 'lib/assets/images/kartlar/degnek-prensi.png',
  "Değnek Şövalyesi": 'lib/assets/images/kartlar/degnek-sovalyesi.png',
  "Değnek Kraliçesi": 'lib/assets/images/kartlar/degnek-kralicesi.png',
  "Değnek Kralı": 'lib/assets/images/kartlar/degnek-krali.png',

  // Minor Arkana - Kupa Serisi
  "Kupa Ası": 'lib/assets/images/kartlar/kupa-asi.png',
  "Kupa 2'lisi": 'lib/assets/images/kartlar/kupa-ikilisi.png',
  "Kupa 3'lüsü": 'lib/assets/images/kartlar/kupa-uclusu.png',
  "Kupa 4'lüsü": 'lib/assets/images/kartlar/kupa-dortlusu.png',
  "Kupa 5'lisi": 'lib/assets/images/kartlar/kupa-beslisi.png',
  "Kupa 6'lısı": 'lib/assets/images/kartlar/kupa-altilisi.png',
  "Kupa 7'lisi": 'lib/assets/images/kartlar/kupa-yedilisi.png',
  "Kupa 8'lisi": 'lib/assets/images/kartlar/kupa-sekizlisi.png',
  "Kupa 9'lusu": 'lib/assets/images/kartlar/kupa-dokuzlusu.png',
  "Kupa 10'lusu": 'lib/assets/images/kartlar/kupa-onlusu.png',
  "Kupa Prensi": 'lib/assets/images/kartlar/kupa-prensi.png',
  "Kupa Şövalyesi": 'lib/assets/images/kartlar/kupa-sovalyesi.png',
  "Kupa Kraliçesi": 'lib/assets/images/kartlar/kupa-kralicesi.png',
  "Kupa Kralı": 'lib/assets/images/kartlar/kupa-krali.png',

  // Minor Arkana - Kılıç Serisi
  "Kılıç Ası": 'lib/assets/images/kartlar/kilic-asi.png',
  "Kılıç 2'lisi": 'lib/assets/images/kartlar/kilic-ikilisi.png',
  "Kılıç 3'lüsü": 'lib/assets/images/kartlar/kilic-uclusu.png',
  "Kılıç 4'lüsü": 'lib/assets/images/kartlar/kilic-dortlusu.png',
  "Kılıç 5'lisi": 'lib/assets/images/kartlar/kilic-beslisi.png',
  "Kılıç 6'lısı": 'lib/assets/images/kartlar/kilic-altilisi.png',
  "Kılıç 7'lisi": 'lib/assets/images/kartlar/kilic-yedilisi.png',
  "Kılıç 8'lisi": 'lib/assets/images/kartlar/kilic-sekizlisi.png',
  "Kılıç 9'lusu": 'lib/assets/images/kartlar/kilic-dokuzlusu.png',
  "Kılıç 10'lusu": 'lib/assets/images/kartlar/kilic-onlusu.png',
  "Kılıç Prensi": 'lib/assets/images/kartlar/kilic-prensi.png',
  "Kılıç Şövalyesi": 'lib/assets/images/kartlar/kilic-sovalyesi.png',
  "Kılıç Kraliçesi": 'lib/assets/images/kartlar/kilic-kralicesi.png',
  "Kılıç Kralı": 'lib/assets/images/kartlar/kilic-krali.png',

  // Minor Arkana - Tılsım Serisi
  "Tılsım Ası": 'lib/assets/images/kartlar/tilsim-asi.png',
  "Tılsım 2'lisi": 'lib/assets/images/kartlar/tilsim-ikilisi.png',
  "Tılsım 3'lüsü": 'lib/assets/images/kartlar/tilsim-uclusu.png',
  "Tılsım 4'lüsü": 'lib/assets/images/kartlar/tilsim-dortlusu.png',
  "Tılsım 5'lisi": 'lib/assets/images/kartlar/tilsim-beslisi.png',
  "Tılsım 6'lısı": 'lib/assets/images/kartlar/tilsim-altilisi.png',
  "Tılsım 7'lisi": 'lib/assets/images/kartlar/tilsim-yedilisi.png',
  "Tılsım 8'lisi": 'lib/assets/images/kartlar/tilsim-sekizlisi.png',
  "Tılsım 9'lusu": 'lib/assets/images/kartlar/tilsim-dokuzlusu.png',
  "Tılsım 10'lusu": 'lib/assets/images/kartlar/tilsim-onlusu.png',
  "Tılsım Prensi": 'lib/assets/images/kartlar/tilsim-prensi.png',
  "Tılsım Şövalyesi": 'lib/assets/images/kartlar/tilsim-sovalyesi.png',
  "Tılsım Kraliçesi": 'lib/assets/images/kartlar/tilsim-kralicesi.png',
  "Tılsım Kralı": 'lib/assets/images/kartlar/tilsim-krali.png',
};

 final majorArkanaKartlariResimleri = {
  "Joker": 'lib/assets/images/kartlar/joker.png',
  "Büyücü": 'lib/assets/images/kartlar/buyucu.png',
  "Azize": 'lib/assets/images/kartlar/azize.png',
  "İmparatoriçe": 'lib/assets/images/kartlar/imparatorice.png',
  "İmparator": 'lib/assets/images/kartlar/imparator.png',
  "Aziz": 'lib/assets/images/kartlar/aziz.png',
  "Aşıklar": 'lib/assets/images/kartlar/asiklar.png',
  "Savaş Arabası": 'lib/assets/images/kartlar/araba.png',
  "Güç": 'lib/assets/images/kartlar/guc.png',
  "Ermiş": 'lib/assets/images/kartlar/ermis.png',
  "Kader Çarkı": 'lib/assets/images/kartlar/kader.png',
  "Adalet": 'lib/assets/images/kartlar/adalet.png',
  "Asılan Adam": 'lib/assets/images/kartlar/asilanAdam.png',
  "Ölüm": 'lib/assets/images/kartlar/olum.png',
  "Denge": 'lib/assets/images/kartlar/denge.png',
  "Şeytan": 'lib/assets/images/kartlar/seytan.png',
  "Kule": 'lib/assets/images/kartlar/kule.png',
  "Yıldız": 'lib/assets/images/kartlar/yildiz.png',
  "Ay": 'lib/assets/images/kartlar/ay.png',
  "Güneş": 'lib/assets/images/kartlar/gunes.png',
  "Mahkeme": 'lib/assets/images/kartlar/mahkeme.png',
  "Dünya": 'lib/assets/images/kartlar/dunya.png',
};

final minorArkanaKartlariResimleri = {
  "Değnek Ası": 'lib/assets/images/kartlar/degnek-asi.png',
  "Değnek 2'lisi": 'lib/assets/images/kartlar/degnek-ikilisi.png',
  "Değnek 3'lüsü": 'lib/assets/images/kartlar/degnek-uclusu.png',
  "Değnek 4'lüsü": 'lib/assets/images/kartlar/degnek-dortlusu.png',
  "Değnek 5'lisi": 'lib/assets/images/kartlar/degnek-beslisi.png',
  "Değnek 6'lısı": 'lib/assets/images/kartlar/degnek-altilisi.png',
  "Değnek 7'lisi": 'lib/assets/images/kartlar/degnek-yedilisi.png',
  "Değnek 8'lisi": 'lib/assets/images/kartlar/degnek-sekizlisi.png',
  "Değnek 9'lusu": 'lib/assets/images/kartlar/degnek-dokuzlusu.png',
  "Değnek 10'lusu": 'lib/assets/images/kartlar/degnek-onlusu.png',
  "Değnek Prensi": 'lib/assets/images/kartlar/degnek-prensi.png',
  "Değnek Şövalyesi": 'lib/assets/images/kartlar/degnek-sovalyesi.png',
  "Değnek Kraliçesi": 'lib/assets/images/kartlar/degnek-kralicesi.png',
  "Değnek Kralı": 'lib/assets/images/kartlar/degnek-krali.png',

  // Minor Arkana - Kupa Serisi
  "Kupa Ası": 'lib/assets/images/kartlar/kupa-asi.png',
  "Kupa 2'lisi": 'lib/assets/images/kartlar/kupa-ikilisi.png',
  "Kupa 3'lüsü": 'lib/assets/images/kartlar/kupa-uclusu.png',
  "Kupa 4'lüsü": 'lib/assets/images/kartlar/kupa-dortlusu.png',
  "Kupa 5'lisi": 'lib/assets/images/kartlar/kupa-beslisi.png',
  "Kupa 6'lısı": 'lib/assets/images/kartlar/kupa-altilisi.png',
  "Kupa 7'lisi": 'lib/assets/images/kartlar/kupa-yedilisi.png',
  "Kupa 8'lisi": 'lib/assets/images/kartlar/kupa-sekizlisi.png',
  "Kupa 9'lusu": 'lib/assets/images/kartlar/kupa-dokuzlusu.png',
  "Kupa 10'lusu": 'lib/assets/images/kartlar/kupa-onlusu.png',
  "Kupa Prensi": 'lib/assets/images/kartlar/kupa-prensi.png',
  "Kupa Şövalyesi": 'lib/assets/images/kartlar/kupa-sovalyesi.png',
  "Kupa Kraliçesi": 'lib/assets/images/kartlar/kupa-kralicesi.png',
  "Kupa Kralı": 'lib/assets/images/kartlar/kupa-krali.png',

  // Minor Arkana - Kılıç Serisi
  "Kılıç Ası": 'lib/assets/images/kartlar/kilic-asi.png',
  "Kılıç 2'lisi": 'lib/assets/images/kartlar/kilic-ikilisi.png',
  "Kılıç 3'lüsü": 'lib/assets/images/kartlar/kilic-uclusu.png',
  "Kılıç 4'lüsü": 'lib/assets/images/kartlar/kilic-dortlusu.png',
  "Kılıç 5'lisi": 'lib/assets/images/kartlar/kilic-beslisi.png',
  "Kılıç 6'lısı": 'lib/assets/images/kartlar/kilic-altilisi.png',
  "Kılıç 7'lisi": 'lib/assets/images/kartlar/kilic-yedilisi.png',
  "Kılıç 8'lisi": 'lib/assets/images/kartlar/kilic-sekizlisi.png',
  "Kılıç 9'lusu": 'lib/assets/images/kartlar/kilic-dokuzlusu.png',
  "Kılıç 10'lusu": 'lib/assets/images/kartlar/kilic-onlusu.png',
  "Kılıç Prensi": 'lib/assets/images/kartlar/kilic-prensi.png',
  "Kılıç Şövalyesi": 'lib/assets/images/kartlar/kilic-sovalyesi.png',
  "Kılıç Kraliçesi": 'lib/assets/images/kartlar/kilic-kralicesi.png',
  "Kılıç Kralı": 'lib/assets/images/kartlar/kilic-krali.png',

  // Minor Arkana - Tılsım Serisi
  "Tılsım Ası": 'lib/assets/images/kartlar/tilsim-asi.png',
  "Tılsım 2'lisi": 'lib/assets/images/kartlar/tilsim-ikilisi.png',
  "Tılsım 3'lüsü": 'lib/assets/images/kartlar/tilsim-uclusu.png',
  "Tılsım 4'lüsü": 'lib/assets/images/kartlar/tilsim-dortlusu.png',
  "Tılsım 5'lisi": 'lib/assets/images/kartlar/tilsim-beslisi.png',
  "Tılsım 6'lısı": 'lib/assets/images/kartlar/tilsim-altilisi.png',
  "Tılsım 7'lisi": 'lib/assets/images/kartlar/tilsim-yedilisi.png',
  "Tılsım 8'lisi": 'lib/assets/images/kartlar/tilsim-sekizlisi.png',
  "Tılsım 9'lusu": 'lib/assets/images/kartlar/tilsim-dokuzlusu.png',
  "Tılsım 10'lusu": 'lib/assets/images/kartlar/tilsim-onlusu.png',
  "Tılsım Prensi": 'lib/assets/images/kartlar/tilsim-prensi.png',
  "Tılsım Şövalyesi": 'lib/assets/images/kartlar/tilsim-sovalyesi.png',
  "Tılsım Kraliçesi": 'lib/assets/images/kartlar/tilsim-kralicesi.png',
  "Tılsım Kralı": 'lib/assets/images/kartlar/tilsim-krali.png',
};

  
  String _selectedFilter = 'Tümü'; // Default filter

  @override
  Widget build(BuildContext context) {
   Map<String, String> filteredList = _selectedFilter == 'Tümü'
      ? tarotKartResimleri
      : _selectedFilter == 'Major Arkana'
          ? majorArkanaKartlariResimleri
          : minorArkanaKartlariResimleri;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Kartlar ve Anlamları',
          style: TextStyle(color: Colors.white, fontFamily: "CinzelDecorative"),
        ),
        backgroundColor: AppColors.primaryColor,actions: [
          IconButton(
            icon: const Icon(Icons.format_list_bulleted_sharp, color: Colors.white),
            onPressed: () {
             RenderBox renderBox = context.findRenderObject() as RenderBox;
              Offset position = renderBox.localToGlobal(Offset.zero);

              showMenu(
                context: context,
                surfaceTintColor: AppColors.primaryColor,
                position: RelativeRect.fromLTRB(position.dx + 200, position.dy + 100, 0, 0),
                items: [
                  const PopupMenuItem<String>(
                    value: 'Major Arkana',
                    child: Text('Major Arkana',style: TextStyle(fontFamily: "Poppins"),),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Minor Arkana',
                    child: Text('Minor Arkana',style: TextStyle(fontFamily: "Poppins"),),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Tümü',
                    child: Text('Tümü',style: TextStyle(fontFamily: "Poppins"),),
                  ),
                ], elevation: 8.0,
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
          final item = filteredList.keys.elementAt(index);
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
                           filteredList[item]!, 
                          fit: BoxFit.cover,
                           ),
                           ), ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item!,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Bu kartın anlamı: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum.',
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
                  MaterialPageRoute(builder: (context) => const LastCardsPage()),
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
