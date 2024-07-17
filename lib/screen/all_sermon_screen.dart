import 'package:arise/Theme/app_colors.dart';
import 'package:arise/models/sermon_model.dart';
import 'package:arise/models/sermon_provider.dart';
import 'package:arise/pages/sermon_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AllSermonsScreen extends StatefulWidget {
  const AllSermonsScreen({super.key});

  @override
  State<AllSermonsScreen> createState() => _AllSermonsScreenState();
}

class _AllSermonsScreenState extends State<AllSermonsScreen> {
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
          foregroundColor: Colors.white,
          centerTitle: true,
          title: const Text(
            'All sermons',
            style:
                //  GoogleFonts.libreBaskerville(
                // textStyle:
                TextStyle(
                    color: AppColors.accentColor,
                    fontWeight: FontWeight.bold,
                    // letterSpacing: 1,
                    fontSize: 20),
            // )
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
              ),
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
                            // style: const TextStyle(fontSize: 18),
                            children: [
                              TextSpan(
                                text: sermons.title,
                                style: const TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                        ),

                        //Sermon descriptions
                        subtitle: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: sermons.description,
                                  style: const TextStyle(
                                      color: AppColors.secondaryColor,
                                      fontSize: 18),
                                )
                              ],
                            ),
                          ),
                        ),
                        leading: Image.asset(
                          sermons.imageUrl,
                          // height: 300,
                        ),
                        onTap: () => goToSermon(index),
                      );
                    }),
              )
            ],
          );
        }));
  }
}
