import 'dart:html';

import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get\nyour next journey',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semibold),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              Text(
                'Full Name',
              ),
              SizedBox(height: 6),
              TextFormField(
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                    hintText: 'Your full name',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        borderSide: BorderSide(color: kPrimaryColor))),
              )
            ],
          ),
        );
      }

      Widget emailInput() {
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              Text(
                'Email address',
              ),
              SizedBox(height: 6),
              TextFormField(
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                    hintText: 'Your email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        borderSide: BorderSide(color: kPrimaryColor))),
              )
            ],
          ),
        );
      }

      Widget passwordInput() {
        return Container(
          margin: EdgeInsets.only(bottom: 20),
          child: Column(
            children: [
              Text(
                'Password',
              ),
              SizedBox(height: 6),
              TextFormField(
                obscureText: true,
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                    hintText: 'Your password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        borderSide: BorderSide(color: kPrimaryColor))),
              )
            ],
          ),
        );
      }

      Widget hobbyInput() {
        return Container(
          margin: EdgeInsets.only(bottom: 30),
          child: Column(
            children: [
              Text(
                'Hobby',
              ),
              SizedBox(height: 6),
              TextFormField(
                cursorColor: kBlackColor,
                decoration: InputDecoration(
                    hintText: 'Your hobby',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(defaultRadius),
                        borderSide: BorderSide(color: kPrimaryColor))),
              )
            ],
          ),
        );
      }

      Widget submitButton() {
        return Container(
          width: double.infinity,
          height: 55,
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Get Started',
              style: whiteTextStyle.copyWith(fontWeight: medium, fontSize: 18),
            ),
            style: TextButton.styleFrom(
                backgroundColor: kPrimaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(defaultRadius))),
          ),
        );
      }

      Widget tacButton() {
        return Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 50, bottom: 73),
          child: Text(
            'Terms and Conditions',
            style: greyTextStyle.copyWith(
                fontSize: 16,
                fontWeight: light,
                decoration: TextDecoration.underline),
          ),
        );
      }

      return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
            color: kWhiteCOlor,
            borderRadius: BorderRadius.circular(defaultRadius)),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton(),
            tacButton()
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [title(), inputSection()],
        ),
      ),
    );
  }
}
