import 'package:cardsapp/utils/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Her kutu için yazılar
  final List<String> kutuYazilari = [
    'Tek Kart Açılımı', 'Üç Kart Açılımı', 'Çapraz Açılımı', 'Dört Kart Açılımı', 'İlişki Açılımı', 
    'Yıldız Açılımı', 'Hayat Yolu Açılımı', 'Element Açılımı', 'Karmic Açılımı'
  ];

  // Her kutu için arka plan renkleri
  final List<Color> kutuArkaPlanRenkleri = [
    Colors.red.withOpacity(0.6),
    Colors.blue.withOpacity(0.6),
    Colors.green.withOpacity(0.6),
    Colors.yellow.withOpacity(0.6),
    Colors.purple.withOpacity(0.6),
    Colors.orange.withOpacity(0.6),
    Colors.cyan.withOpacity(0.6),
    Colors.pink.withOpacity(0.6),
    Colors.brown.withOpacity(0.6),
  ];

  // Her kutu için arka plan resimleri
  final List<String> kutuResimleri = [
    "lib/assets/images/kart.png",
    "lib/assets/images/kart.png", 
    "lib/assets/images/kart.png",
    "lib/assets/images/kart.png",
    "lib/assets/images/kart.png", 
    "lib/assets/images/kart.png",
    "lib/assets/images/kart.png",
    "lib/assets/images/kart.png", 
    "lib/assets/images/kart.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height, // Ekran yüksekliği
        width: MediaQuery.of(context).size.width,   // Ekran genişliği
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/images/wallpaper.png"),// Görsel dosya yolu
            fit: BoxFit.cover, // Görselin tüm ekranı kaplamasını sağlar
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
  padding: const EdgeInsets.symmetric(horizontal: 0), // Yatay padding'i kaldır
  child: Container(
    width: double.infinity, // Yatayda tam genişlik
    height: 100, // Yükseklik 20 birim
    alignment: Alignment.center, // Ortalayarak hizalama
    decoration: BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(12),
        bottomRight: Radius.circular(12),
      ),
      border: Border.all(color: Colors.white, width: 0),
    ),
                  child: Text(
                      "Mistique",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.5,
              ),),)),
              const SizedBox(height: 20),
              // Yazı alanı (Kutu içinde)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  padding: const EdgeInsets.all(16.0), // Kutu içindeki boşluk
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white, width: 0),
                  ),
                  child: Text(
                    "Tarot, içsel rehberliğini keşfetmek ve hayatındaki önemli sorulara ışık tutmak için eski bir yöntemdir. Her kart, yaşamındaki farklı bir temayı, duyguyu ya da durumu yansıtır. Bu yolculuk, sana doğru yolu gösterir. Şimdi, bu mistik yolculuğa çık ve seni bekleyen bilgiyi keşfet.",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      height: 1.5, // Satır yüksekliği
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              // 9 kutucuk alanı
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(), // Scroll etkisini devre dışı bırak
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Her satırda 3 kutucuk
                  crossAxisSpacing: 10, // Kutu aralığı
                  mainAxisSpacing: 10, // Kutu arasındaki dikey mesafe
                ),
                itemCount: 9, // 9 kutucuk
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(kutuResimleri[index]), // Her kutu için arka plan resmi
                        fit: BoxFit.fill, // Resmi kutunun içine sığdırır
                      ),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColors.accentColor, width: 2),
                    ),
                    child: Center(
                      child: Text(
                        kutuYazilari[index], 
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryColor,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
