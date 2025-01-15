import 'package:cardsapp/screens/HomePage.dart';
import 'package:cardsapp/screens/SingleCardPage';
import 'package:cardsapp/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController(); // Sayfaları kontrol etmek için
  final int _totalPages = 3; // Toplam sayfa sayısı

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            children: [
              // Kaydırılabilir sayfalar için PageView
              PageView(
                controller: _pageController,
                children: [
                  buildPage(
                    image: CupertinoIcons.moon_fill,
                    title: "Hoş Geldin",
                    description: "Zamanın ötesindeki gücünü hisset, kaderin sana ne fısıldıyor?",
                    color: AppColors.secondaryColor,
                  ),
                  buildPage(
                    image: CupertinoIcons.flame_fill,
                    title: "Uyan",
                    description: "Kartlar senin için konuşacak, tek yapman gereken dinlemek.",
                    color: AppColors.secondaryColor,
                  ),
                  // Son sayfada buton ekliyoruz
                  buildLastPage(
                    image: Icons.auto_awesome,
                    title: "Uyan",
                    description: "Hazırsan, kaderinin kapılarını aralıyoruz!",
                    color: AppColors.secondaryColor,
                  ),
                ],
              ),
              // Sayfa göstergesi (SmoothPageIndicator)
              Positioned(
                bottom: 20,
                left: 0,
                right: 0,
                child: Center(
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: _totalPages,
                    effect: const WormEffect(
                      dotColor: Colors.grey,
                      activeDotColor: AppColors.primaryColor,
                      dotHeight: 12,
                      dotWidth: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Standart sayfa tasarımı
  Widget buildPage({
    required IconData image,
    required String title,
    required String description,
    required Color color,
  }) {
    return Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            image,
            size: 150,
            color: Colors.white,
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
        ],
      ),
    );
  }

  // Son sayfa tasarımı (Buton eklenmiş hali)
  Widget buildLastPage({
    required IconData image,
    required String title,
    required String description,
    required Color color,
  }) {
    return Container(
      color: color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            image,
            size: 150,
            color: Colors.white,
          ),
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
          const SizedBox(height: 70),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) =>  HomePage(),
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primaryColor,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: const Text(
              "Haydi Başlayalım",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}