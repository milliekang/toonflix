import 'package:flutter/material.dart';
import 'package:toonflix/widget/Button.dart';
import 'package:toonflix/widget/CurrencyCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter ui practice',
      home: Scaffold(
        // custom color
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text(
                          'Hello, Millie!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                          ),
                        ),
                        Text('welcome back',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 18))
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Total Balance',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8), fontSize: 22),
                ),
                const Text(
                  '\$2,300',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Button(
                        text: 'Transfer',
                        backgroundColor: Colors.amber,
                        textColor: Colors.black),
                    Button(
                        text: 'Requset',
                        backgroundColor: Colors.black54,
                        textColor: Colors.white),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: const [
                    Text(
                      'Wallet',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const CurrencyCard(
                  isInverted: false,
                  name: 'Euro',
                  code: 'EUR',
                  amount: '6,222',
                  icon: Icons.euro_rounded,
                  order: 0,
                ),
                const CurrencyCard(
                  isInverted: true,
                  name: 'Bitcoin',
                  code: 'BTC',
                  amount: '32,333',
                  icon: Icons.currency_bitcoin_rounded,
                  order: 1,
                ),
                const CurrencyCard(
                  isInverted: false,
                  name: 'Dollar',
                  code: 'USD',
                  amount: '6,222',
                  icon: Icons.money_off_rounded,
                  order: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
