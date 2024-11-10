import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:arise/Theme/app_colors.dart';

class GiveScreen extends StatefulWidget {
  const GiveScreen({super.key});

  @override
  _GiveScreenState createState() => _GiveScreenState();
}

class _GiveScreenState extends State<GiveScreen> {
  String? errorMessage; // To hold the error message

  // Function to launch USSD code
  Future<void> _launchUSSD(String ussdCode) async {
    final String url = 'tel:$ussdCode'; // Prepare the URL format for dialing

    try {
      // Request permission for CALL_PHONE
      if (await Permission.phone.request().isGranted) {
        if (await canLaunch(url)) {
          await launch(url); // Launch the USSD code
        } else {
          throw 'Could not launch $ussdCode contact support'; // Throw an error message if the USSD code could not be launched
        }
      } else {
        throw 'Permission to make phone calls is denied';
      }
    } catch (e) {
      // Update the error message state when an exception is caught
      setState(() {
        errorMessage = e.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.accentColor,
        title: const Text('Giving'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            // Displaying the scripture
            const Text(
              '2 Corinthians 9:7 (ESV): "Each one must give as he has decided in his heart, not reluctantly or under compulsion, for God loves a cheerful giver."',
              style: TextStyle(color: AppColors.accentColor, fontSize: 20),
              textAlign: TextAlign.center, // Optional: for multi-line text
            ),
            const SizedBox(height: 20),
            // Email for questions
            const Text(
              'If you have any questions, contact Us:\ncontact@arise.com',
              style: TextStyle(
                color: AppColors.secondaryColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            //sized box
            const SizedBox(height: 20),

            // MTN Give button
            ElevatedButton(
              onPressed: () {
                _launchUSSD('*165#'); //  MTN USSD code
              },
              style: ElevatedButton.styleFrom(
                iconColor: AppColors.accentColor,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              ),
              child: const Text('Give via MTN'),
            ),
            const SizedBox(height: 20),
            // Airtel give button
            ElevatedButton(
              onPressed: () {
                _launchUSSD('*185#'); //  Airtel USSD code
              },
              style: ElevatedButton.styleFrom(
                iconColor: AppColors.accentColor,
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              ),
              child: const Text('Give via Airtel'),
            ),
            const SizedBox(height: 20),
            // Display the error message if any
            if (errorMessage != null)
              Text(
                errorMessage!,
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
          ],
        ),
      ),
    );
  }
}
