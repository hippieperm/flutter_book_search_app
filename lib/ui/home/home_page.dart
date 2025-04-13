import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextEditingController textEditingController = TextEditingController();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: TextField(
            maxLines: 1,
            controller: textEditingController,
            decoration: InputDecoration(
                hintText: '검색어를 입력해 주세요.',
                border: MaterialStateOutlineInputBorder.resolveWith(
                  (states) {
                    if (states.contains(WidgetState.focused)) {
                      return OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.black),
                      );
                    }
                    return OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.grey),
                    );
                  },
                )),
          ),
        ),
        body: const Text('HomePage'),
      ),
    );
  }
}
