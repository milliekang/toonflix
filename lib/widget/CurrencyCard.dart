import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  // final bool isInverted;
  final int order;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    // required this.isInverted,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    double offset = order * -20;
    bool isInverted = order % 2 != 0 ? true : false;
    return Transform.translate(
      offset: Offset(0, offset),
      child: (Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color:
              isInverted ? Colors.white : const Color.fromARGB(255, 19, 21, 22),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 14,
            vertical: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: isInverted ? Colors.black : Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                            color: isInverted ? Colors.black : Colors.white,
                            fontSize: 20),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          color: isInverted ? Colors.black87 : Colors.white70,
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 1.7,
                child: Transform.translate(
                  offset: const Offset(0, 15),
                  child: Icon(
                    icon,
                    color: isInverted ? Colors.black : Colors.white,
                    size: 98,
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
