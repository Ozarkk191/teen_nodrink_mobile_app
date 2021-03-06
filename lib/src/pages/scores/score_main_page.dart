import 'package:cmu_mobile_app/src/pages/scores/score_type/post_test/list_post_test_page.dart';
import 'package:cmu_mobile_app/src/pages/scores/score_type/question/list_question_page.dart';
import 'package:cmu_mobile_app/src/pages/scores/score_type/reflex_evaluate/list_reflex_evaluate_page.dart';
import 'package:flutter/material.dart';

import '../../../models/all_user_model.dart';
import '../../widgets/appbar/custom_appbar.dart';
import '../../widgets/layouts/main_layout.dart';

class ScoreMainPage extends StatefulWidget {
  final User user;
  final String role;
  const ScoreMainPage({Key? key, required this.user, required this.role})
      : super(key: key);

  @override
  State<ScoreMainPage> createState() => _ScoreMainPageState();
}

class _ScoreMainPageState extends State<ScoreMainPage> {
  List<String> list = [];
  List<String> listStudent = [
    "แบบสอบถาม",
    "แบบทดสอบการเรียนรู้",
    "แบบสอบถามสะท้อนและติดตามการเรียนรู้",
  ];
  List<String> listTeacherParent = [
    "แบบสอบถาม",
    "แบบสอบถามสะท้อนและติดตามการเรียนรู้",
  ];
  List<String> listMonk = [
    "แบบสอบถาม",
    "แบบสอบถามสะท้อนและติดตามการเรียนรู้",
  ];

  Future<List<String>> selecteList() async {
    switch (widget.role) {
      case "student":
        return listStudent;
      case "teacher":
      case "parent":
        return listTeacherParent;
      case "monk":
        return listMonk;
      default:
        return listStudent;
    }
  }

  void getList() async {
    list = await selecteList();
    setState(() {});
  }

  @override
  void initState() {
    getList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainLayout(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              CustomAppbar(
                onTap: () {
                  Navigator.pop(context);
                },
                title: 'กลุ่ม ${widget.role}',
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(20),
                child: ListView.builder(
                  itemCount: list.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          if (list[index] == "แบบสอบถาม") {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ListQuestionPage(
                                  user: widget.user,
                                  role: widget.role,
                                ),
                              ),
                            );
                          } else if (list[index] == "แบบทดสอบการเรียนรู้") {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ListPostTestPage(
                                  user: widget.user,
                                ),
                              ),
                            );
                          } else if (list[index] ==
                              "แบบสอบถามสะท้อนและติดตามการเรียนรู้") {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ListReflexEvaluatePage(
                                  user: widget.user,
                                  role: widget.role,
                                ),
                              ),
                            );
                          }
                        },
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(child: Text(list[index])),
                                const Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                            Container(
                              height: 1,
                              color: Colors.grey.shade300,
                            ),
                          ],
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
