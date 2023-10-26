import 'package:flutter/material.dart';
import 'package:match_mate/tips.dart';

class TipsListWidget extends StatelessWidget {
  final List<Tip> tips;
  final void Function(Tip) onTipSelected;

  TipsListWidget({required this.tips, required this.onTipSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600, // Установите желаемую высоту
      child: PageView.builder(
        controller: PageController(viewportFraction: 1), // Каждая страница занимает весь экран
        itemCount: (tips.length / 6).ceil(), // Количество страниц
        itemBuilder: (context, pageIndex) {
          int start = pageIndex * 6;
          int end = start + 6;
          if (end > tips.length) end = tips.length;
          List<Tip> tipsOnPage = tips.sublist(start, end);
          return Padding(
            padding: const EdgeInsets.all(12.0), // Добавление паддинга внутри страницы
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Два столбца
                crossAxisSpacing: 6, // Расстояние по ширине между блоками
                mainAxisSpacing: 6, // Расстояние по высоте между блоками
                childAspectRatio: 1 / 1.32, // Увеличенное соотношение сторон для каждого блока
              ),
              itemCount: tipsOnPage.length,
              itemBuilder: (context, index) {
                final tip = tipsOnPage[index];
                return InkWell(
                  onTap: () => onTipSelected(tip),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.blue, width: 2),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child: Image.asset(tip.imageAsset, fit: BoxFit.cover),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              tip.title,
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
