// import 'package:arise/Theme/app_colors.dart';
// import 'package:arise/models/sermon_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// import '../models/sermon_model.dart';

// class SermonsScreen extends StatefulWidget {
//   const SermonsScreen({super.key});

//   @override
//   State<SermonsScreen> createState() => _SermonsScreenState();
// }

// class _SermonsScreenState extends State<SermonsScreen> {
//    //get the sermon provider
//   late final dynamic sermonProvider;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.background,
//       appBar: AppBar(
//         foregroundColor: AppColors.accentColor,
//         backgroundColor: AppColors.background,
//         title: const Text('Sermon screen'),
//       ),
//       body: Consumer<SermonProvider>  (builder: (context, value, child) {
//         return ListView.builder(
//         // final List<Sermon> sermon = value.sermon;
//         // itemCount: ,
//         itemBuilder: (context, index) {
//           final List<Sermon> sermon = value.sermon;
//           final Sermon sermons = sermon[
//                           index];
//           return Column(
//             children: [
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
//                 child: Container(
//                   decoration: const BoxDecoration(),
//                   child: ListTile(
//                     title: RichText(
//                         text: const TextSpan(
//                             style: TextStyle(fontSize: 20),
//                             children: [TextSpan(text: sermon.title)])),
//                     subtitle: Padding(
//                       padding: const EdgeInsets.only(top: 8),
//                       child: RichText(
//                           text: const TextSpan(
//                               children: [TextSpan(text: 'Title goes here')])),
//                     ),
//                     leading: Image.asset(
//                       'assets/images/prayer_2x.jpg',
//                     ),
//                   ),
//                 ),
//               ),
//               const Divider(
//                 indent: 15,
//                 endIndent: 15,
//                 color: AppColors.secondaryColor,
//               )
//             ],
//           );
//         },
//       );}
// ,)
// );
//   }
// }

import 'package:arise/Theme/app_colors.dart';
import 'package:arise/cmponets/my_banner.dart';
import 'package:arise/models/sermon_model.dart';
import 'package:arise/models/sermon_provider.dart';
import 'package:arise/pages/sermon_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SermonsScreen extends StatefulWidget {
  const SermonsScreen({super.key});

  @override
  State<SermonsScreen> createState() => _SermonsScreenState();
}

class _SermonsScreenState extends State<SermonsScreen> {
  //get the sermon provider
  late final dynamic sermonProvider;

  @override
  void initState() {
    super.initState();
    //get sermon provider
    sermonProvider = Provider.of<SermonProvider>(context, listen: false);
  }

  //go to the paticular sermon
  void goToSermon(int sermonIndex) {
    //update current sermon index
    sermonProvider.currentSermonIndex = sermonIndex;
    //navigate to the sermon page
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const SermonPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: AppColors.background,
          leading: const Icon(
            Icons.person,
            size: 30,
            color: AppColors.accentColor,
          ),
        ),
        body: Consumer<SermonProvider>(builder: (context, value, child) {
          final List<Sermon> sermon = value.sermon;

          //returning a list view ui
          return Column(
            children: [
              //All sermons
              const SizedBox(
                height: 5,
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('All sermons',
                          style:
                              //  GoogleFonts.libreBaskerville(
                              // textStyle:
                              TextStyle(
                                  color: AppColors.accentColor,
                                  fontWeight: FontWeight.bold,
                                  // letterSpacing: 1,
                                  fontSize: 20)
                          // )
                          ),
                    ],
                  )),
              // lists of sermons

              Expanded(
                child: ListView.builder(
                    itemCount: sermon.length,
                    itemBuilder: (context, index) {
                      //get an individual sermon
                      final Sermon sermons = sermon[
                          index]; // get individual sermon through the list of sermons

                      // return a list tile
                      return ListTile(
                        title: RichText(
                            text: TextSpan(
                                style: const TextStyle(fontSize: 18),
                                children: [TextSpan(text: sermons.title)])),

                        //Sermon descriptions
                        subtitle: RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: sermons.description,
                            style: const TextStyle(
                                color: AppColors.secondaryColor),
                          )
                        ])),
                        leading: Image.asset(sermons.imageUrl),
                        onTap: () => goToSermon(index),
                      );
                    }),
              )
            ],
          );
        }));
  }
}
