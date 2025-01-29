import 'package:cardsapp/screens/PicktheCard.dart';
import 'package:cardsapp/utils/colors.dart';
import 'package:flutter/material.dart';

class SingleCardPage extends StatefulWidget {
  final String title;
  final String meaning;
  const SingleCardPage({super.key, required this.title, required this.meaning});

  @override
  State<SingleCardPage> createState() => _SingleCardPageState();
}

class _SingleCardPageState extends State<SingleCardPage> {
  String? _selectedButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.white,
            fontFamily: "CinzelDecorative",
          ),
        ),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/images/wallpaper.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
             Padding(
                padding: const EdgeInsets.all(22.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Bilgilendirme çerçevesi
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.white, width: 0),
                      ),
                      child: Text(
                        widget.meaning,
                        style: const TextStyle(
                          fontFamily: 'LibreBaskerville',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          height: 1.6,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    const SizedBox(height:10),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.white, width: 0),
                      ),
                      child: const  Text(
                        " Kart açılımın için bir konu seç",
                        style: const TextStyle(
                          fontFamily: 'LibreBaskerville',
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          height: 1.6,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Dört buton
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // İlk satırdaki iki buton
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildButton("Aşk"),
                            _buildButton("Genel"),
                          ],
                        ),
                        const SizedBox(height: 6), // Satırlar arasında boşluk
                        // İkinci satırdaki iki buton
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _buildButton("Kariyer"),
                            _buildButton("Kişisel Karar"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
           Positioned(
              bottom: 80,
              left: 0,
              right: 0,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            PicktheCardPage(title: _selectedButton ?? '', kind: widget.title,),
                           
                        transitionDuration:
                            const Duration(seconds: 0), // Animasyon süresini sıfırlıyoruz
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 36,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    "Kart Açılımına Geç",
                    style: TextStyle(
                      fontFamily: 'LibreBaskerville',
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
Widget _buildButton(String label) {
    final isSelected = _selectedButton == label;

    return SizedBox(
      width: 120, // Sabit genişlik
      height: 50, // Sabit yükseklik
      child: TextButton(
        onPressed: () {
          setState(() {
            _selectedButton = label;
          });
        },
        style: TextButton.styleFrom(
          backgroundColor: Colors.black.withOpacity(0.7), // Buton arka plan rengi
          padding: EdgeInsets.zero, // İç dolgu sıfırlandı
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
              color: isSelected ? AppColors.textColor : Colors.transparent,
              width: isSelected ? 2 : 0, // Seçili duruma göre çerçeve kalınlığı
            ),
          ),
        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'LibreBaskerville',
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
  }