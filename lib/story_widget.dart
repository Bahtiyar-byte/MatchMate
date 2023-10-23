import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:match_mate/story.dart';
import 'package:match_mate/story_notifier.dart';
import 'package:match_mate/story_manager.dart';

class StoryWidget extends StatelessWidget {
  final ScrollController _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => StoryNotifier(),
      child: SizedBox(
        height: 120,
        child: Consumer<StoryNotifier>(
          builder: (context, storyNotifier, child) {
            return ListView.builder(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              itemCount: StoryManager.stories.length,
              itemBuilder: (context, index) {
                final story = StoryManager.stories[index];
                final isSelected = index == storyNotifier.selectedStory;
                return GestureDetector(
                  onTap: () {
                    storyNotifier.selectStory(index);
                    _scrollToCenter(context, index);
                  },
                  child: Column(
                    children: [
                      Container(
                        width: 98,
                        height: 98,
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            if (isSelected)
                              Container(
                                width: 98,
                                height: 98,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.blueGrey, // Цвет для выделения
                                    width: 3.0,
                                  ),
                                ),
                              ),
                            Container(
                              width: 88,
                              height: 88,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.white24,
                                  width: 3.0,
                                ),
                              ),
                            ),
                            Container(
                              width: 82,
                              height: 82,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(story.image),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 6),
                      Text(
                        story.name,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: isSelected ? Colors.yellowAccent : null, // Цвет текста при выделении
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  void _scrollToCenter(BuildContext context, int index) {
    final screenWidth = MediaQuery.of(context).size.width;
    final storyWidth = 98.0 + 16.0; // Ширина истории + горизонтальные отступы
    final offset = (index * storyWidth) - (screenWidth / 2) + (storyWidth / 2);
    _controller.animateTo(offset, duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}
