import 'package:flutter/material.dart';
import 'package:match_mate/datastore/data_tip.dart';
import 'package:match_mate/datastore/data_person.dart';
import 'package:provider/provider.dart';

import '../datastore/data_context.dart';

class TipItemWidget extends StatelessWidget {
  final Tip tip;
  final void Function(Tip) onTipSelected;

  TipItemWidget({required this.tip, required this.onTipSelected});

  @override
  Widget build(BuildContext context) {
    // Получаем доступ к DataContext
    final dataContext = Provider.of<DataContext>(context);

    final isSubscribed = dataContext.user?.haveTip(tip) != null;

    return InkWell(
      onTap: () => onTipSelected(tip),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.blue, width: 2),
          // Изменяем цвет фона в зависимости от подписки
          color: isSubscribed ? Colors.lightGreen : Colors.black,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                    tip.imageAsset(),
                    errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                      return Image.asset('assets/default_image.png');
                    },
                    fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  tip.name,
                  style: TextStyle(fontSize: 16, color: isSubscribed ? Colors.black : Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
