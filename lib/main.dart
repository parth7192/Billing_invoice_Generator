import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invoice_generator/pages/home_page/home_page.dart';
import 'package:invoice_generator/pages/invoice_page/invoice_option/heders_option/heders_option.dart';
import 'package:invoice_generator/pages/invoice_page/invoice_option/products_option/product_option.dart';
import 'package:invoice_generator/pages/invoice_page/invoice_page.dart';
import 'package:invoice_generator/pages/pdf_page/pdf_page.dart';
import 'package:invoice_generator/pages/splash_screen/splash_screen.dart';
import 'package:invoice_generator/pages/utills/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        MyRoute.splashscreen: (context) => const SplashScreen(),
        MyRoute.homepage: (context) => const HomePage(),
        MyRoute.invoicePage: (context) => const Invoice_Page(),
        MyRoute.pdfPage: (context) => const PdfPage(),
        MyRoute.invoiceOption[0]['route']: (context) =>
            const HedersOptionPage(),
        MyRoute.invoiceOption[1]['route']: (context) =>
            const ProductOptionPage(),
      },
    );
  }
}
