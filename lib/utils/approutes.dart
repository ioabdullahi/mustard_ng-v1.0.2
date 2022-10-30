import 'package:flutter/material.dart';
import 'package:mustard_ng/auth/email_verification.dart';
import 'package:mustard_ng/auth/login.dart';
import 'package:mustard_ng/auth/onboarding.dart';
import 'package:mustard_ng/auth/reset_password.dart';
import 'package:mustard_ng/auth/signup.dart';
import 'package:mustard_ng/auth/splash_screen.dart';
import 'package:mustard_ng/auth/success_email.dart';
import 'package:mustard_ng/screens/add%20money/add_money.dart';
import 'package:mustard_ng/screens/add%20money/add_money_card.dart';
import 'package:mustard_ng/screens/add%20money/add_mustard_tag.dart';
import 'package:mustard_ng/screens/add%20money/bank_transfer.dart';
import 'package:mustard_ng/screens/dashboard.dart';
import 'package:mustard_ng/screens/send%20money/bank_transfer/bank_transfer.dart';
import 'package:mustard_ng/screens/send%20money/convert_currency/covert_currency.dart';
import 'package:mustard_ng/screens/send%20money/mustard_tag%20/pinscreen.dart';
import 'package:mustard_ng/screens/send%20money/send_money.dart';
import 'package:mustard_ng/screens/send%20money/mustard_tag%20/send_money_tag.dart';
import 'package:mustard_ng/screens/send%20money/mustard_tag%20/transfer_succesful.dart';
import 'package:mustard_ng/screens/send%20money/mustard_tag%20/transfer_summary.dart';

class AppRoutes {
  Map<String, Widget Function(BuildContext ctx)> routes =
      <String, WidgetBuilder>{
    '/': (ctx) => const SplashScreen(),
    '/onboarding': (ctx) => const OnboardingScreen(),
    '/signup': (ctx) => const SignUpScreen(
          email: '',
          phone: '',
          password: '',
        ),
    '/emailverify': (ctx) => const EmailVerification(),
    '/successemail': (ctx) => const SuccessEmail(),
    '/login': (ctx) => const Login(
          email: '',
          password: '',
        ),
    '/resetpassword': (ctx) => const ResetPassword(
          email: '',
        ),
    '/dashboard': (ctx) => const DashBoard(),
    '/addmoney': (ctx) => const AddMoney(),
    '/addmoneymustardtag': (ctx) => const AddMoneyMustardTag(),
 '/banktransfer': (ctx) =>  const BankTranfer(),
  '/addmoneycard': (ctx) =>  const AddMoneyCard(),
  '/sendmoney': (ctx) =>   const SendMoney(),
  '/sendmoneymustardtag': (ctx) =>  const SendMoneyMustardTag(email: '', ),
  '/transfersummarytag': (ctx) =>   const TransferSummaryTag(),
  '/pinscreen': (ctx) =>  const InputPin(),
  '/transfersuccessful': (ctx) =>  const TransferSuccessful(),
  '/sendmoneybanktransfer': (ctx) =>  const SendMoneyBankTransfer(email: '', ),
  '/convertcurrency': (ctx) =>  const ConvertCurrency(email: '', ),


  };
}
