import 'package:flutter/material.dart';
import 'package:fyppetsshop/UI/Themes/fonts.dart';
import 'package:readmore/readmore.dart';

class PravicyPolicy extends StatefulWidget {
  @override
  State<PravicyPolicy> createState() => _PravicyPolicyState();
}

class _PravicyPolicyState extends State<PravicyPolicy> {
  //first paragrph
  String content =
      ('At PetShop App, we are committed to protecting the privacy and security of our users personal information. This Privacy Policy Statement outlines how we collect, use disclose and safeguard your information when you use our mobile application, PetShop App. By using our app, you consent to the practices described in this Privacy Policy Statement.');
  //Personal information
  String content1 =("When you register an account on PetShop App, \nWe collect your name, email address, and any other information you provide voluntarily.");
// 1.2 Usage Information:
  String content2 =("hgfghWe collect information about your interactions with the app, such as the features you use, the products you view or purchase, and the content you access. \nWe may collect device information, including your IP address, device type, operating system, and mobile network information.");
  //Use of Information:
  // 2.1 Personal Information:
  String content3=("We use your personal information to create and maintain your account, process your transactions, and provide customer support \nWith your consent, we may send you promotional emails, newsletters, or other marketing communications \nWe may use your information to personalize your experience with PetShop App and to improve our services.");
 //2.2 Usage Information:
  String content4 =("We use usage information to analyze app performance, troubleshoot technical issues, and improve the app's functionality and user experience. \nAggregated and anonymized usage information may be used for research, statistical analysis, and business purposes.");
  //3.1 Service Providers:
  String content5 =("We may share your personal information with trusted third-party service providers who assist us in operating our app, processing payments, conducting business analysis, or delivering services to you.\nThese service providers are obligated to maintain the confidentiality and security of your information.");
 // Data Security:
  String content6=("We implement reasonable security measures to protect your personal information from unauthorized access, disclosure, alteration, or destruction.\nHowever, no method of transmission over the internet or electronic storage is 100% secure, and we cannot guarantee absolute security.");
  //Data Retention:
  String content7=("We retain your personal information for as long as necessary to fulfill the purposes outlined in this Privacy Policy Statement, unless a longer retention period is required or permitted by law.");
  // Children's Privacy:
  String content8=("PetShop App is not intended for use by children under the age of 13. We do not knowingly collect personal information from children under 13. If you believe we have inadvertently collected information from a child, please contact us to delete it.");
  //Updates to this Privacy Policy:
  String content9=("We may update this Privacy Policy Statement from time to time to reflect changes in our practices or legal requirements. We will provide notice of any material updates and obtain your consent if required by applicable laws.");
  // Contact Us:
  String content10=("If you have any questions, concerns, or requests regarding this Privacy Policy Statement or our privacy practices, please contact us at [contact information].");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pravacy Policy"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                child: Container(
                  child: ReadMoreText(
                    content,
                    trimLines: 5,
                    textAlign: TextAlign.justify,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "ShowMore",
                    trimExpandedText: "ShowLess",
                    lessStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    moreStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Text(
                '1. Information We Collect:',
                style: extralarge,
              ),
              SizedBox(height: 5,),
              Text(
                '1.1 Personal Information:',
                style: extralarge,
              ),
              SizedBox(height: 5,),
              //Personal information
              SingleChildScrollView(
                child: Container(
                  child: ReadMoreText(
                    content1,
                    trimLines: 5,
                    textAlign: TextAlign.justify,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: "ShowMore",
                    trimExpandedText: "ShowLess",
                    lessStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    moreStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              //1.2 Usage Information:
              Text(
                '1.2 Usage Information:',
                style: extralarge,
              ),
              SizedBox(height: 5,),
              //1.2 Usage Information
              SingleChildScrollView(
                child: Container(
                  child: ReadMoreText(
                    content2,
                    trimLines: 5,
                    textAlign: TextAlign.justify,
                    trimMode: TrimMode.Line,

                    trimCollapsedText: "ShowMore",
                    trimExpandedText: "ShowLess",
                    lessStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    moreStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Text(
                '2 Use of Information:',
                style: extralarge,
              ),
              SizedBox(height: 5,),
              Text(
                '2.1 Personal Information:',
                style: extralarge,
              ),
              SizedBox(height: 5,),
              //1.2 personal information
              SingleChildScrollView(
                child: Container(
                  child: ReadMoreText(
                    content3,
                    trimLines: 5,
                    textAlign: TextAlign.justify,
                    trimMode: TrimMode.Line,

                    trimCollapsedText: "ShowMore",
                    trimExpandedText: "ShowLess",
                    lessStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    moreStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Text(
                '2.2 Usage Information:',
                style: extralarge,
              ),
              //2.2 Usage Information:
              SingleChildScrollView(
                child: Container(
                  child: ReadMoreText(
                    content4,
                    trimLines: 5,
                    textAlign: TextAlign.justify,
                    trimMode: TrimMode.Line,

                    trimCollapsedText: "ShowMore",
                    trimExpandedText: "ShowLess",
                    lessStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    moreStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Text(
                '3 Sharing of Information:',
                style: extralarge,
              ),
              SizedBox(height: 5,),
              Text(
                '3.1 Service Providers:',
                style: extralarge,
              ),
              SizedBox(height: 5,),
              SingleChildScrollView(
                child: Container(
                  child: ReadMoreText(
                    content5,
                    trimLines: 5,
                    textAlign: TextAlign.justify,
                    trimMode: TrimMode.Line,

                    trimCollapsedText: "ShowMore",
                    trimExpandedText: "ShowLess",
                    lessStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    moreStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),




              SizedBox(height: 5,),
              Text(
                '4 Data Security:',
                style: extralarge,
              ),
              //4 Data Security::
              SingleChildScrollView(
                child: Container(
                  child: ReadMoreText(
                    content6,
                    trimLines: 5,
                    textAlign: TextAlign.justify,
                    trimMode: TrimMode.Line,

                    trimCollapsedText: "ShowMore",
                    trimExpandedText: "ShowLess",
                    lessStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    moreStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Text(
                '5 Data Retention:',
                style: extralarge,
              ),
              SizedBox(height: 5,),
              // 5Data Retention:
              SingleChildScrollView(
                child: Container(
                  child: ReadMoreText(
                    content7,
                    trimLines: 5,
                    textAlign: TextAlign.justify,
                    trimMode: TrimMode.Line,

                    trimCollapsedText: "ShowMore",
                    trimExpandedText: "ShowLess",
                    lessStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    moreStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 5,),
              Text(
                "6 Updates to this Privacy Policy:",
                style: extralarge,
              ),
              SizedBox(height: 5,),
              //6Updates to this Privacy Policy:
              SingleChildScrollView(
                child: Container(
                  child: ReadMoreText(
                    content8,
                    trimLines: 5,
                    textAlign: TextAlign.justify,
                    trimMode: TrimMode.Line,

                    trimCollapsedText: "ShowMore",
                    trimExpandedText: "ShowLess",
                    lessStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    moreStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5,),
              Text(
                '7 Updates to this Privacy Policy:',
                style: extralarge,
              ),
              SizedBox(height: 5,),
              // Updates to this Privacy Policy:
              SingleChildScrollView(
                child: Container(
                  child: ReadMoreText(
                    content9,
                    trimLines: 5,
                    textAlign: TextAlign.justify,
                    trimMode: TrimMode.Line,

                    trimCollapsedText: "ShowMore",
                    trimExpandedText: "ShowLess",
                    lessStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    moreStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Text(
                '8 Contact Us:',
                style: extralarge,
              ),
              SizedBox(height: 5,),
              // Updates to this Privacy Policy:
              SingleChildScrollView(
                child: Container(
                  child: ReadMoreText(
                    content10,
                    trimLines: 5,
                    textAlign: TextAlign.justify,
                    trimMode: TrimMode.Line,

                    trimCollapsedText: "ShowMore",
                    trimExpandedText: "ShowLess",
                    lessStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    moreStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                    style: TextStyle(
                      fontSize: 16,
                    ),
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
