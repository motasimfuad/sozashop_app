import 'package:flutter/material.dart';
import 'package:sozashop_app/core/constants/colors.dart';
import 'package:sozashop_app/presentation/screens/widgets/k_container.dart';

class SalesDetailsScreen extends StatelessWidget {
  const SalesDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF8F8FA),
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category details',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade700,
                    ),
                  ),
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                      color: kPrimary,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    width: 30,
                    child: const Center(
                      child: Icon(
                        Icons.list,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              KContainer(
                margin: 0,
                padding: 20,
                height: 580,
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return const ListTile(
                      leading: Text(
                        'Name',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      minLeadingWidth: 50,
                      contentPadding: EdgeInsets.all(0),
                      title: Padding(
                        padding: EdgeInsets.only(bottom: 5.0),
                        child: Text(
                          'Details',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                          ),
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
    );
  }
}
