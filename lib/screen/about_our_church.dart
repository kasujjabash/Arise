import 'package:arise/Theme/app_colors.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        elevation: 0,
        foregroundColor: AppColors.accentColor,
        backgroundColor: AppColors.background,
        centerTitle: true,
        title: const Text(
          "About our church",
          style: TextStyle(fontSize: 23),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.secondaryColor),
                    text: " Arise  city church"),
              ),

              const SizedBox(
                height: 10,
              ),
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 18),
                  text: '''
Arise Church is more than just a place of worship; it is a vibrant community that embodies the principles of faith, love, and service. 

Located in the heart of the city, Arise Church welcomes people from all walks of life to come together and experience the transformative power of faith.
''',
                ),
              ),
              //second paragraph
              const SizedBox(
                height: 5,
              ),

              RichText(
                text: const TextSpan(
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.secondaryColor),
                    text: " Worship and Spiritual Growth:"),
              ),

              const SizedBox(
                height: 10,
              ),

              RichText(
                text: const TextSpan(
                    style: TextStyle(
                      fontSize: 18,
                    ),
                    text:
                        '''Worship at Arise Church is a dynamic and enriching experience. Our services are designed to inspire and uplift, with a blend of contemporary worship music, powerful sermons, and moments of reflection. 

We encourage our congregation to deepen their relationship with God through prayer, study, and active participation in church activities.'''),
              ),

              const SizedBox(
                height: 15,
              ),
              RichText(
                text: const TextSpan(
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.secondaryColor),
                    text: " Our Culture:"),
              ),
              const SizedBox(
                height: 5,
              ),
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 18),
                  text:
                      '''At Arise Church, we believe in creating a culture that is inclusive, supportive, and uplifting. Our community is built on the values of compassion, integrity, and respect. 

We strive to be a beacon of hope and light, providing a safe and nurturing environment for everyone who walks through our doors.
                  ''',
                ),
              ),

              RichText(
                text: const TextSpan(
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.secondaryColor),
                    text: " Community and Fellowship:"),
              ),
              //second paragraph
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 18),
                  text:
                      '''One of the cornerstones of Arise Church is our strong sense of community. 
We believe that fellowship and relationships are essential for spiritual growth. Our church offers a variety of small groups, Bible studies, and social events where members can connect, share, and support one another.

Whether it's a Sunday service, a midweek gathering, or a community outreach event, there is always an opportunity to build meaningful connections.
''',
                ),
              ),

              RichText(
                text: const TextSpan(
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.secondaryColor),
                    text: " Join Us:"),
              ),
              //second paragraph
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 18),
                  text:
                      '''Arise Church invites you to join us on this incredible journey of faith and community. Whether you are seeking a place to worship, looking for support and fellowship, or wanting to make a difference in the world, you will find a home at Arise Church. 
                      
Together, we can rise above life's challenges and experience the fullness of God's love and grace.

Come and be a part of Arise Church, where faith meets action, and every individual is valued and loved.''',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
