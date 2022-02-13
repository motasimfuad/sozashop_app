import 'package:flutter/material.dart';
import 'package:sozashop_app/core/constants/colors.dart';
import 'package:sozashop_app/presentation/screens/dashboard_screen/widgets/activity_report.dart';
import 'package:sozashop_app/presentation/screens/dashboard_screen/widgets/client_reviews.dart';
import 'package:sozashop_app/presentation/screens/dashboard_screen/widgets/sales_report.dart';
import 'package:sozashop_app/presentation/screens/dashboard_screen/widgets/top_product_sale.dart';

import '../widgets/k_container.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

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
      drawer: Container(
        width: 260,
        color: const Color(0xff333547),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 12.0,
            right: 12,
            top: 60,
            bottom: 80,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: SizedBox(
                  // height: 60,
                  width: MediaQuery.of(context).size.width - 220,
                  child: Image.network(
                    'https://sozashop.com/images/logo-light.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return const ListTile(
                      leading: Icon(Icons.home_filled),
                      iconColor: Color(0xffb4c9de),
                      minLeadingWidth: 18,
                      minVerticalPadding: 20,
                      contentPadding: EdgeInsets.all(0),
                      trailing: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 15,
                      ),
                      title: Text(
                        'Item',
                        style: TextStyle(
                          color: Color(0xffb4c9de),
                          fontSize: 17,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const ClampingScrollPhysics(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(bottom: 80.0),
          child: Column(
            children: [
              SizedBox(
                height: 470,
                child: GridView.builder(
                  shrinkWrap: true,
                  primary: false,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.all(20.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.7,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                  ),
                  itemCount: dashboardWidgets.length,
                  itemBuilder: (BuildContext context, int index) {
                    var dashboardWidget = dashboardWidgets[index];
                    return InkWell(
                      onTap: () {},
                      splashColor: kPrimary.shade100,
                      child: Container(
                        padding: const EdgeInsets.all(15.0),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  padding: const EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    color: kPrimary.shade300,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Image.network(
                                      dashboardWidget['imgUrl'].toString()),
                                ),
                                const SizedBox(width: 8),
                                const Text(
                                  '0',
                                  style: TextStyle(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Text(
                              dashboardWidget['text'].toString(),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 15,
                                color: kPrimary.shade50,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const KContainer(
                child: SalesReport(),
              ),
              const KContainer(
                child: ActivityReport(),
              ),
              KContainer(
                bgColor: kPrimary,
                height: 140,
                child: const TopProductSale(),
              ),
              const KContainer(
                height: 212,
                child: ClientReviews(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final dashboardWidgets = [
  {
    'imgUrl': 'https://sozashop.com/images/services-icon/01.png',
    'text': 'TOTAL RECEIVABLE'
  },
  {
    'imgUrl': 'https://sozashop.com/images/services-icon/02.png',
    'text': 'TOTAL RECEIVED'
  },
  {
    'imgUrl': 'https://sozashop.com/images/services-icon/03.png',
    'text': 'TOTAL DISCOUNT'
  },
  {
    'imgUrl': 'https://sozashop.com/images/services-icon/04.png',
    'text': 'TOTAL EXPENSES'
  },
  {
    'imgUrl': 'https://sozashop.com/images/services-icon/01.png',
    'text': 'TOTAL INVOICE'
  },
  {
    'imgUrl': 'https://sozashop.com/images/services-icon/02.png',
    'text': 'TOTAL CUSTOMER'
  },
  {
    'imgUrl': 'https://sozashop.com/images/services-icon/03.png',
    'text': 'TOTAL PRODUCT'
  },
  {
    'imgUrl': 'https://sozashop.com/images/services-icon/04.png',
    'text': 'TOTAL CATEGORY'
  },
];
