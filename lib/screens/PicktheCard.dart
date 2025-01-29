import 'package:cardsapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class PicktheCardPage extends StatefulWidget {
  final String kind;
  final String title;
 

  const PicktheCardPage({super.key, required this.title, required this.kind,});

  @override
  State<PicktheCardPage> createState() => _PicktheCardPageState();
}

class _PicktheCardPageState extends State<PicktheCardPage> {
  double angleOffset = 0; // Kartların daire üzerindeki konumunu kontrol eden açı
  List<int> selectedCardIndices = [];

  int get maxSelectableCards {
    switch (widget.title) {
      case 'Tek Kart Açılımı':
        return 1;
      case 'Üç Kart Açılımı':
        return 3;
      case 'Çapraz Kart Açılımı':
        return 5;
      case 'Dört Kart Açılımı':
        return 4;
      case 'Kelt Açılımı':
        return 10;
      case 'Yıldız Kart Açılımı':
        return 6;
      case 'Hayat Yolu Açılımı':
        return 10;
      case 'Element Kart Açılımı':
        return 4;
      case 'Karmic Açılımı':
        return 10;
      default:
        return 3; // Default value
    }
  }

  void _onHorizontalDragUpdate(DragUpdateDetails details) {
    setState(() {
      angleOffset += details.delta.dx * 0.01; // Drag hareketi
    });
  }

  void _onCardTap(int index) {
    if (selectedCardIndices.length < maxSelectableCards &&
        !selectedCardIndices.contains(index)) {
      setState(() {
        selectedCardIndices.add(index);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    final double radius = screenWidth * 0.9; // Dairenin yarıçapı
    const int cardCount = 72; // Kart sayısı

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Bilgilendirme çerçevesi
            Container(
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                widget.kind, // `widget.t` yerine doğru özelliği kullanıyoruz
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
            Expanded(
              child: GestureDetector(
                onHorizontalDragUpdate: _onHorizontalDragUpdate,
                child: Stack(
                  children: List.generate(cardCount, (index) {
                    final double angle =
                        (index * (2 * math.pi / cardCount)) + angleOffset;
                    final double x = radius * math.cos(angle);
                    final double y = radius * math.sin(angle);
                    final bool isCenterCard = (x.abs() < 10 && y.abs() < 10);

                    if (selectedCardIndices.contains(index)) {
                      int selectedIndex = selectedCardIndices.indexOf(index);
                      return Positioned(
                        left: screenWidth / 2 + selectedIndex * 55 - 25,
                        top: screenHeight / 2 - 65,
                        child: Transform.rotate(
                          angle: 0,
                          child: _buildCard(),
                        ),
                      );
                    } else {
                      return Positioned(
                        left: screenWidth / 2 + x - 25,
                        top: screenHeight / 2 + y - 50,
                        child: Transform.rotate(
                          angle: angle + math.pi / 2,
                          child: GestureDetector(
                            onTap: () => _onCardTap(index),
                            child: _buildCard(isCenterCard: isCenterCard),
                          ),
                        ),
                      );
                    }
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({bool isCenterCard = false}) {
    return Container(
      width: isCenterCard ? 70 : 50,
      height: isCenterCard ? 130 : 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          'lib/assets/images/kart.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
