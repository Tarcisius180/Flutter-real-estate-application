import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:happyproertiesq/models/portfolioproperty_model.dart';

class ContactPropMan extends StatelessWidget {
  final PortfoliopropertyModel portfolioproperty;

  ContactPropMan({required this.portfolioproperty});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        actions: const [],
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(
                height: 38,
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.width * 0.30,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: MediaQuery.of(context).size.width * 0.30,
                    backgroundImage: const AssetImage('lib/images/user1.jpeg'),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                portfolioproperty.propman.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                'Agent for',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                "${portfolioproperty.propman.experience} ${portfolioproperty.propman.duration}",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(2, 1, 1, 3),
                      width: MediaQuery.of(context).size.width * 0.08,
                      height: MediaQuery.of(context).size.width * 0.08,
                      decoration: BoxDecoration(
                        color: Colors.greenAccent.shade400,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        CupertinoIcons.phone,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.08,
                      height: MediaQuery.of(context).size.width * 0.08,
                      decoration: BoxDecoration(
                        color: Colors.redAccent.shade200,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        CupertinoIcons.mail,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Divider(
                thickness: 1.15,
                indent: MediaQuery.of(context).size.width * 0.1,
                endIndent: MediaQuery.of(context).size.width * 0.1,
                color: Colors.grey.shade400,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.12,
                    height: 20,
                  ),
                  const Text(
                    'CONTACT DETAILS',
                    style: TextStyle(
                      fontSize: 14,
                      letterSpacing: 1.15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                padding: const EdgeInsets.fromLTRB(20, 3, 1, 3),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  border: Border.all(color: Colors.grey.shade200),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Phone Number',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            letterSpacing: 1.15,
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          portfolioproperty.propman.phoneNumber,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            letterSpacing: 1.1,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: const EdgeInsets.fromLTRB(20, 3, 1, 3),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Colors.grey.shade100,
                    border: Border.all(
                      color: Colors.grey.shade200,
                      width: 1,
                    ),
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.15,
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            portfolioproperty.propman.email,  // Use agent's email from PropertyModel
                            style: const TextStyle(
                              color: Colors.black,
                              letterSpacing: 1.0,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  padding: const EdgeInsets.fromLTRB(20, 3, 1, 3),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Colors.grey.shade100,
                    border: Border.all(
                      color: Colors.grey.shade200,
                      width: 1,
                    ),
                  ),
                  child: const Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Other',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.15,
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            'www.companywebsite.com',
                            style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 1.0,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
