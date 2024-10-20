import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trial_contact_list/utils/microcopy_string.dart';
import 'package:trial_contact_list/utils/palette.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.white,
      appBar: AppBar(
        backgroundColor: Palette.white,
        toolbarHeight: 130, // Custom height for the AppBar
        title: const Padding(
          padding: EdgeInsets.only(top: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                MicrocopyString.login_title,
                style: TextStyle(
                  color: Palette.blue,
                  fontSize: 24,
                  height: 0.1,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                MicrocopyString.login_desc,
                style: TextStyle(
                  color: Palette.darkGray,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 16, top: 16, right: 16.0, bottom: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('User ID*'),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide:
                        const BorderSide(color: Palette.lightGray, width: 1),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide:
                        const BorderSide(color: Palette.lightGray, width: 1),
                  ),
                  prefixIcon: const Icon(
                    Icons.person_outline,
                    color: Colors.blue,
                  ),
                  filled: true,
                  hintStyle: const TextStyle(
                    color: Palette.darkGray,
                    fontWeight: FontWeight.w100,
                  ),
                  hintText: MicrocopyString.login_hint,
                  fillColor: Palette.white,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                child: const Text(
                  MicrocopyString.login_button,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w900,
                    color: Palette.blue,
                  ),
                ),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Palette.button_color,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
