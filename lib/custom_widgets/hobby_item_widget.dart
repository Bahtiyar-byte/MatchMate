import 'package:flutter/material.dart';
import 'package:match_mate/datastore/data_hobby.dart';
import 'package:provider/provider.dart';
import '../datastore/data_context.dart';

class HobbyItemWidget extends StatelessWidget {
  final Hobby hobby;
  final void Function(Hobby) onHobbySelected;

  HobbyItemWidget({required this.hobby, required this.onHobbySelected});

  @override
  Widget build(BuildContext context) {
    // Получаем доступ к DataContext
    final dataContext = Provider.of<DataContext>(context);
    // Проверяем, подписан ли пользователь на это хобби
    final isSubscribed = dataContext.user?.haveHobby(hobby) ?? false;

    return InkWell(
      onTap: () => onHobbySelected(hobby),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Colors.blue, width: 2),
          // Устанавливаем цвет фона в зависимости от подписки
          color: isSubscribed ? Colors.lightGreen : Colors.white,
        ),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  hobby.imageAsset(),
                  errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                    return Image.asset('assets/default_image.png');
                  },
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  hobby.name,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
