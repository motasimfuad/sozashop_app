import 'package:flutter/material.dart';
import 'package:sozashop_app/core/constants/colors.dart';
import 'package:sozashop_app/presentation/screens/sales_screen/widgets/cat_table.dart';
import 'package:sozashop_app/presentation/screens/widgets/k_container.dart';

class SalesScreen extends StatelessWidget {
  const SalesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8FA),
      appBar: AppBar(
        title: const Text('Sozashop'),
        actions: [
          CircleAvatar(
            minRadius: 14,
            maxRadius: 15,
            backgroundColor: kPrimary.shade100,
            backgroundImage: const NetworkImage(
              'https://www.pavilionweb.com/wp-content/uploads/2017/03/man-300x300.png',
            ),
          ),
          const SizedBox(width: 20),
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Categories',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey.shade700,
                ),
              ),
              const SizedBox(height: 20),
              const KContainer(
                margin: 0,
                padding: 0,
                height: 580,
                child: CatTable(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
