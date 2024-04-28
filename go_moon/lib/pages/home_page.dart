// ignore_for_file: no_leading_underscores_for_local_identifiers, prefer_const_constructors, unused_element, sort_child_properties_last, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_moon/widgets/custom_drop.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double _deviceWidth = MediaQuery.of(context).size.width;
    double _deviceHeight = MediaQuery.of(context).size.height;
    Widget _destinationDropDownMenu() {
      List<String> _items = ['USA', 'KSA' , 'LEB' , 'PAL'];
      return CustomDropDownButton(values: _items, width: _deviceWidth * 0.8);
    }

    Widget _travellersInformationWidget() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomDropDownButton(
              values: ['1', '2', '3', '4'], width: _deviceWidth * 0.4),
          CustomDropDownButton(
              values: ['Economy', 'Buiness', 'First', 'Private'],
              width: _deviceWidth * 0.3),
        ],
      );
    }

    Widget _rideBuuton() {
      return Container(
          width: _deviceWidth * 0.8,
          padding: EdgeInsets.all(_deviceHeight * 0.001),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: MaterialButton(
              child: Text(
                "Book ride!",
                style: TextStyle(color: Colors.black),
              ),
              onPressed: () {}));
    }

    Widget _bookRideWidget() {
      return Container(
        height: _deviceHeight * 0.4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _destinationDropDownMenu(),
            _travellersInformationWidget(),
            _rideBuuton()
          ],
        ),
      );
    }

    Widget _astro_moon() {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: _deviceWidth * 0.5,
          height: _deviceHeight * 0.65,
          decoration: BoxDecoration(
              // color: Color.fromARGB(255, 20, 119, 165),
              image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage("assets/images/astro_moon.png"),
              )),
        ),
      );
    }

    return Scaffold(
        body: SafeArea(
            child: Container(
                width: _deviceWidth,
                height: _deviceHeight,
                padding: EdgeInsets.symmetric(horizontal: _deviceHeight * 0.01),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [_PageTitle(), _bookRideWidget()],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: _astro_moon()
                      )
                  ],
                ))));
  }
}

class _PageTitle extends StatelessWidget {
  const _PageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "#Go_Moon",
      style: TextStyle(
          color: Colors.deepPurple, fontSize: 50, fontWeight: FontWeight.w800),
    );
  }
}

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double _deviceWidth = MediaQuery.of(context).size.width;
    double _deviceHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: _deviceWidth,
        height: _deviceHeight,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 20, 119, 165),
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage("assets/images/astro_moon.png"),
            )),
      ),
    );
  }
}
