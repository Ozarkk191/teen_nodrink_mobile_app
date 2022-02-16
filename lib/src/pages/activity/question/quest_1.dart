import 'dart:convert';
import 'dart:developer';

import 'package:cmu_mobile_app/api/question_api.dart';
import 'package:cmu_mobile_app/models/questions/post_test_model.dart';
import 'package:cmu_mobile_app/services/shared_preferences/shared_pref.dart';
import 'package:cmu_mobile_app/src/pages/home/home_page.dart';
import 'package:cmu_mobile_app/src/widgets/buttons/main_button.dart';
import 'package:cmu_mobile_app/src/widgets/buttons/main_radio_button.dart';
import 'package:cmu_mobile_app/utils/quiz_list.dart';
import 'package:flutter/material.dart';

class Quest1 extends StatefulWidget {
  final String prePost;
  final PageController controller;
  final int nextPage;
  final int endPage;
  const Quest1({
    Key? key,
    required this.prePost,
    required this.controller,
    required this.nextPage,
    this.endPage = 1000,
  }) : super(key: key);

  @override
  _Quest1State createState() => _Quest1State();
}

class _Quest1State extends State<Quest1> {
  List<String> anwserList = [];

  late PostTestModel test = PostTestModel();

  void addList() {
    for (var i = 0; i < alcoholQuizList.length; i++) {
      anwserList.add("");
    }
    setState(() {});
  }

  void onSave() async {
    if (widget.prePost == "Post Test") {
      final data = await SharedPref.getStringPref(key: "user");
      Map<String, dynamic> user = jsonDecode(data) as Map<String, dynamic>;
      test.userId = user["id"];
      test.total = test.q1 + test.q2 + test.q3 + test.q4 + test.q5 + test.q6;
      log(test.toJson().toString());

      await QuestionApi.setQuestion(
        path: "student1",
        param: test,
      ).then((value) {
        log("question =>${value['message']}");
        if (value['message'] == "success") {
          if (test.total! >= 4) {
            if (widget.nextPage == widget.endPage) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(initPage: 0),
                ),
              );
            } else {
              widget.controller.jumpToPage(widget.nextPage);
            }
          } else {
            log("ไม่ผ่าน");
          }
        }
      });
    } else {
      if (widget.nextPage == widget.endPage) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(initPage: 0),
          ),
        );
      } else {
        widget.controller.jumpToPage(widget.nextPage);
      }
    }
  }

  @override
  void initState() {
    addList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: _size.width,
          height: _size.height,
          color: const Color(0xfffbd4b9),
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 30),
                Text(
                  widget.prePost,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "ความรู้เกี่ยวกับเครื่องดื่มแอลกอฮอล์",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      alcoholQuizList[0].quiz!,
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    quiz(
                      choice: alcoholQuizList[0].choice!,
                      answer: anwserList[0],
                      onChanged: (val) {
                        setState(() {
                          anwserList[0] = val!;

                          if (val ==
                              alcoholQuizList[0]
                                  .choice![alcoholQuizList[0].aswer!]) {
                            test.q1 = 1;
                          } else {
                            test.q1 = 0;
                          }
                        });
                      },
                    ),
                    RichText(
                      text: TextSpan(
                        text: '',
                        style: DefaultTextStyle.of(context).style,
                        children: const <TextSpan>[
                          TextSpan(
                            text:
                                '2. อวัยวะส่วนใดของร่างกายที่จะได้รับพิษจากการดื่มสุรา ',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextSpan(
                            text: 'มากที่สุด',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                    quiz(
                      choice: alcoholQuizList[1].choice!,
                      answer: anwserList[1],
                      onChanged: (val) {
                        setState(() {
                          anwserList[1] = val!;
                          if (val ==
                              alcoholQuizList[1]
                                  .choice![alcoholQuizList[1].aswer!]) {
                            test.q2 = 1;
                          } else {
                            test.q2 = 0;
                          }
                        });
                      },
                    ),
                    Text(
                      alcoholQuizList[2].quiz!,
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    quiz(
                      choice: alcoholQuizList[2].choice!,
                      answer: anwserList[2],
                      onChanged: (val) {
                        setState(() {
                          anwserList[2] = val!;
                          if (val ==
                              alcoholQuizList[2]
                                  .choice![alcoholQuizList[2].aswer!]) {
                            test.q3 = 1;
                          } else {
                            test.q3 = 0;
                          }
                        });
                      },
                    ),
                    RichText(
                      text: TextSpan(
                        text: '',
                        style: DefaultTextStyle.of(context).style,
                        children: const <TextSpan>[
                          TextSpan(
                            text:
                                '4. ผลกระทบของการดื่มสุราต่อการใช้ชีวิตในปัจจุบันที่ ',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                          TextSpan(
                            text: 'สําคัญมากที่สุด',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(
                            text: 'คือข้อใด',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    quiz(
                      choice: alcoholQuizList[3].choice!,
                      answer: anwserList[3],
                      onChanged: (val) {
                        setState(() {
                          anwserList[3] = val!;
                          if (val ==
                              alcoholQuizList[3]
                                  .choice![alcoholQuizList[3].aswer!]) {
                            test.q4 = 1;
                          } else {
                            test.q4 = 0;
                          }
                        });
                      },
                    ),
                    Text(
                      alcoholQuizList[4].quiz!,
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    quiz(
                      choice: alcoholQuizList[4].choice!,
                      answer: anwserList[4],
                      onChanged: (val) {
                        setState(() {
                          anwserList[4] = val!;
                          if (val ==
                              alcoholQuizList[4]
                                  .choice![alcoholQuizList[4].aswer!]) {
                            test.q5 = 1;
                          } else {
                            test.q5 = 0;
                          }
                        });
                      },
                    ),
                    Text(
                      alcoholQuizList[5].quiz!,
                      style: const TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    quiz(
                      choice: alcoholQuizList[5].choice!,
                      answer: anwserList[5],
                      onChanged: (val) {
                        setState(() {
                          anwserList[5] = val!;
                          if (val ==
                              alcoholQuizList[5]
                                  .choice![alcoholQuizList[5].aswer!]) {
                            test.q6 = 1;
                          } else {
                            test.q6 = 0;
                          }
                        });
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                MainButton(
                  width: _size.width * 0.5,
                  ontab: onSave,
                  borderRadius: 50,
                  title: widget.nextPage == widget.endPage
                      ? "ส่งคำตอบ"
                      : 'ส่งคำตอบ',
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column quiz({
    required List<String> choice,
    required String answer,
    required Function(String? val) onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: choice.length,
          itemBuilder: (context, index) {
            return MainRadioButton(
              title: choice[index],
              groupValue: answer,
              onChanged: onChanged,
            );
          },
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
