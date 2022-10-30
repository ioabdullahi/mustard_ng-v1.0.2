
import 'package:flutter/material.dart';
import 'package:mustard_ng/screens/account.dart';
import 'package:mustard_ng/screens/cards.dart';
import 'package:mustard_ng/screens/homepage.dart';
import 'package:mustard_ng/screens/invest.dart';
import 'package:mustard_ng/screens/savings.dart';
import 'package:mustard_ng/utils/app_color.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _currentIndex = 0;
  final List<Widget> _widget = [];
 
  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTapped,
        iconSize: 22,
        elevation: 5,
        selectedItemColor: AppColor.maincolor,
        unselectedItemColor:  AppColor.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_view_day_rounded), label: 'Cards'),
          BottomNavigationBarItem(icon: Icon(Icons.collections_bookmark_outlined), label: 'Savings'),
          BottomNavigationBarItem(icon: Icon(Icons.hourglass_empty_rounded), label: 'Invest'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account')
        ],
      ),
      body: _widget[_currentIndex],

      // body: Column(
      //   children: [
      //      const Text('Login Succesful'),
      //      Text(' Welcome to my App $name'),
      //      Text(' My email is $email')
      //   ],
      // )
    );
  }

  void onTapped(int index) {
    setState(
      () {
        _currentIndex = index;
      },
    );
  }

  @override
  void initState() {
    super.initState();

    _widget.insert(0,  const HomePage());
    _widget.insert(1, const Cards());
    _widget.insert(2, const Savings());
    _widget.insert(3, const Invest());
    _widget.insert(4, const Account());
  }
}
