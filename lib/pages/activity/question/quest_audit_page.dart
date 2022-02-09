import 'package:cmu_mobile_app/pages/home/home_page.dart';
import 'package:cmu_mobile_app/widgets/buttons/main_button.dart';
import 'package:cmu_mobile_app/widgets/buttons/main_radio_button.dart';
import 'package:flutter/material.dart';

class QuestAuditPage extends StatefulWidget {
  final PageController controller;
  final int nextPage;
  final int endPage;
  const QuestAuditPage({
    Key? key,
    required this.controller,
    required this.nextPage,
    this.endPage = 1000,
  }) : super(key: key);

  @override
  _QuestAuditPageState createState() => _QuestAuditPageState();
}

class _QuestAuditPageState extends State<QuestAuditPage> {
  String anwser1 = "";
  String anwser2 = "";
  String anwser3 = "";
  String anwser4 = "";
  String anwser5 = "";
  String anwser6 = "";
  String anwser7 = "";
  String anwser8 = "";
  String anwser9 = "";
  String anwser10 = "";
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
                const SizedBox(height: 20),
                SizedBox(
                  width: _size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ส่วนที่ ${widget.nextPage - 1}  แบบประเมินปัญหาการดื่มสุรา (AUDIT)',
                        style: const TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      _text(context),
                      const SizedBox(height: 20),
                      quiz1(),
                      const Text(
                        '2.เลือกตอบเพียง ข้อเดียว (ข้อ 2.1 หรือ 2.2 หรือ 2.3)',
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      quiz2(),
                      quiz3(),
                      quiz4(),
                      quiz5(),
                      quiz6(),
                      quiz7(),
                      quiz8(),
                      quiz9(),
                      quiz10(),
                      const SizedBox(height: 40),
                      Center(
                        child: MainButton(
                          ontab: () {
                            if (widget.nextPage == widget.endPage) {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const HomePage(initPage: 0),
                                ),
                              );
                            } else {
                              widget.controller.jumpToPage(widget.nextPage);
                            }
                          },
                          width: _size.width * 0.5,
                          borderRadius: 50,
                          title: widget.nextPage == widget.endPage
                              ? "ส่งคำตอบ"
                              : 'ถัดไป',
                        ),
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column quiz10() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '9.เคยมีแพทย์ หรือบุคลากรทางการแพทย์หรือเพื่อนฝูงหรือญาติพี่น้องแสดงความเป็นห่วงเป็นใยต่อการดื่มสุราของคุณหรือไม่',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        MainRadioButton(
          title: '(0)    ไม่เคยเลย',
          groupValue: anwser10,
          onChanged: (answer) {
            setState(() {
              anwser10 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(2)    เคย แต่ไม่ได้เกิดขึ้นในปีที่แล้ว',
          groupValue: anwser10,
          onChanged: (answer) {
            setState(() {
              anwser10 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(4)    เคยเกิดขึ้นในช่วงหนึ่งปีที่แล้ว',
          groupValue: anwser10,
          onChanged: (answer) {
            setState(() {
              anwser10 = answer!;
            });
          },
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Column quiz9() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '9.ตัวคุณเองหรือคนอื่น เคยได้รับบาดเจ็บซึ่งเป็นผลจากการดื่มสุราของคุณหรือไม่',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        MainRadioButton(
          title: '(0)    ไม่เคยเลย',
          groupValue: anwser9,
          onChanged: (answer) {
            setState(() {
              anwser9 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(2)    เคย แต่ไม่ได้เกิดขึ้นในปีที่แล้ว',
          groupValue: anwser9,
          onChanged: (answer) {
            setState(() {
              anwser9 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(4)    เคยเกิดขึ้นในช่วงหนึ่งปีที่แล้ว',
          groupValue: anwser9,
          onChanged: (answer) {
            setState(() {
              anwser9 = answer!;
            });
          },
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Column quiz8() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '8.ในช่วงปีที่แล้ว มีบ่อยเพียงไรที่คุณไม่สามารถจำได้ว่าเกิดอะไรขึ้นในคืนที่ผ่านมา เพราะว่าคุณได้ดื่มสุราเข้าไป',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        MainRadioButton(
          title: '(0)    ไม่เคยเลย',
          groupValue: anwser8,
          onChanged: (answer) {
            setState(() {
              anwser8 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(1)    น้อยกว่าเดือนละครั้ง',
          groupValue: anwser8,
          onChanged: (answer) {
            setState(() {
              anwser8 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(2)    เดือนละครั้ง',
          groupValue: anwser8,
          onChanged: (answer) {
            setState(() {
              anwser8 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(3)    สัปดาห์ละครั้ง',
          groupValue: anwser8,
          onChanged: (answer) {
            setState(() {
              anwser8 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(4)    ทุกวัน หรือเกือบทุกวัน',
          groupValue: anwser8,
          onChanged: (answer) {
            setState(() {
              anwser8 = answer!;
            });
          },
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Column quiz7() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '7.ในช่วงหนึ่งปีที่แล้ว มีบ่อยเพียงไรที่คุณรู้สึกไม่ดี โกรธหรือเสียใจ เนื่องจากคุณได้ทำบางสิ่งบางอย่างลงไปในขณะที่คุณดื่มสุราเข้าไป',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        MainRadioButton(
          title: '(0)    ไม่เคยเลย',
          groupValue: anwser7,
          onChanged: (answer) {
            setState(() {
              anwser7 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(1)    น้อยกว่าเดือนละครั้ง',
          groupValue: anwser7,
          onChanged: (answer) {
            setState(() {
              anwser7 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(2)    เดือนละครั้ง',
          groupValue: anwser7,
          onChanged: (answer) {
            setState(() {
              anwser7 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(3)    สัปดาห์ละครั้ง',
          groupValue: anwser7,
          onChanged: (answer) {
            setState(() {
              anwser7 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(4)    ทุกวัน หรือเกือบทุกวัน',
          groupValue: anwser7,
          onChanged: (answer) {
            setState(() {
              anwser7 = answer!;
            });
          },
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Column quiz6() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '6.ในช่วงหนึ่งปีที่แล้ว มีบ่อยเพียงไรที่คุณต้องรีบดื่มสุราทันทีในตอนเช้า เพื่อจะได้ดำเนินชีวิตตามปกติ หรือถอนอาการเมาค้างจากการดื่มหนักในคืนที่ผ่านมา',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        MainRadioButton(
          title: '(0)    ไม่เคยเลย',
          groupValue: anwser6,
          onChanged: (answer) {
            setState(() {
              anwser6 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(1)    น้อยกว่าเดือนละครั้ง',
          groupValue: anwser6,
          onChanged: (answer) {
            setState(() {
              anwser6 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(2)    เดือนละครั้ง',
          groupValue: anwser6,
          onChanged: (answer) {
            setState(() {
              anwser6 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(3)    สัปดาห์ละครั้ง',
          groupValue: anwser6,
          onChanged: (answer) {
            setState(() {
              anwser6 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(4)    ทุกวัน หรือเกือบทุกวัน',
          groupValue: anwser6,
          onChanged: (answer) {
            setState(() {
              anwser6 = answer!;
            });
          },
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Column quiz5() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '5.ในช่วงหนึ่งปีที่แล้ว มีบ่อยเพียงไรที่คุณไม่ได้ทำสิ่งที่คุณควรจะทำตามปกติ เพราะคุณมัวแต่ไปดื่มสุราเสีย',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        MainRadioButton(
          title: '(0)    ไม่เคยเลย',
          groupValue: anwser5,
          onChanged: (answer) {
            setState(() {
              anwser5 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(1)    น้อยกว่าเดือนละครั้ง',
          groupValue: anwser5,
          onChanged: (answer) {
            setState(() {
              anwser5 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(2)    เดือนละครั้ง',
          groupValue: anwser5,
          onChanged: (answer) {
            setState(() {
              anwser5 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(3)    สัปดาห์ละครั้ง',
          groupValue: anwser5,
          onChanged: (answer) {
            setState(() {
              anwser5 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(4)    ทุกวัน หรือเกือบทุกวัน',
          groupValue: anwser5,
          onChanged: (answer) {
            setState(() {
              anwser5 = answer!;
            });
          },
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Column quiz4() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '4.ในช่วงหนึ่งปีที่แล้ว มีบ่อยครั้งเพียงไรที่คุณพบว่าคุณไม่สามารถหยุดดื่มได้ หากคุณได้เริ่มดื่มไปแล้ว',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        MainRadioButton(
          title: '(0)    ไม่เคยเลย',
          groupValue: anwser4,
          onChanged: (answer) {
            setState(() {
              anwser4 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(1)    น้อยกว่าเดือนละครั้ง',
          groupValue: anwser4,
          onChanged: (answer) {
            setState(() {
              anwser4 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(2)    เดือนละครั้ง',
          groupValue: anwser4,
          onChanged: (answer) {
            setState(() {
              anwser4 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(3)    สัปดาห์ละครั้ง',
          groupValue: anwser4,
          onChanged: (answer) {
            setState(() {
              anwser4 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(4)    ทุกวัน หรือเกือบทุกวัน',
          groupValue: anwser4,
          onChanged: (answer) {
            setState(() {
              anwser4 = answer!;
            });
          },
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Column quiz3() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '3.บ่อยครั้งเพียงไรที่คุณดื่มเบียร์ 4 กระป๋องขึ้นไป หรือเหล้าวิสกี้ 3 เป๊กขึ้นไป',
          style: TextStyle(
            fontSize: 12,
          ),
        ),
        MainRadioButton(
          title: '(0)    ไม่เคยเลย',
          groupValue: anwser3,
          onChanged: (answer) {
            setState(() {
              anwser3 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(1)    น้อยกว่าเดือนละครั้ง',
          groupValue: anwser3,
          onChanged: (answer) {
            setState(() {
              anwser3 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(2)    เดือนละครั้ง',
          groupValue: anwser3,
          onChanged: (answer) {
            setState(() {
              anwser3 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(3)    สัปดาห์ละครั้ง',
          groupValue: anwser3,
          onChanged: (answer) {
            setState(() {
              anwser3 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(4)    ทุกวัน หรือเกือบทุกวัน',
          groupValue: anwser3,
          onChanged: (answer) {
            setState(() {
              anwser3 = answer!;
            });
          },
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Column quiz2() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '   2.1 เวลาที่คุณดื่มสุรา โดยทั่วไปแล้วคุณดื่ม ประมาณเท่าไหร่ต่อวัน',
          style: TextStyle(fontSize: 12),
        ),
        MainRadioButton(
          title: '(1)    1-2 ดื่มมาตรฐาน',
          groupValue: anwser2,
          onChanged: (answer) {
            setState(() {
              anwser2 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(2)    3-4 ดื่มมาตรฐาน',
          groupValue: anwser2,
          onChanged: (answer) {
            setState(() {
              anwser2 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(3)    5-6 ดื่มมาตรฐาน',
          groupValue: anwser2,
          onChanged: (answer) {
            setState(() {
              anwser2 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(4)    7-9 ดื่มมาตรฐาน',
          groupValue: anwser2,
          onChanged: (answer) {
            setState(() {
              anwser2 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(5)    ตั้งแต่ 10 ดื่มมาตราฐานขึ้นไป',
          groupValue: anwser2,
          onChanged: (answer) {
            setState(() {
              anwser2 = answer!;
            });
          },
        ),
        const Text(
          '   2.2 ถ้าโดยทั่วไปดื่มเบียร์ เช่น สิงห์ ไฮเนเกน ลีโอ เชียร์ ไทเกอร์ ช้าง ดื่มประมาณเท่าไรต่อวัน',
          style: TextStyle(fontSize: 12),
        ),
        MainRadioButton(
          title: '(0)    1-1.5 กระป่อง/ ½ - ¾ ขวด',
          groupValue: anwser2,
          onChanged: (answer) {
            setState(() {
              anwser2 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(1)    2-3 กระป๋อง/1-1.5 ขวด',
          groupValue: anwser2,
          onChanged: (answer) {
            setState(() {
              anwser2 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(2)    3.5-4 กระป๋อง/2 ขวด',
          groupValue: anwser2,
          onChanged: (answer) {
            setState(() {
              anwser2 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(3)    4.5-7 กระป๋อง/3-4 ขวด',
          groupValue: anwser2,
          onChanged: (answer) {
            setState(() {
              anwser2 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(4)    7 กระป๋อง/4 ขวดขึ้นไป',
          groupValue: anwser2,
          onChanged: (answer) {
            setState(() {
              anwser2 = answer!;
            });
          },
        ),
        const Text(
          '   2.3 ถ้าโดยทั่วไปดื่มเหล้า เช่น แม่โขง หงส์ทอง หงส์ทิพย์ เหล้าขาว 40 ดีกรี ดื่มประมาณเท่าไรต่อวัน',
          style: TextStyle(fontSize: 12),
        ),
        MainRadioButton(
          title: '(0)    2-3 ฝา',
          groupValue: anwser2,
          onChanged: (answer) {
            setState(() {
              anwser2 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(1)    ¼ แบน',
          groupValue: anwser2,
          onChanged: (answer) {
            setState(() {
              anwser2 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(2)    ½ แบน',
          groupValue: anwser2,
          onChanged: (answer) {
            setState(() {
              anwser2 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(3)    4.5-7 กระป๋อง/3-4 ขวด',
          groupValue: anwser2,
          onChanged: (answer) {
            setState(() {
              anwser2 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(4)    ¾ แบน',
          groupValue: anwser2,
          onChanged: (answer) {
            setState(() {
              anwser2 = answer!;
            });
          },
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  Column quiz1() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          '1. คุณดื่มสุราบ่อยเพียงไร',
          style: TextStyle(fontSize: 12),
        ),
        MainRadioButton(
          title: '(0)    ไม่เคยเลย',
          groupValue: anwser1,
          onChanged: (answer) {
            setState(() {
              anwser1 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(1)    เดือนละครั้งหรือน้อยกว่า ',
          groupValue: anwser1,
          onChanged: (answer) {
            setState(() {
              anwser1 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(2)    2-4 ครั้งต่อเดือน',
          groupValue: anwser1,
          onChanged: (answer) {
            setState(() {
              anwser1 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(3)    3-4 ครั้งต่อสัปดาห์',
          groupValue: anwser1,
          onChanged: (answer) {
            setState(() {
              anwser1 = answer!;
            });
          },
        ),
        MainRadioButton(
          title: '(4)    4 ครั้งขึ้นไปต่อสัปดาห์',
          groupValue: anwser1,
          onChanged: (answer) {
            setState(() {
              anwser1 = answer!;
            });
          },
        ),
        const SizedBox(height: 20),
      ],
    );
  }

  RichText _text(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '',
        style: DefaultTextStyle.of(context).style,
        children: const <TextSpan>[
          TextSpan(
            text: 'คำชี้แจง ',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
          TextSpan(
            text: ' โปรดตอบคำถามต่อไปนี้ตามความเป็นจริง โดยทำเครื่องหมาย',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          TextSpan(
            text: ' X ',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text:
                'ทับตัวเลขหน้าคำตอบที่ตรงกับความเป็นจริงของท่านมากที่สุด โดย สุรา หมายถึง เครื่องดื่มแอลกอฮอล์ทุกชนิด ได้แก่ เบียร์ เหล้า สาโท กระแช่ วิสกี้ สปายไวน์ เป็นต้น ',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          TextSpan(
            text: 'คำตอบของท่านจะเป็นความลับ',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(
            text: ' กรุณาตอบคำถามตามความเป็นจริง',
            style: TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
