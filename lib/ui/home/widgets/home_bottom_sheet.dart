import 'package:flutter/material.dart';
import '../../detail/detail_page.dart';

class HomeBottomSheet extends StatelessWidget {
  const HomeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      padding: const EdgeInsets.only(
        top: 20,
        right: 20,
        left: 20,
        bottom: 50,
      ),
      child: Row(
        children: [
          Image.network(
            'https://picsum.photos/200/300',
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '해리포터의 마법사의 돌',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const Text(
                  'J.K  롤링',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const Text(
                  '해리포터의 마법사의 돌을 찾아가는 여정',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const DetailPage();
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.transparent,
                    alignment: Alignment.center,
                    child: const Text(
                      '자세히 보기',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
