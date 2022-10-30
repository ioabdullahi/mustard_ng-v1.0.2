import 'package:flutter/material.dart';
import 'package:mustard_ng/screens/dollarview.dart';
import 'package:mustard_ng/screens/nairaview.dart';
import 'package:mustard_ng/screens/verifypop.dart';
import 'package:mustard_ng/utils/app_buttons.dart';
import 'package:mustard_ng/utils/app_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0, currentSelect = 0;
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 50),
                Text(
                  'Nosa 😄',
                  style: TextStyle(
                      color: AppColor.black,
                      fontSize: 28,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'Welcome back, what are you doing today?',
                  style: TextStyle(
                      color: AppColor.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 24,
                ),
                SizedBox(
                  height: 193,
                  width: MediaQuery.of(context).size.width,
                  child: PageView(
                    controller: _controller,
                    onPageChanged: (count) {
                      setState(
                        () => currentSelect = count,
                      );
                    },
                    children: const [
                      NairaView(),
                      //Container(height: 30,width: 100, color: Colors.yellow,),
                      DollarView(),
                    ],
                  ),
                ),
                // Container(
                //   height: 193,
                //   width: MediaQuery.of(context).size.width,
                //   decoration: BoxDecoration(color: AppColor.maincolor),
                // ),
                const SizedBox(
                  height: 28,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ButtonSO(
                      text: 'Add Money',
                      onPressed: () {
                        Navigator.pushNamed(context, '/addmoney');
                      },
                    ),
                    ButtonSO(
                        text: 'Send Money',
                        onPressed: () {
                          Navigator.pushNamed(context, '/sendmoney');
                        }),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'To-do-List',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Color(0xff3A3A3A)),
                ),
                ListTile(
                  horizontalTitleGap: 2,
                  title: const Text(
                    'Add money',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                  subtitle: const Text(
                    'Easy way to get startes with Mustard.',
                    style: TextStyle(fontSize: 12),
                  ),
                  leading: const Icon(
                    (Icons.calendar_month_outlined),
                  ),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: AppColor.grey,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/addmoney');
                    },
                  ),
                ),
                ListTile(
                  horizontalTitleGap: 2,
                  title: const Text(
                    'BVN Verification',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                  subtitle: const Text(
                    'Verify your identity to remove limits.',
                    style: TextStyle(fontSize: 12),
                  ),
                  leading: const Icon(Icons.calendar_month_outlined),
                  trailing: IconButton(
                    icon: Icon(
                      Icons.arrow_forward_ios,
                      size: 16,
                      color: AppColor.grey,
                    ),
                    onPressed: () {
                      showModalBottomSheet<void>(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        ),
                        isScrollControlled: true,
                        builder: (BuildContext context) => const VerifyPop(),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 128,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: AppColor.maincolor20),
                  child: Row(
                    children: [
                      Image.asset('assets/images/wallet.png', height: 80),
                      const Text('Save In Dollar Today'),
                      const Icon(Icons.add_circle_outline_sharp),
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
