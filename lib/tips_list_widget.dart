import 'package:flutter/material.dart';
import 'package:match_mate/datastore/data_tip.dart';

class TipsListWidget extends StatelessWidget {
  final List<Tip> tips;
  final void Function(Tip) onTipSelected;

  TipsListWidget({required this.tips, required this.onTipSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600, // Установите желаемую высоту
      child: ListView.builder(
        itemCount: (tips.length / 2).ceil(), // Количество блоков советов
        itemBuilder: (context, blockIndex) {
          int start = blockIndex * 2;
          int end = start + 2;
          if (end > tips.length) end = tips.length;
          List<Tip> tipsInBlock = tips.sublist(start, end);
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0), // Отступ между блоками
            child: GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Два столбца
                crossAxisSpacing: 6, // Расстояние по ширине между блоками
                mainAxisSpacing: 6, // Расстояние по высоте между блоками
                childAspectRatio: 1 / 1, // Уменьшенное соотношение сторон для каждого блока
              ),
              itemCount: tipsInBlock.length,
              itemBuilder: (context, index) {
                final tip = tipsInBlock[index];
                return InkWell(
                  onTap: () => onTipSelected(tip),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.blue, width: 2),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child:
                            Image.asset(
                                tip.imageAsset(),
                                errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                                  // Возвращаем изображение по умолчанию, если произошла ошибка
                                  return Image.asset('assets/default_image.png');
                                },
                                fit: BoxFit.cover),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              tip.name,
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
