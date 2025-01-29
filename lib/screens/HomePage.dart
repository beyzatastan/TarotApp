import 'package:cardsapp/screens/CardsPage.dart';
import 'package:cardsapp/screens/LastCards.dart';
import 'package:cardsapp/screens/MenuPage.dart';
import 'package:cardsapp/screens/SingleCardPage.dart';
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
  final Map<String, String> kutuAciklamalari = {
  'Tek Kart Açılımı':
      'Hayatındaki sorulara hızlı ve etkili bir cevap arıyorsan, bu açılım tam sana göre! Hayatın bazen karmaşıklaştığında ya da anlık rehberliğe ihtiyaç duyduğunda, tek bir kart seçerek ruhunun derinliklerine ulaşabilirsin. Bu kart, o anki enerjini yansıtarak sana özel bir mesaj iletecek. Belki gününün nasıl geçeceğine dair bir ipucu, belki de iç sesine daha çok güvenmeni sağlayacak bir rehber olacak. Unutma, bazen tek bir kart bile kalbine dokunabilir ve sana ihtiyacın olan cevabı verebilir. Bu açılım, dostça bir fısıltı gibi sana yol gösterecek.',

  'Üç Kart Açılımı':
      'Geçmişin derslerini, bugünün gerçeklerini ve geleceğin potansiyelini keşfetmek ister misin? Üç kart açılımı tam da bunun için var! İlk kart, geçmişin derin izlerini ve bugünkü durumunu nasıl şekillendirdiğini anlamana yardımcı olur. İkinci kart, şu anın enerjisini, neyin ön planda olduğunu ve nelere odaklanman gerektiğini gösterir. Üçüncü kart ise geleceğin sana neler getirebileceğine dair bir pencere açar. Bu açılım, kendini ve yaşamındaki döngüleri anlamak için mükemmel bir araçtır. Her bir kart, sana farklı bir hikaye anlatacak ve içsel bir yolculuğa çıkmanı sağlayacak.',

  'Çapraz Açılımı':
      'Karar vermekte zorlanıyor musun? İki seçenek arasında sıkışıp kaldığında, çapraz açılım sana yol gösterebilir. Bu açılımda iki seçenek için birer kart seçilir ve ardından ikisini birden değerlendiren bir üçüncü kart açılır. İlk kart, birinci seçeneğin olumlu ve olumsuz yönlerini gösterirken; ikinci kart, diğer seçeneğin avantaj ve dezavantajlarını ortaya koyar. Üçüncü kart ise senin için en uygun yolu işaret eder. Hayatındaki küçük ya da büyük kararlarda rehberlik arıyorsan, çapraz açılım sana ışık tutacak ve en doğru seçimi yapmana yardımcı olacaktır.',

  'Dört Kart Açılımı':
      'Hayatındaki dört temel enerjiyi keşfetmek ister misin? Dört kart açılımı, geçmişin, şimdinin, geleceğin ve gizli etkilerin hayatındaki yerini anlamana yardımcı olacak. İlk kart, geçmişteki dersleri ve bugünkü durumunu nasıl şekillendirdiğini gösterir. İkinci kart, şu anki enerjini, odaklanman gereken noktaları ve çevresel etkileri yansıtır. Üçüncü kart, gelecekte seni bekleyen fırsatları ve zorlukları işaret eder. Dördüncü kart ise genellikle göremediğin gizli etkileri ve bilinçaltının mesajlarını ortaya çıkarır. Bu açılım, kendini ve hayatındaki enerjileri daha derinlemesine anlamak isteyenler için harika bir rehberdir.',

  'Kelt Açılımı':
      'En kapsamlı ve detaylı tarot açılımlarından biri olan Kelt açılımı, yaşamındaki tüm alanlara ışık tutar. Bu açılımda 10 kart seçilir ve her biri sana hayatındaki farklı bir konuyu açıklar. Geçmişteki etkilerden bilinçaltındaki enerjilere, çevresel faktörlerden gelecekteki potansiyellere kadar her şeyi kapsayan bu açılım, yaşamının büyük resmini görmene yardımcı olur. Karmaşık durumlar, büyük kararlar ve hayatının gidişatı hakkında netlik kazanmak istiyorsan, Kelt açılımı senin için mükemmel bir yol gösterici olacak. Her bir kart, derin bir bilgelik ve rehberlik sunar.',

  'Yıldız Açılımı':
      'Hayatındaki yıldızları ve evrenin sana sunduğu enerjileri keşfetmek ister misin? Yıldız açılımı, sana hayatının büyük resmini görme fırsatı sunar. Bu açılım, hayatta nereye doğru ilerlediğini ve evrenin sana sunduğu işaretleri anlamana yardımcı olur. Her kart, bir yıldız gibi parlayarak sana rehberlik eder ve yaşamındaki önemli olaylara ışık tutar. Bu açılım, içindeki yıldızın parlamasına izin vermen ve hayatının yönünü belirlemen için sana ilham verecek.',

  'Hayat Yolu Açılımı':
      'Yaşam yolculuğunda nerede olduğunu ve nereye gitmek istediğini keşfetmek için hazır mısın? Hayat yolu açılımı, ruhsal yolculuğunda karşılaşabileceğin engelleri ve fırsatları anlaman için harika bir araçtır. Bu açılım, yaşamındaki güçlü yönleri, üzerinde çalışman gereken alanları ve ruhsal gelişim yolunda atman gereken adımları işaret eder. Her kart, sana bir rehberlik sunar ve hayatının haritasını çizmene yardımcı olur. Bu açılım, içsel keşif ve kendini anlama yolculuğunda sana eşsiz bir rehber olacaktır.',

  'Element Açılımı':
      'Doğanın dört ana elementi olan toprak, hava, su ve ateşin enerjilerini keşfetmek ister misin? Bu açılım, her bir elementin hayatındaki etkisini ve enerjisini anlamana yardımcı olacak. Toprak kartı, fiziksel dünyanı ve maddi gerçeklikleri yansıtır. Hava kartı, düşüncelerini ve iletişim becerilerini gösterir. Su kartı, duygularını ve ilişkilerini ortaya çıkarır. Ateş kartı ise tutku, enerji ve hedeflerine olan bağlılığını işaret eder. Bu açılım, yaşamında denge kurmana ve doğayla uyum içinde olmanı sağlar.',

  'Karmic Açılımı':
      'Geçmiş yaşamların ve karmanın bugünkü hayatına olan etkilerini anlamaya hazır mısın? Bu açılım, ruhsal yolculuğunda daha derin bir anlayış kazanmanı sağlayacak. Her kart, geçmişten gelen bir mesaj taşır ve bugünkü hayatında nasıl bir rol oynadığını açıklar. Karmic açılım, ruhsal derslerini anlamana ve geçmişin etkilerini çözerek ileriye doğru adım atmana yardımcı olacak. Bu açılım, geçmişle bağlantı kurarak kendini daha iyi tanıman ve ruhsal gelişimini desteklemen için eşsiz bir fırsat sunar.'
};


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Align(
          alignment: Alignment.centerLeft, // Yazıyı sağa yaslar
          child: Text(
            'MYSTIFY',
            style: TextStyle(
              color: Colors.white,
              fontSize: 38,
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
                    color:
                        const Color.fromARGB(141, 34, 2, 44).withOpacity(0.7),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.white, width: 0),
                  ),
                  child: const Text(
                    "Merhaba Tatlım!\nBugün sana özel bir tarot açılımı seçmek ister misin? Her açılım farklı bir yolculuğa çıkmanı sağlayacak ve hayatındaki bazı sorulara ışık tutacak. Hangi açılımı seçersen seç o anın enerjisini seninle paylaşacak. Hadi, içinden geleni dinle ve birini seç!",
                    style: TextStyle(
                      fontFamily: 'PlayfairDisplay',
                      fontSize: 16, // Font büyüklüğünü artırdım
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      height: 1.6, // Satır yüksekliğini artırdım
                    ),
                    textAlign: TextAlign.justify, // Metni ortaladım
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
                  itemCount: kutuAciklamalari.length,
                  itemBuilder: (context, index) {
                    String key = kutuAciklamalari.keys.elementAt(index);
                    String value = kutuAciklamalari.values.elementAt(index);
                     return GestureDetector(
        onTap: () {
          // Her kutu için farklı bir sayfaya yönlendirme
         Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => SingleCardPage(
                    title: ' ${key}',
                    meaning: '${value}', // Kart ismi, örneğin: Kart 1
                  ),
    ),
  );
},
                    child:  Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("lib/assets/images/kart.png"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        border:
                            Border.all(color: AppColors.accentColor, width: 2),
                      ),
                      child: Center(
                        child: Text(
                         key,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ));
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
            IconButton(
                onPressed: () {},
                iconSize: 40,
                icon: SvgPicture.asset(
                  'lib/assets/icons/morMain.svg', // Diğer ikon için de geçerli
                  width: 40,
                  height: 40,
                )),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const CardsPage(),
                      transitionDuration: Duration(
                          seconds: 0), // Animasyon süresini sıfırlıyoruz
                    ),
                  );
                },
                iconSize: 40,
                icon: SvgPicture.asset(
                  'lib/assets/icons/griTarot.svg', // Diğer ikon için de geçerli
                  width: 40,
                  height: 40,
                )),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const LastCardsPage(),
                      transitionDuration: Duration(
                          seconds: 0), // Animasyon süresini sıfırlıyoruz
                    ),
                  );
                },
                iconSize: 40,
                icon: SvgPicture.asset(
                  'lib/assets/icons/griGecmis.svg', // Diğer ikon için de geçerli
                  width: 40,
                  height: 40,
                )),
            IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          const MenuPage(),
                      transitionDuration: Duration(
                          seconds: 0), // Animasyon süresini sıfırlıyoruz
                    ),
                  );
                },
                iconSize: 40,
                icon: SvgPicture.asset(
                  'lib/assets/icons/griMenu.svg', // Diğer ikon için de geçerli
                  width: 40,
                  height: 40,
                )),
          ],
        ),
      ),
    );
  }
}
