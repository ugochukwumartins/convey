import 'package:envoymachaant/components/appbar.dart';
import 'package:envoymachaant/constant/svg.dart';
import 'package:envoymachaant/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FAQs extends StatefulWidget {
  FAQs({Key? key}) : super(key: key);

  @override
  State<FAQs> createState() => _FAQsState();
}

class _FAQsState extends State<FAQs> {
  bool isAnswerVisible = false;
  showAnswer() {
    setState(() {
      isAnswerVisible = !isAnswerVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: appBar(context,
          text: "FAQs",
          isText: true,
          fontSize: 20,
          color: AppColors.black,
          backgroundColor: AppColors.white),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 24, right: 24),
        child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FaqCard(
                  title: "What is Convey",
                  isAnswerVisible: isAnswerVisible,
                  ontap: () {
                    showAnswer();
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                FaqCard(
                  title: "What is Convey",
                  isAnswerVisible: isAnswerVisible,
                  ontap: () {
                    showAnswer();
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                FaqCard(
                  title: "What is Convey",
                  isAnswerVisible: isAnswerVisible,
                  ontap: () {
                    showAnswer();
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                FaqCard(
                  title: "What is Convey",
                  isAnswerVisible: isAnswerVisible,
                  ontap: () {
                    showAnswer();
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                FaqCard(
                  title: "What is Convey",
                  isAnswerVisible: isAnswerVisible,
                  ontap: () {
                    showAnswer();
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                FaqCard(
                  title: "What is Convey",
                  isAnswerVisible: isAnswerVisible,
                  ontap: () {
                    showAnswer();
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                FaqCard(
                  title: "What is Convey",
                  isAnswerVisible: isAnswerVisible,
                  ontap: () {
                    showAnswer();
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                FaqCard(
                  title: "What is Convey",
                  isAnswerVisible: isAnswerVisible,
                  ontap: () {
                    showAnswer();
                  },
                ),
                SizedBox(
                  width: 20,
                ),
              ]),
        ),
      ),
    );
  }
}

class FaqCard extends StatelessWidget {
  String title;
  void Function()? ontap;
  bool isAnswerVisible;

  FaqCard({
    required this.title,
    this.isAnswerVisible = false,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 8.6,

            //margin: const EdgeInsets.all(25),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: isAnswerVisible ? AppColors.gray3 : AppColors.gray7,
                border: Border.all(
                  color: isAnswerVisible ? AppColors.gray3 : AppColors.gray7,
                )
                // gradient: boxGradient,
                ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    "Question:",
                    style: TextStyle(
                      color:
                          isAnswerVisible ? AppColors.white : AppColors.black,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Text(
                      title,
                      softWrap: true,
                      maxLines: 2,
                      style: TextStyle(
                        color:
                            isAnswerVisible ? AppColors.white : AppColors.black,
                      ),
                    ),
                  ),
                  isAnswerVisible
                      ? SvgPicture.asset(
                          chevron_up,
                          color: AppColors.white,
                        )
                      : SvgPicture.asset(
                          chevron_down,
                          color: AppColors.black,
                        ),
                  Text(
                    "Show",
                    style: TextStyle(
                      color:
                          isAnswerVisible ? AppColors.white : AppColors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          isAnswerVisible
              ? Row(
                  children: [
                    Text("Answer:"),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Text(
                        "N200.00",
                        softWrap: true,
                        maxLines: 2,
                      ),
                    ),
                  ],
                )
              : SizedBox.shrink(),
          isAnswerVisible
              ? SizedBox(
                  height: 24,
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
