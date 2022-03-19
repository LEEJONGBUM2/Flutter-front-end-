import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class FAQPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
        color: Color(0xffD3D3D3),
        child: SingleChildScrollView(
            child: Column(children: <Widget>[
          Text(
            "Q&A",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 32,
                color: Colors.black),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Column(children: <Widget>[
              Container(
                width: width / 3,
                child: GFAccordion(
                    title: 'What is Iconnexz Digital Service Mall?',
                    content:
                        'Iconnexz Digital Service Mall website is an e-commerce system that allows clients to purchase goods from sellers through a network infrastructure based on the concept of cyber markets. '),
              ),
              Container(
                width: width / 3,
                child: GFAccordion(
                    title: 'What is the history of the Iconnexz Company?',
                    content:
                        'ICONNEXZ (M) SDN. BHD company is a malaysian private limited company founded in 2018; The nature of business is to develop web applications, web portals, and data processing activities.'),
              ),
              Container(
                width: width / 3,
                child: GFAccordion(
                    title:
                        'What services do Iconnexz online shopping malls usually offer?',
                    content:
                        'the website has a location-based system to provide customized information to clients through their interests, purchase patterns, and consumption trends. In terms of functionality, the company presents intuitive designs through UX/UI development and specific designs such as user points, coupons, and merchandise transactions.'),
              ),
            ]),
            Column(children: <Widget>[
              Container(
                width: width / 3,
                child: GFAccordion(
                    title:
                        'What are the benefits of Iconnexz online shopping mall?',
                    content:
                        '(Location-Based Services)\nTo find the joy of real life beyond the purpose of simple information retrieval, users can choose the city where they are located and only the main services provided at that location are displayed on the website.\n\n(Chatbot Service)\nBefore the chatbot service is developed, you have to wait a long time after inquiring about the requirements through the bulletin board.\n\n(Electronic Payment Service)\nElectronic payment methods can be used on credit cards, online banking, and electronic payment portal sites such as PayPal and Stripe.'),
              ),
              Container(
                width: width / 3,
                child: GFAccordion(
                    title:
                        'What are the constraints of Iconnexz online shopping mall?',
                    content:
                        '(Location-Based Services)\nLocation-based systems have become an issue in terms of privacy violations.\n\n(Chatbot Service)\nDialog-based chatbots are only appropriate for customer consultation purposes, but they are not suitable for finding information or performing functions.\n\n(Electronic Payment Service)\nVirtual electronic payment systems on the Internet pose a dangerous problem.'),
              ),
              Container(
                width: width / 3,
                child: GFAccordion(
                    title:
                        'What are the system requirements on the Iconnexz online shopping mall website?',
                    content:
                        'Network-based businesses can reduce costs without time and space constraints, making new changes in distributors` environment and marketing strategies. With the introduction of digital shopping malls, public users tend to move to other shopping malls easily without feeling the burden or restraint of physical facility conversion costs.'),
              ),
            ]),
          ]),
          SizedBox(
            height: 10,
          ),
        ])));
  }
}
