import 'package:flutter/material.dart';

class FractionalTranslationExample extends StatelessWidget {
  const FractionalTranslationExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            color: Colors.blue[100],
            child: const Center(child: Text('Background')),
          ),
          FractionalTranslation(
            translation: const Offset(0.5, 0.5), // نصف العرض ونصف الارتفاع
            child: Container(
              width: 100,
              height: 100,
              color: Colors.orange,
              child: const Center(
                child: Text('Moved', style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
