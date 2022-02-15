import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class Web19202 extends StatelessWidget {
  Web19202({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 1313.0, start: 111.0),
            Pin(size: 783.0, start: 53.0),
            child: Text(
              'Sections >>\n\n1. Self Explanatory image having Heading and small description\n\n2. Share option like copy text | WhatsApp icon | FB | Email icon etc.\n\n3. Stats Section (we can hide if No referrals – call need to take)\n\n   a. Referral Signups with count (represent peoples who registered on platform with user\'s referrals)\n\n      i. On click, redirect to existing screen \'Referral Entity Details Screen\' with filter - ALL.\n\n   b. Successful Referrals with count (represents referred people complete registration and active by BillMart)\n\n      i. On click, redirect to existing screen \'Referral Entity Details Screen\' with filter - Eligible for Referral.\n\n   c. Registration Pending Referrals with count (represents referred people whose registration pending)\n\n      i. On click, redirect to existing screen \'Referral Entity Details Screen\' with filter - Registration Pending.\n\n   d. My Earnings with amount (represents amount earned)\n\n      i. On click, redirect to existing screen \'Funds Settlement Screen\' with filter - \'Completed\'.\n\n4. FAQs -\n\n   FAQ list will appear below stats section on scroll (if FAQ section is visible with above sections, then separate link on page not required else required.\n\n   On link click, will redirect to FAQ section)',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xff707070),
              ),
              softWrap: false,
            ),
          ),
        ],
      ),
    );
  }
}
