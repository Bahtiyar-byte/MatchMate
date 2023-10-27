import 'package:match_mate/datastore/data_hobby.dart';
import 'package:match_mate/datastore/data_tip.dart';

class Person {
  int id;
  String name;
  String description;
  String imageUrl;
  List<Tip> subscribedTips = [];

  Person({required this.id, required this.name, required this.description, required this.imageUrl});

  //Person(this.id, this.name, this.description, this.imageUrl, this.subscribedTips);

  Tip? findSubscribedTip(Tip tip)
  {
    try
    {
      return subscribedTips.firstWhere((t) => t == tip);
    }
    catch (e)
    {
      return null;
    }
  }

  void subscribeToTip(Tip tip) {
    if (!subscribedTips.contains(tip)) {
      subscribedTips.add(tip);
    }
  }

  bool haveTip(Tip tip)
  {
    if (tip == null) {
      return false;
    }
      return subscribedTips.contains(tip);
  }

  bool haveHobby(Hobby hobby)
  {
     for (Tip t in subscribedTips)
     {
        if (t.haveHobby(hobby))
        {
          return true;
        }
     }
     return false;
  }

  void subscribeToHobby(Hobby hobby)
  {
      if (!haveHobby(hobby))
      {
            Tip? subscribedTip = findSubscribedTip(hobby.tip);
            if (subscribedTip == null)
            {
                subscribedTips.add(hobby.tip);
                subscribedTip = subscribedTips.last;
            }
            subscribedTip.hobbies.add(hobby);

      }
  }

  void removeHobby(Hobby hobby)
  {
    if (haveHobby(hobby))
    {
      for (Tip t in subscribedTips)
      {
        if (t.haveHobby(hobby))
        {
          t.hobbies.remove(hobby);

          if (t.hobbies.isEmpty)
          {
            subscribedTips.remove(t);
          }
          break;
        }
      }
    }
  }


}