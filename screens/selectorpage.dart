import 'package:flutter/material.dart';
import 'package:happyproertiesq/screens/login_page.dart';
import 'package:happyproertiesq/screens/normal_marketplace.dart';



class SelectionPageWidget extends StatefulWidget {
  const SelectionPageWidget({Key? key}) : super(key: key);

  @override
  _SelectionPageWidgetState createState() => _SelectionPageWidgetState();
}

class _SelectionPageWidgetState extends State<SelectionPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFAEA896), // Set the background color to yellow
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              // Your content widgets go here
              Align(
                alignment: const AlignmentDirectional(0.04, 0.29),

                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF252323),
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Investor Page',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.01, 0.05),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Marketplace()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF252323),
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Marketplace',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
