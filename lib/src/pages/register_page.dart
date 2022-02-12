import 'dart:async';
import 'dart:developer';

import 'package:cmu_mobile_app/api/auth_api.dart';
import 'package:cmu_mobile_app/models/sign_up_model.dart';
import 'package:cmu_mobile_app/models/user_auth_model.dart';
import 'package:cmu_mobile_app/services/shared_preferences/shared_pref.dart';
import 'package:cmu_mobile_app/src/pages/home/home_page.dart';
import 'package:cmu_mobile_app/src/widgets/buttons/main_button.dart';
import 'package:cmu_mobile_app/src/widgets/buttons/main_radio_button.dart';
import 'package:cmu_mobile_app/src/widgets/layouts/main_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_radio_group/flutter_radio_group.dart';

import 'dashborad/dashborad_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _repassword = TextEditingController();
  List<UserAuthModel> studentList = <UserAuthModel>[];
  List<String> studentItemList = [];

  String role = "รพสต";
  String studentId = "";
  String dropdownvalue = 'กรุณาเลือก';

  void _check() {
    if (_username.text == "" &&
        _password.text == "" &&
        _email.text == "" &&
        _repassword.text == "") {
      log("field is empty");
    } else if (_password.text != _repassword.text) {
      log("password not same");
    } else if (_password.text.length < 6) {
      log("password length < 6");
    } else {
      if (role == "วัยรุ่น" || role == "รพสต") {
        signUp();
      } else {
        studentId = getStudentID();
        if (studentId == "") {
          log("studentId is null $role");
        } else {
          signUp();
        }
      }
    }
  }

  String changeRole(String role) {
    switch (role) {
      case "วัยรุ่น":
        return "student";
      case "ผู้ปกครอง":
        return "parent";
      case "อาจารย์":
        return "teacher";
      case "พระสงฆ์":
        return "monk";
      case "รพสต":
        return "hospital";

      default:
        return "";
    }
  }

  String getStudentID() {
    List<String> list = studentItemList;
    list.removeAt(0);
    String _studentId = "0";
    for (var i = 0; i < list.length; i++) {
      if (list[i] == dropdownvalue) {
        _studentId = studentList[i].id.toString();
      }
    }

    return _studentId;
  }

  void getStudent() async {
    studentList = await AuthApi.getStudents();
    for (var e in studentList) {
      studentItemList.add(e.name.toString());
    }
    studentItemList.insert(0, "กรุณาเลือก");
  }

  void signUp() async {
    SignUpModel param = SignUpModel(
      email: _email.text,
      name: _username.text,
      password: _password.text,
      passwordConfirmation: _repassword.text,
      role: changeRole(role),
      studentId: getStudentID(),
    );
    final user = await AuthApi.signUp(param: param);
    await SharedPref.setStringPref(
      key: "user",
      value: user.toJson().toString(),
    );
    _showDialog();
  }

  void _showDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          clipBehavior: Clip.hardEdge,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ), //this right here
          child: Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                width: 1,
                color: const Color(0xffFF6600),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.check,
                    size: 50,
                    color: Color(0xffFF6600),
                  ),
                  Text(
                    'เรียบร้อย',
                    style: TextStyle(
                      color: Color(0xffFF6600),
                      fontSize: 24,
                    ),
                  ),
                  // Visibility(
                  //   visible: _listHorizontal[index] == "วัยรุ่น" ? true : false,
                  //   child: const Text(
                  //     'รหัสสมาชิก = 1',
                  //     style: TextStyle(
                  //       color: Color(0xffFF6600),
                  //       fontSize: 18,
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        );
      },
    );
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(
            initPage: 0,
          ),
        ),
      );
    });
  }

  @override
  void initState() {
    getStudent();
    super.initState();
  }

  @override
  void dispose() {
    _username.dispose();
    _password.dispose();
    _email.dispose();
    _repassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MainLayout(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.fromLTRB(40, 20, 40, 20),
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.fromLTRB(0, 40, 0, 40),
                  child: const Center(
                    child: Text(
                      'สมัครสมาชิก',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
                _field(
                  title: 'Email',
                  controller: _email,
                  keyboardType: TextInputType.emailAddress,
                ),
                _field(
                  title: 'ชื่อ',
                  controller: _username,
                ),
                _field(
                  title: 'รหัสผ่าน',
                  controller: _password,
                  obscureText: true,
                ),
                _field(
                  title: 'ยืนยันรหัสผ่าน',
                  controller: _repassword,
                  obscureText: true,
                ),
                _field(title: 'บทบาท', titleOnly: true),
                MainRadioButton(
                  title: "รพสต",
                  onChanged: (val) {
                    setState(() {
                      role = val!;
                    });
                  },
                  groupValue: role,
                ),
                MainRadioButton(
                  title: "วัยรุ่น",
                  onChanged: (val) {
                    setState(() {
                      role = val!;
                    });
                  },
                  groupValue: role,
                ),
                MainRadioButton(
                  title: "ผู้ปกครอง",
                  onChanged: (val) {
                    setState(() {
                      role = val!;
                    });
                  },
                  groupValue: role,
                ),
                MainRadioButton(
                  title: "อาจารย์",
                  onChanged: (val) {
                    setState(() {
                      role = val!;
                    });
                  },
                  groupValue: role,
                ),
                MainRadioButton(
                  title: "พระสงฆ์",
                  onChanged: (val) {
                    setState(() {
                      role = val!;
                    });
                  },
                  groupValue: role,
                ),
                const SizedBox(
                  height: 20,
                ),
                Visibility(
                  visible: role != "วัยรุ่น" || role != "รพสต",
                  child: DropdownButton(
                    value: dropdownvalue,
                    items: studentItemList.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? value) {
                      dropdownvalue = value!;
                      setState(() {});
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                MainButton(
                  ontab: () {
                    _check();
                  },
                  borderRadius: 50,
                  title: 'สมัคร',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox _field({
    required String title,
    TextEditingController? controller,
    bool titleOnly = false,
    bool obscureText = false,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return SizedBox(
      height: 40,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            flex: 2,
            child: Text(title + " : ", style: const TextStyle(fontSize: 12)),
          ),
          Expanded(
            flex: 3,
            child: Visibility(
              visible: !titleOnly,
              child: TextField(
                keyboardType: keyboardType,
                obscureText: obscureText,
                controller: controller,
                style: const TextStyle(fontSize: 12),
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
