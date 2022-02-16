import 'package:cmu_mobile_app/models/user_model.dart';
import 'package:cmu_mobile_app/src/widgets/appbar/custom_appbar.dart';
import 'package:cmu_mobile_app/src/widgets/avatar/custom_avatar.dart';
import 'package:cmu_mobile_app/src/widgets/layouts/main_layout.dart';
import 'package:cmu_mobile_app/src/widgets/line/line.dart';
import 'package:cmu_mobile_app/src/widgets/textfields/search_textfield.dart';

import 'package:flutter/material.dart';

import 'gorup_content_page.dart';

class GroupPage extends StatefulWidget {
  final String groupName;
  const GroupPage({Key? key, required this.groupName}) : super(key: key);

  @override
  State<GroupPage> createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  late List<UserModel> userList = [
    UserModel(
      firstname: "สติ",
      lastname: "คิดดี",
      namePrefix: "นาย",
    ),
    UserModel(
      firstname: "มีบุญ",
      lastname: "กล้าหาญ",
      namePrefix: "นาย",
    ),
    UserModel(
      firstname: "พิศมัย",
      lastname: "  คำดี",
      namePrefix: "นางสาว",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainLayout(
        child: Column(
          children: [
            CustomAppbar(
              onTap: () {
                Navigator.pop(context);
              },
              title: widget.groupName,
            ),
            const SizedBox(height: 40),
            const SearchTextField(),
            const SizedBox(height: 40),
            const Line(),
            Expanded(
              child: ListView.builder(
                itemCount: userList.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GroupContentPage(
                            user: userList[index],
                          ),
                        ),
                      );
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                          child: Row(
                            children: [
                              const CustomAvatar(
                                path: "assets/images/ic_user.png",
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "${userList[index].namePrefix}${userList[index].firstname} ${userList[index].lastname}",
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                              Expanded(child: Container()),
                              const Icon(Icons.arrow_forward_ios_rounded)
                            ],
                          ),
                        ),
                        const Line(),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}