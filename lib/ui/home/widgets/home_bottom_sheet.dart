import 'package:flutter/material.dart';

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
          Image.network('https://picsum.photos/200/300'),
          const Expanded(
            child: Column(
              children: [
                Text('data'),
                Text('data'),
                Text('data'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
