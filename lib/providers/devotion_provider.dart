import 'package:arise/models/devotion_module.dart';
import 'package:flutter/material.dart';

class DevotionProvider extends ChangeNotifier {
  final List<DevotionModule> _devotions = [
    DevotionModule(
      devotionTitle: 'Jesus Is All You Need',
      devotionWritter: 'By: Pastor John Doe',
      dateOfCreation: 'Sat, 12th Nov 2024',
      devotionDescription: '''
In this scripture, Paul expresses profound gratitude to God for the gift beyond all words – the gift of Jesus Christ. This “unspeakable gift” refers to the grace, love, and salvation that God gave to the world through His Son. 
Christ embodies a gift that surpasses all human understanding and language. We are called to reflect on the depth of God’s love and respond with thanksgiving. As we recognize Jesus as the ultimate gift, we can be inspired to live lives of gratitude and generosity, sharing His love and kindness with those around us. Let this truth fill our hearts, remembering that we, too, are blessed to be a blessing.'
''',
      devotionImage: 'assets/images/devotions_banner.jpg',
      devotionScripture:
          '2 Corinthians 9:15: Thanks be unto God for his unspeakable gift.',
    ),
    DevotionModule(
      devotionTitle: 'God’s Perfect Peace',
      devotionWritter: 'By: Pastor John Doe',
      dateOfCreation: 'Mon, 13th Nov 2024',
      devotionDescription: '''
In a world often filled with chaos, stress, and uncertainty, God offers a peace that transcends human understanding. This is a peace that doesn’t rely on the changing circumstances around us but is anchored in His constant presence and love. Isaiah reminds us of this promise: "You will keep in perfect peace those whose minds are steadfast, because they trust in you."

Perfect peace isn’t a peace free from troubles; rather, it is the peace that sustains us in the midst of them. When we keep our minds focused on God’s nature—His love, wisdom, and power—we can find a calm that remains unshaken even in difficult times. Imagine a deep-rooted tree by a river, standing firm through storms because it is nourished and anchored. Likewise, when our trust is in God, we are like that tree, held steady by His peace.

This week, make a conscious effort to redirect any worries or anxieties towards prayer. Lay down every fear at His feet, and ask Him to fill you with His peace that surpasses all understanding. Trust that no matter what you face, God’s peace will guard your heart and mind in Christ Jesus.
''',
      devotionImage: 'assets/images/devotions_banner.jpg',
      devotionScripture:
          'Isaiah 26:3: "You will keep in perfect peace those whose minds are steadfast, because they trust in you."',
    ),
    DevotionModule(
      devotionTitle: 'Strength in Weakness',
      devotionWritter: 'By: Pastor John Doe',
      dateOfCreation: 'Tue, 14th Nov 2024',
      devotionDescription: '''
We all have moments of weakness—times when we feel inadequate, overwhelmed, or too exhausted to continue. The Apostle Paul knew this feeling well, yet he discovered a profound truth that transformed his perspective: "My grace is sufficient for you, for my power is made perfect in weakness." In this revelation, God assures us that our weaknesses are not something to be hidden or feared, but rather embraced, for it is precisely in our weakness that His strength shines brightest.

God’s grace is all-encompassing; it is the power that enables us to endure, to press on, and to overcome. When we surrender our limitations to Him, we allow His strength to operate in our lives in ways we never imagined. Like Paul, who learned to “boast” in his weaknesses, we too can find confidence in knowing that every difficulty is an opportunity for God to demonstrate His power in us.

Today, if you feel burdened by a sense of inadequacy, remember that God’s grace is more than enough. His strength will lift you up, carrying you through each challenge. Reflect on the areas where you feel weakest and ask God to work through them, transforming your struggles into testimonies of His faithfulness.
''',
      devotionImage: 'assets/images/devotions_banner.jpg',
      devotionScripture:
          '2 Corinthians 12:9: "But he said to me, ‘My grace is sufficient for you, for my power is made perfect in weakness.’"',
    ),
    DevotionModule(
      devotionTitle: 'A Heart of Worship',
      devotionWritter: 'By: Pastor John Doe',
      dateOfCreation: 'Wed, 15th Nov 2024',
      devotionDescription: '''
Worship is more than just songs and melodies; it is a lifestyle that honors God in every area of our lives. True worship comes from a heart fully surrendered to God, one that seeks to glorify Him not only in words but also in actions. Psalm 29:2 encourages us to "worship the Lord in the splendor of His holiness," reminding us that worship should be reverent, joyful, and sincere.

When we come before God in worship, we are acknowledging His greatness and expressing our gratitude for who He is and all He has done. Worship opens our hearts to experience His presence more deeply, aligning our hearts with His. It allows us to shift our focus from our problems to His greatness, from our fears to His faithfulness.
Take time each day to worship God in a personal way. Whether through singing, praying, or quiet reflection, offer Him your heart fully. Let worship be the anchor that grounds you, filling you with joy, strength, and peace as you rest in the beauty of His holiness. Remember, worship is not about perfection—it’s about connection, an authentic encounter with the One who knows and loves you completely.
''',
      devotionImage: 'assets/images/devotions_banner.jpg',
      devotionScripture:
          'Psalm 29:2: "Ascribe to the Lord the glory due His name; worship the Lord in the splendor of His holiness."',
    ),
    DevotionModule(
      devotionTitle: 'Walking by Faith',
      devotionWritter: 'By: Pastor John Doe',
      dateOfCreation: 'Thu, 16th Nov 2024',
      devotionDescription: '''
Faith is the foundation of our relationship with God. Hebrews 11:1 defines it as "confidence in what we hope for and assurance about what we do not see." This means that faith often requires us to step into the unknown, trusting in God’s promises even when the future seems uncertain.

Abraham is a powerful example of faith; he left his homeland and set out on a journey without knowing his destination, simply trusting that God would guide him. Walking by faith does not mean having all the answers. It means surrendering our desire for control, letting go of our fears, and believing that God’s plans for us are good, even if we don’t understand them.

If you’re facing a situation today that requires courage, remember that faith is not about eliminating fear, but about choosing to trust God in the midst of it. Pray for the strength to step forward in obedience, knowing that He is with you. Trust that He has gone before you, preparing the way and that His guidance will never fail. Let this journey of faith bring you closer to His heart, growing your reliance on Him day by day.
''',
      devotionImage: 'assets/images/devotions_banner.jpg',
      devotionScripture:
          'Hebrews 11:1: "Now faith is confidence in what we hope for and assurance about what we do not see."',
    ),
  ];

  //getter
  List<DevotionModule> get devotions => _devotions;
}
