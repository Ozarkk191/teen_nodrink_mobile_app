import 'dart:ui';

import 'package:cmu_mobile_app/models/dashborad_model.dart';
import 'package:cmu_mobile_app/models/quiz_model.dart';

//แบบวัดความมีคุณค่าในตนเอง
List<QuizModel> selfWorthList = [
  QuizModel(
    quiz: "1. โดยทั่วไปฉันรู้สึกพอใจในตนเอง",
    choice: [
      "เห็นด้วยอย่างยิ่ง",
      "เห็นด้วย",
      "ไม่เห็นด้วย",
      "ไม่เห็นด้วยอย่างยิ่ง"
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "2. บ่อยครั้งที่ฉันคิดว่าตัวเองไม่มีอะไรดีเลย",
    choice: [
      "เห็นด้วยอย่างยิ่ง",
      "เห็นด้วย",
      "ไม่เห็นด้วย",
      "ไม่เห็นด้วยอย่างยิ่ง"
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "3. ฉันรู้สึกว่าตัวฉันเองก็มีอะไรดีๆเหมือนกัน",
    choice: [
      "เห็นด้วยอย่างยิ่ง",
      "เห็นด้วย",
      "ไม่เห็นด้วย",
      "ไม่เห็นด้วยอย่างยิ่ง"
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "4. ฉันสามารถทําอะไรได้ดีเหมือนๆกับคนอื่น",
    choice: [
      "เห็นด้วยอย่างยิ่ง",
      "เห็นด้วย",
      "ไม่เห็นด้วย",
      "ไม่เห็นด้วยอย่างยิ่ง"
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "5. ฉันรู้สึกว่าตนเองไม่มีอะไรน่าภาคภูมิใจนัก",
    choice: [
      "เห็นด้วยอย่างยิ่ง",
      "เห็นด้วย",
      "ไม่เห็นด้วย",
      "ไม่เห็นด้วยอย่างยิ่ง"
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "6. ฉันรู้สึกบ่อยๆว่าตนเองไร้ค่า",
    choice: [
      "เห็นด้วยอย่างยิ่ง",
      "เห็นด้วย",
      "ไม่เห็นด้วย",
      "ไม่เห็นด้วยอย่างยิ่ง"
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "7. ฉันรู้สึกว่าตนเองมีคุณค่าอย่างน้อยสุดก็เท่าๆกับคนอื่น",
    choice: [
      "เห็นด้วยอย่างยิ่ง",
      "เห็นด้วย",
      "ไม่เห็นด้วย",
      "ไม่เห็นด้วยอย่างยิ่ง"
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "8. ฉันอยากจะภาคภูมิใจในตนเองมากกว่านี้",
    choice: [
      "เห็นด้วยอย่างยิ่ง",
      "เห็นด้วย",
      "ไม่เห็นด้วย",
      "ไม่เห็นด้วยอย่างยิ่ง"
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "9. โดยรวมแล้วฉันมีความรู้สึกว่าตนเองล้มเหลว",
    choice: [
      "เห็นด้วยอย่างยิ่ง",
      "เห็นด้วย",
      "ไม่เห็นด้วย",
      "ไม่เห็นด้วยอย่างยิ่ง"
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "10. ฉันมีความรู้สึกที่ดีกับตนเอง",
    choice: [
      "เห็นด้วยอย่างยิ่ง",
      "เห็นด้วย",
      "ไม่เห็นด้วย",
      "ไม่เห็นด้วยอย่างยิ่ง"
    ],
    selecteChoice: 0,
  ),
];

//ส่วนที่ 3  แบบประเมินปัญหาการดื่มสุรา (AUDIT)
List<QuizModel> alcoholAssessmentList = [
  QuizModel(
    quiz: "1. คุณดื่มสุราบ่อยเพียงไร",
    choice: [
      "(0)  ไม่เคยเลย",
      "(1)  เดือนละครั้งหรือ น้อยกว่า",
      "(2)  2-4 ครั้งต่อเดือน",
      "(3)  2-3 ครั้งต่อสัปดาห์",
      "(4)  4 ครั้งขึ้นไปต่อสัปดาห์",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "2.เลือกตอบเพียงข้อเดียวเวลาที่คุณดื่มสุรา \n  2.1 โดยทั่วไปแล้วคุณดื่มประมาณเท่าไหร่ต่อวัน",
    choice: [
      "1-2ดื่มมาตรฐาน",
      "3-4ดื่มมาตรฐาน",
      "5-6ดื่มมาตรฐาน",
      "7-9ดื่มมาตรฐาน",
      "ตั้งแต่ 10 ดื่มมาตราฐานขึ้นไป",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "2.2 โดยทั่วไปดื่มเบียร์ เช่น สิงห์ ไฮเนเกน ลีโอ เชียร์ ไทเกอร์ ช้าง ดื่มประมาณเท่าไรต่อวัน",
    choice: [
      "1-1.5 กระป่อง/1/2-3/4 ขวด",
      "2-3 กระป๋อง/1-1.5 ขวด",
      "3.5-4 กระป๋อง/2 ขวด",
      "4.5-7 กระป๋อง/3-4 ขวด",
      "7 กระป๋อง/4 ขวดขึ้นไป",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "2.3 โดยทั่วไปดื่มเหล้า เช่น แม่โขง หงส์ทอง หงส์ทิพย์ เหล้าขาว 40 ดีกรี ดื่มประมาณเท่าไร ต่อวัน",
    choice: [
      "2-3 ฝา",
      "¼ แบน",
      "½ แบน",
      "¾ แบน",
      "1 แบนขึ้นไป",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "3. บ่อยครั้งเพียงไรที่คุณดื่มเบียร์ 4 กระป๋องขึ้นไป หรือเหล้าวิสกี้ 3 เป๊กขึ้นไป",
    choice: [
      "ไม่เคยเลย",
      "น้อยกว่าเดือนละครั้ง",
      "เดือนละครั้ง",
      "สัปดาห์ละครั้ง",
      "ทุกวัน หรือ เกือบทุกวัน",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "4. ในช่วงหนึ่งปีที่แล้ว มีบ่อยครั้งเพียงไรที่คุณพบว่าคุณไม่สามารถหยุดดื่มได้ หากคุณได้เริ่มดื่มไปแล้ว",
    choice: [
      "ไม่เคยเลย",
      "น้อยกว่าเดือนละครั้ง",
      "เดือนละครั้ง",
      "สัปดาห์ละครั้ง",
      "ทุกวัน หรือ เกือบทุกวัน",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "5. ในช่วงหนึ่งปีที่แล้ว มีบ่อยเพียงไรที่คุณไม่ได้ทำสิ่งที่คุณควรจะทำตาม ปกติ เพราะคุณมัวแต่ไปดื่มสุราเสีย",
    choice: [
      "ไม่เคยเลย",
      "น้อยกว่าเดือนละครั้ง",
      "เดือนละครั้ง",
      "สัปดาห์ละครั้ง",
      "ทุกวัน หรือ เกือบทุกวัน",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "6. ในช่วงหนึ่งปีที่แล้ว มีบ่อยเพียงไรที่คุณต้องรีบดื่มสุราทันทีในตอนเช้า เพื่อจะได้ดำเนินชีวิตตามปกติ หรือถอนอาการเมาค้างจากการดื่มหนักในคืนที่ผ่านมา",
    choice: [
      "ไม่เคยเลย",
      "น้อยกว่าเดือนละครั้ง",
      "เดือนละครั้ง",
      "สัปดาห์ละครั้ง",
      "ทุกวัน หรือ เกือบทุกวัน",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "7. ในช่วงหนึ่งปีที่แล้ว มีบ่อยเพียงไรที่คุณรู้สึกไม่ดี โกรธหรือเสียใจ เนื่องจาก คุณได้ทำบางสิ่งบางอย่างลงไปในขณะ ที่คุณดื่มสุราเข้าไป",
    choice: [
      "ไม่เคยเลย",
      "น้อยกว่าเดือนละครั้ง",
      "เดือนละครั้ง",
      "สัปดาห์ละครั้ง",
      "ทุกวัน หรือ เกือบทุกวัน",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "8. ในช่วงปีที่แล้ว มีบ่อยเพียงไรที่คุณไม่สามารถจำได้ว่าเกิดอะไรขึ้นในคืนที่ผ่านมา เพราะว่าคุณได้ดื่มสุราเข้าไป",
    choice: [
      "ไม่เคยเลย",
      "น้อยกว่าเดือนละครั้ง",
      "เดือนละครั้ง",
      "สัปดาห์ละครั้ง",
      "ทุกวัน หรือ เกือบทุกวัน",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "9. ตัวคุณเองหรือคนอื่น เคยได้รับบาดเจ็บซึ่งเป็นผลจากการดื่มสุราของคุณหรือไม่",
    choice: [
      "ไม่เคยเลย",
      "เคย แต่ไม่ได้เกิด ขึ้นในปีที่แล้ว",
      "เคยเกิดขึ้นในช่วงหนึ่งปีที่แล้ว",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "10. เคยมีแพทย์หรือบุคลากรทาง การแพทย์หรือเพื่อนฝูงหรือญาติพี่น้อง แสดงความเป็นห)วงเป็นใยต่อการดื่ม สุราของคุณหรือไม่",
    choice: [
      "ไม่เคยเลย",
      "เคย แต่ไม่ได้เกิด ขึ้นในปีที่แล้ว",
      "เคยเกิดขึ้นในช่วงหนึ่งปีที่แล้ว",
    ],
    selecteChoice: 0,
  ),
];

//ส่วนที่ 4  แบบวัดความรู้เกี่ยวกับเครื่องดื่มแอลกอฮอล์
List<QuizModel> aboutAlcoholList = [
  QuizModel(
    quiz: "1. เครื่องดื่มแอลกอฮอล์หมายถึงอะไร",
    choice: [
      "เครื่องดื่มที่มีอิสทานอลผสมอยู่ในปริมาณที่สามารถนำมาบริโภคได้",
      "เครื่องดื่มที่มีเมทิลแอลกอฮอล์ผสมอยู่ในปริมาณที่สามารถนำมาบริโภคได้",
      "เครื่องดื่มที่มีบิวทิลแอลกอฮอล์ผสมอยู่ในปริมาณที่สามารถนำมาบริโภคได้",
      "เครื่องดื่มที่มีไอโซโพรพิลแอลกอฮอล์ผสมอยู่ในปริมาณที่สามารถนำมาบริโภคได้",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "2. อวัยวะส่วนใดของร่างกาย ที่จะได้รับพิษจากการดื่มเครื่องดื่มแอลกอฮอล์ มากที่สุด",
    choice: [
      "ไต",
      "ตับ",
      "สมอง",
      "กระเพาะอาหาร",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "3. ข้อใด ไม่ใช่ ผลจากการดื่มสุราเป็นประจำ",
    choice: [
      "โรคตับแข็ง",
      "โรคกระพาะอาหาร",
      "โรคสมองเสื่อม",
      "โรคภูมิคุ้มกันบกพร่อง",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "4. ผู้ที่ดื่มเครื่องดื่มแอลกอฮอล์เสี่ยงต่อการเกิดโรคทางจิตเวช ยกเว้น ข้อใด",
    choice: [
      "โรควิกลจริต",
      "โรคซึมเศร้า",
      "โรคความจำเสื่อม",
      "โรคหวาดระแวง",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "5. การดื่มเครื่องดื่มแอลกอฮอล์ส่งผลกระทบต่อสังคม ยกเว้น ข้อใด",
    choice: [
      "อาชญากรรม",
      "ชุมชนแออัด",
      "อุบัติเหตุจากการเมาแล้วขับ",
      "ทะเลาะวิวาท ทำร้ายร่างกาย",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "6. ผลกระทบทางเศรษฐกิจของการดื่มเครื่องดื่มแอลกอฮอล์ มากที่สุด คือข้อใด",
    choice: [
      "ความสูญเสียจากโรคเอดส์",
      "ความสูญเสียจากโรคมะเร็งตับ",
      "ความสูญเสียจากอุบัติเหตุจราจร",
      "ความสูญเสียจากโรคพิษสุราเรื้อรัง",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "7. ผลกระทบของการดื่มเครื่อง ดื่มแอลกอฮอล์ต่อการใช้ชีวิตในปัจจุบันที่สำคัญ มากที่สุด คือข้อใด",
    choice: [
      "ผลกระทบต่อสังคม",
      "ผลกระทบต่อเศรษฐกิจ",
      "ผลกระทบต่อสิ่งแวดล้อม",
      "ผลกระทบต่อตัวผู้ดื่ม และครอบครัว",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "8. เมื่อมีเพื่อนมาชวนผู้ที่ติดสุราให้กลับไปดื่มสุราอีก ท่านจะให้คำแนะนำอย่างไร",
    choice: [
      "ถ้าดื่มเล็กน้อยก็ไม่เป็นไร",
      "ให้บอกเพื่อนว่าเลิกดื่มแล้ว",
      "ดื่มได้เพราะมียาควบคุมแล้ว",
      "ไปนั่งร่วมวงกับเพื่อนได้แต่ไม่ดื่ม",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "9. ชาวบ้านดื่มเหล้าขาว ในวัดเพื่อร่วมฉลองงานกฐิน  จะได้รับโทษตามมาตรา 31 แห่ง พรบ.ควบคุมการดื่มเครื่องดื่มแอลกอฮอล์หรือไม่อย่างไร",
    choice: [
      "ไม่ต้องรับโทษ",
      "จำคุกไม่เกิน 6 หรือปรับไม่เกิน 1 หมื่นบาท หรือทั้งจำทั้งปรับ",
      "จำคุกไม่เกิน 6 หรือปรับไม่เกิน 2 หมื่นบาท หรือทั้งจำทั้งปรับ",
      "จำคุกไม่เกิน 1 ปีหรือปรับไม่เกิน 1 หมื่นบาท หรือทั้งจำทั้งปรับ",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "10. กฎหมายควบคุมเครื่องดื่มแอลกอฮอล์ ห้ามจำหน่ายเครื่องดื่มแอลกอฮอล์ให้แก่ผู้ที่มีอายุต่ำกว่ากี่ปี",
    choice: [
      "15 ปี",
      "18 ปี",
      "20 ปี",
      "22 ปี",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "11. กฎหมายได้กำหนดให้ผู้ขับขี่รถทุกประเภทต้องมีระดับแอลกอฮอล์ในเลือดไม่เกินกี่ มิลลิกรัมเปอร์เซ็นต์ (mg%)",
    choice: [
      "50 mg %",
      "60 mg %",
      "70 mg %",
      "80 mg %",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "12. บทลงโทษสูงสุดของผู้กระทำความผิดในการขับรถขณะเมาสุราคือข้อใด",
    choice: [
      "ยึดใบอนุญาตขับขี่รถ",
      "ว่ากล่าวตักเตือน และปรับ 200 บาท",
      "จำคุกไม่เกิน 1 ปี หรือปรับตั้งแต่ 5,000-20,000 บาท",
      "จำคุกไม่เกิน 6 เดือน หรือปรับตั้งแต่ 5,000-10,000 บาท",
    ],
    selecteChoice: 0,
  ),
];

//ส่วนที่ 5  แบบวัดทัศนคติต่อการดื่มเครื่องดื่มแอลกอฮอล์
List<QuizModel> alcoholList = [
  QuizModel(
    quiz: "1. การดื่มเครื่องดื่มแอลกอฮอล์อาจส่งผลเสียต่อสุขภาพ",
    choice: [
      "ไม่เห็นด้วยอย่างยิ่ง",
      "ไม่เห็นด้วย",
      "เห็นด้วย",
      "เห็นด้วยอย่างยิ่ง",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "2. การดื่มเครื่องดื่มแอลกอฮอล์อาจก่อให้เกิดประโยชน์มากกว่าโทษ",
    choice: [
      "ไม่เห็นด้วยอย่างยิ่ง",
      "ไม่เห็นด้วย",
      "เห็นด้วย",
      "เห็นด้วยอย่างยิ่ง",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "3. การดื่มเครื่องดื่มแอลกอฮอล์ทำให้สติสัมปชัญญะลดลง",
    choice: [
      "ไม่เห็นด้วยอย่างยิ่ง",
      "ไม่เห็นด้วย",
      "เห็นด้วย",
      "เห็นด้วยอย่างยิ่ง",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "4. การดื่มเครื่องดื่มแอลกอฮอล์อาจนำไปสู่การมีเรื่องทะเลาะวิวาทได้",
    choice: [
      "ไม่เห็นด้วยอย่างยิ่ง",
      "ไม่เห็นด้วย",
      "เห็นด้วย",
      "เห็นด้วยอย่างยิ่ง",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "5. การดื่มเครื่องดื่มแอลกอฮอล์ทำให้ประสิทธิภาพการทำงานลดลง",
    choice: [
      "ไม่เห็นด้วยอย่างยิ่ง",
      "ไม่เห็นด้วย",
      "เห็นด้วย",
      "เห็นด้วยอย่างยิ่ง",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "6. การดื่มเครื่องดื่มแอลกอฮอล์ทำให้มีโอกาสได้เพื่อนเพิ่มขึ้น",
    choice: [
      "ไม่เห็นด้วยอย่างยิ่ง",
      "ไม่เห็นด้วย",
      "เห็นด้วย",
      "เห็นด้วยอย่างยิ่ง",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "7. การดื่มเครื่องดื่มแอลกอฮอล์ช่วยทำให้ลืมเรื่องไม่สบายใจ",
    choice: [
      "ไม่เห็นด้วยอย่างยิ่ง",
      "ไม่เห็นด้วย",
      "เห็นด้วย",
      "เห็นด้วยอย่างยิ่ง",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "8. การดื่มเครื่องดื่มแอลกอฮอล์ทำให้มีความสนุกสนาน",
    choice: [
      "ไม่เห็นด้วยอย่างยิ่ง",
      "ไม่เห็นด้วย",
      "เห็นด้วย",
      "เห็นด้วยอย่างยิ่ง",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "9. การดื่มเครื่องดื่มแอลกอฮอล์ทำให้มีโอกาสเสี่ยงที่จะมีเพศสัมพันธ์ได้ง่ายขึ้น",
    choice: [
      "ไม่เห็นด้วยอย่างยิ่ง",
      "ไม่เห็นด้วย",
      "เห็นด้วย",
      "เห็นด้วยอย่างยิ่ง",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "10. การดื่มเครื่องดื่มแอลกอฮอล์ทำให้คนอื่นรังเกียจเพราะปากและลมหายใจมีกลิ่นเหม็น",
    choice: [
      "ไม่เห็นด้วยอย่างยิ่ง",
      "ไม่เห็นด้วย",
      "เห็นด้วย",
      "เห็นด้วยอย่างยิ่ง",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "11. คนอื่นอาจมองว่าฉันเป็นคนเกเรหากฉันดื่มเครื่องดื่มแอลกอฮอล์",
    choice: [
      "ไม่เห็นด้วยอย่างยิ่ง",
      "ไม่เห็นด้วย",
      "เห็นด้วย",
      "เห็นด้วยอย่างยิ่ง",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "12. การดื่มเครื่องดื่มแอลกอฮอล์ทำให้รู้สึกมีความมั่นใจในตัวเองมากขึ้น",
    choice: [
      "ไม่เห็นด้วยอย่างยิ่ง",
      "ไม่เห็นด้วย",
      "เห็นด้วย",
      "เห็นด้วยอย่างยิ่ง",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "13. การดื่มเครื่องดื่มแอลกอฮอล์ทำให้รู้สึกว่าโตเป็นผู้ใหญ่ขึ้น",
    choice: [
      "ไม่เห็นด้วยอย่างยิ่ง",
      "ไม่เห็นด้วย",
      "เห็นด้วย",
      "เห็นด้วยอย่างยิ่ง",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "14. การดื่มเครื่องดื่มแอลกอฮอล์ทำให้รู้สึกเท่ห์ทันสมัย",
    choice: [
      "ไม่เห็นด้วยอย่างยิ่ง",
      "ไม่เห็นด้วย",
      "เห็นด้วย",
      "เห็นด้วยอย่างยิ่ง",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "15. ฉันรู้สึกอึดอัดเมื่อต้องพูดคุยกับเพื่อนที่กำลังดื่มเครื่องดื่มแอลกอฮอล์",
    choice: [
      "ไม่เห็นด้วยอย่างยิ่ง",
      "ไม่เห็นด้วย",
      "เห็นด้วย",
      "เห็นด้วยอย่างยิ่ง",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "16. วัยรุ่นอย่างฉันไม่ควรดื่มเครื่องดื่มแอลกอฮอล์",
    choice: [
      "ไม่เห็นด้วยอย่างยิ่ง",
      "ไม่เห็นด้วย",
      "เห็นด้วย",
      "เห็นด้วยอย่างยิ่ง",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "17. หากเพื่อนสนิทของฉันดื่มเครื่องดื่มแอลกอฮอล์   ฉันควรปล่อยให้เขาดื่มตามต้องการโดยไม่กล่าวตักเตือนใด ๆ",
    choice: [
      "ไม่เห็นด้วยอย่างยิ่ง",
      "ไม่เห็นด้วย",
      "เห็นด้วย",
      "เห็นด้วยอย่างยิ่ง",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "18. การดื่มเครื่องดื่มแอลกอฮอล์จะทำให้ฉันกล้าแสดง ออกต่อหน้ากลุ่มคนมากขึ้น",
    choice: [
      "ไม่เห็นด้วยอย่างยิ่ง",
      "ไม่เห็นด้วย",
      "เห็นด้วย",
      "เห็นด้วยอย่างยิ่ง",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "19.ฉันควรหลีกเลี่ยงที่จะนั่งอยู่ในกลุ่มเพื่อนที่กำลังดื่มเครื่องดื่มแอลกอฮอล์",
    choice: [
      "ไม่เห็นด้วยอย่างยิ่ง",
      "ไม่เห็นด้วย",
      "เห็นด้วย",
      "เห็นด้วยอย่างยิ่ง",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "20. ฉันคิดว่าเป็นเรื่องปกติ หากฉันจะทดลองดื่มเครื่อง ดื่มแอลกอฮอล์สักครั้ง",
    choice: [
      "ไม่เห็นด้วยอย่างยิ่ง",
      "ไม่เห็นด้วย",
      "เห็นด้วย",
      "เห็นด้วยอย่างยิ่ง",
    ],
    selecteChoice: 0,
  ),
];

//ส่วนที่ 6  แบบสอบถามการรับรู้สมรรถนะแห่งตนในการปฏิเสธการดื่มเครื่องดื่มแอลกอฮอล์
List<QuizModel> rejectAlcoholList = [
  QuizModel(
    quiz: "1. กำลังโกรธ",
    choice: [
      "มั่นใจอย่างยิ่ง",
      "ค่อนข้างมั่นใจ",
      "ค่อนข้างไม่มั่นใจ",
      "ไม่มั่นใจเลย",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "2. อยู่ในงานเลี้ยงสังสรรค์",
    choice: [
      "มั่นใจอย่างยิ่ง",
      "ค่อนข้างมั่นใจ",
      "ค่อนข้างไม่มั่นใจ",
      "ไม่มั่นใจเลย",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "3. มีคนคะยั้นคะยอให้ดื่ม",
    choice: [
      "มั่นใจอย่างยิ่ง",
      "ค่อนข้างมั่นใจ",
      "ค่อนข้างไม่มั่นใจ",
      "ไม่มั่นใจเลย",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "4. รู้สึกหงุดหงิดไม่พอใจ",
    choice: [
      "มั่นใจอย่างยิ่ง",
      "ค่อนข้างมั่นใจ",
      "ค่อนข้างไม่มั่นใจ",
      "ไม่มั่นใจเลย",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "5. อยู่กับแฟนฉันที่กำลังนั่งดื่ม",
    choice: [
      "มั่นใจอย่างยิ่ง",
      "ค่อนข้างมั่นใจ",
      "ค่อนข้างไม่มั่นใจ",
      "ไม่มั่นใจเลย",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "6. รู้สึกกังวลใจ",
    choice: [
      "มั่นใจอย่างยิ่ง",
      "ค่อนข้างมั่นใจ",
      "ค่อนข้างไม่มั่นใจ",
      "ไม่มั่นใจเลย",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "7. อยู่ตามลำพัง",
    choice: [
      "มั่นใจอย่างยิ่ง",
      "ค่อนข้างมั่นใจ",
      "ค่อนข้างไม่มั่นใจ",
      "ไม่มั่นใจเลย",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "8. อยู่กับเพื่อนที่กำลังดื่ม",
    choice: [
      "มั่นใจอย่างยิ่ง",
      "ค่อนข้างมั่นใจ",
      "ค่อนข้างไม่มั่นใจ",
      "ไม่มั่นใจเลย",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "9. รู้สึกผิดหวัง",
    choice: [
      "มั่นใจอย่างยิ่ง",
      "ค่อนข้างมั่นใจ",
      "ค่อนข้างไม่มั่นใจ",
      "ไม่มั่นใจเลย",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "10. ฉลองความสำเร็จหรือชัยชนะ",
    choice: [
      "มั่นใจอย่างยิ่ง",
      "ค่อนข้างมั่นใจ",
      "ค่อนข้างไม่มั่นใจ",
      "ไม่มั่นใจเลย",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "11. อยู่ในสถานบันเทิง",
    choice: [
      "มั่นใจอย่างยิ่ง",
      "ค่อนข้างมั่นใจ",
      "ค่อนข้างไม่มั่นใจ",
      "ไม่มั่นใจเลย",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "12. รู้สึกท้อแท้",
    choice: [
      "มั่นใจอย่างยิ่ง",
      "ค่อนข้างมั่นใจ",
      "ค่อนข้างไม่มั่นใจ",
      "ไม่มั่นใจเลย",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "13. รู้สึกตื่นเต้นกระวนกระวายใจ",
    choice: [
      "มั่นใจอย่างยิ่ง",
      "ค่อนข้างมั่นใจ",
      "ค่อนข้างไม่มั่นใจ",
      "ไม่มั่นใจเลย",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "14. รู้สึกเศร้า",
    choice: [
      "มั่นใจอย่างยิ่ง",
      "ค่อนข้างมั่นใจ",
      "ค่อนข้างไม่มั่นใจ",
      "ไม่มั่นใจเลย",
    ],
    selecteChoice: 0,
  ),
];

//ส่วนที่ 7  แบบสอบถามการควบคุมและการส่งเสริมการดื่มเครื่องดื่มแอลกอฮอล์ของพ่อแม่
List<QuizModel> parentAlcoholList = [
  QuizModel(
    quiz:
        "1. พ่อ/แม่ให้ฉันหัดดื่มเครื่องดื่มแอลกอฮอล์ เพื่อให้รู้จักมารยาททางสังคม",
    choice: [
      "บ่อยที่สุด",
      "บ่อย",
      "ปานกลาง",
      "น้อย",
      "น้อยที่สุด",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "2. พ่อ/แม่ของฉันจะดื่มเครื่องดื่มแอลกอฮอล์ให้ฉันเห็นเป็นประจำ",
    choice: [
      "บ่อยที่สุด",
      "บ่อย",
      "ปานกลาง",
      "น้อย",
      "น้อยที่สุด",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "3. พ่อ/แม่บอกฉันว่าปัจจุบันนี้ไม่ว่าผู้หญิงหรือผู้ชายต้องดื่มเครื่องดื่มแอลกอฮอล์ให้เป็น เพื่อจะได้ไม่ถูกคนอื่นหลอก",
    choice: [
      "บ่อยที่สุด",
      "บ่อย",
      "ปานกลาง",
      "น้อย",
      "น้อยที่สุด",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "4. พ่อ/แม่พูดกับฉันว่าการดื่มเครื่องดื่มแอลกอฮอล์เป็นสิ่งไม่ดี",
    choice: [
      "บ่อยที่สุด",
      "บ่อย",
      "ปานกลาง",
      "น้อย",
      "น้อยที่สุด",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "5. เมื่อพ่อ/แม่ของฉันดื่มเครื่องดื่มแอลกอฮอล์ก็มักชวนฉันเข้ามาร่วมกิจกรรมด้วยเสมอ เช่น นั่งคุย กินกับแกล้ม หรือแม้กระทั่งชวนดื่มเครื่องดื่มแอลกอฮอล์ด้วย",
    choice: [
      "บ่อยที่สุด",
      "บ่อย",
      "ปานกลาง",
      "น้อย",
      "น้อยที่สุด",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "6. พ่อ/แม่มักใช้ฉันไปซื้อเครื่องดื่มแอลกอฮอล์ให้เสมอ",
    choice: [
      "บ่อยที่สุด",
      "บ่อย",
      "ปานกลาง",
      "น้อย",
      "น้อยที่สุด",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "7. พ่อ/แม่จะพูดถึงโทษการดื่มเครื่องดื่มแอลกอฮอล์ให้ฉันฟังเสมอ",
    choice: [
      "บ่อยที่สุด",
      "บ่อย",
      "ปานกลาง",
      "น้อย",
      "น้อยที่สุด",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "8. พ่อ/แม่พูดกับฉันว่าท่านไม่ชอบคนที่ดื่มเครื่องดื่มแอลกอฮอล์",
    choice: [
      "บ่อยที่สุด",
      "บ่อย",
      "ปานกลาง",
      "น้อย",
      "น้อยที่สุด",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "9. พ่อ/แม่มักถามเพื่อนๆและบุคคลรอบข้างของฉันเสมอว่า“ฉันดื่มเครื่องดื่มแอลกอฮอล์หรือไม่”",
    choice: [
      "บ่อยที่สุด",
      "บ่อย",
      "ปานกลาง",
      "น้อย",
      "น้อยที่สุด",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "10. เมื่อมีงานเลี้ยงสังสรรค์พ่อ/แม่มักให้อิสระกับฉันที่จะเลือกเครื่องดื่มเอง และท่านจะไม่ว่าหากฉันเลือกที่จะดื่มเครื่องดื่มแอลกอฮอล์",
    choice: [
      "บ่อยที่สุด",
      "บ่อย",
      "ปานกลาง",
      "น้อย",
      "น้อยที่สุด",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "11. พ่อ/แม่ให้เงินฉันใช้จ่ายอย่างเพียงพอที่จะซื้ออะไรก็ได้ที่ต้องการ รวมทั้งเครื่องดื่มแอลกอฮอล์ด้วย",
    choice: [
      "บ่อยที่สุด",
      "บ่อย",
      "ปานกลาง",
      "น้อย",
      "น้อยที่สุด",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "12. พ่อ/แม่ของฉันบอกฉันว่าจะทำโทษฉัน ถ้าหากพบฉันดื่มเครื่องดื่มแอลกอฮอล์",
    choice: [
      "บ่อยที่สุด",
      "บ่อย",
      "ปานกลาง",
      "น้อย",
      "น้อยที่สุด",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "13. พ่อ/แม่ของฉันมักพูดให้ฉันได้ยินเสมอว่าจะตัดค่าใช้จ่ายของพี่หรือของฉันหากรู้ว่าดื่มเครื่องดื่มแอลกอฮอล์",
    choice: [
      "บ่อยที่สุด",
      "บ่อย",
      "ปานกลาง",
      "น้อย",
      "น้อยที่สุด",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "14. พ่อ/แม่ของฉันมักสอดส่องพฤติกรรมฉันเสมอในเรื่องที่เกี่ยวกับการดื่มเครื่องดื่มที่ผสมแอลกอฮอล์",
    choice: [
      "บ่อยที่สุด",
      "บ่อย",
      "ปานกลาง",
      "น้อย",
      "น้อยที่สุด",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "15. พ่อ/แม่มักบอกให้ฉันเลิกคบเพื่อนที่ดื่มเครื่องดื่มแอลกอฮอล์",
    choice: [
      "บ่อยที่สุด",
      "บ่อย",
      "ปานกลาง",
      "น้อย",
      "น้อยที่สุด",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "16. พ่อ/แม่จะไม่ดุ หรือลงโทษฉันเมื่อฉันดื่มเครื่องดื่มแอลกอฮอล์ ถ้าไม่ทำให้เสียการเรียน",
    choice: [
      "บ่อยที่สุด",
      "บ่อย",
      "ปานกลาง",
      "น้อย",
      "น้อยที่สุด",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "17. พ่อ/แม่จะไม่อนุญาตให้ฉันไปงานเลี้ยงสังสรรค์ในกลุ่มเพื่อนหากงานเลี้ยงนั้นไม่มีครู หรือผู้ใหญ่ที่ท่านไว้ใจอยู่",
    choice: [
      "บ่อยที่สุด",
      "บ่อย",
      "ปานกลาง",
      "น้อย",
      "น้อยที่สุด",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "18. พ่อ/แม่ไม่เคยกล่าวคำขอโทษเมื่อดุด่าฉันโดยเข้าใจผิด",
    choice: [
      "บ่อยที่สุด",
      "บ่อย",
      "ปานกลาง",
      "น้อย",
      "น้อยที่สุด",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "19. พ่อ/แม่มักปล่อยให้ฉันไปเที่ยวหรือออกนอกบ้านกับเพื่อนได้อย่างอิสระ",
    choice: [
      "บ่อยที่สุด",
      "บ่อย",
      "ปานกลาง",
      "น้อย",
      "น้อยที่สุด",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "20. พ่อ/แม่จะดุด่าหรือลงโทษพี่และน้องเสมอ เมื่อทราบว่าพวกเขาดื่มเครื่องดื่มแอลกอฮอล์",
    choice: [
      "บ่อยที่สุด",
      "บ่อย",
      "ปานกลาง",
      "น้อย",
      "น้อยที่สุด",
    ],
    selecteChoice: 0,
  ),
];

//ส่วนที่ 8  แบบวัดความตั้งใจในการไม่ดื่มเครื่องดื่มแอลกอฮอล์
List<QuizModel> noAlcoholList = [
  QuizModel(
    quiz:
        "1. เมื่อเพื่อนชวนท่านให้ดื่มเครื่องดื่มแอลกอฮอล์ขณะไปร่วมงานวันเกิด/งานเลี้ยง/งานกีฬาสี/งานประจำปีของโรงเรียน ฯลฯ",
    choice: [
      "ไม่ดื่มแน่นอน",
      "ไม่ดื่ม",
      "ไม่แน่ใจ",
      "ดื่ม",
      "ดื่มแน่นอน",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "2. เมื่อท่านถูกรุ่นพี่ชวนให้ดื่มเครื่องดื่มแอลกอฮอล์",
    choice: [
      "ไม่ดื่มแน่นอน",
      "ไม่ดื่ม",
      "ไม่แน่ใจ",
      "ดื่ม",
      "ดื่มแน่นอน",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "3. เมื่อแฟนของท่านชักชวนให้ดื่มเครื่องดื่มแอลกอฮอล์ด้วยกัน",
    choice: [
      "ไม่ดื่มแน่นอน",
      "ไม่ดื่ม",
      "ไม่แน่ใจ",
      "ดื่ม",
      "ดื่มแน่นอน",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "4. เครียดเนื่องจากสอบได้คะแนนน้อย",
    choice: [
      "ไม่ดื่มแน่นอน",
      "ไม่ดื่ม",
      "ไม่แน่ใจ",
      "ดื่ม",
      "ดื่มแน่นอน",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "5. ทะเลาะกับพ่อแม่/พี่น้อง",
    choice: [
      "ไม่ดื่มแน่นอน",
      "ไม่ดื่ม",
      "ไม่แน่ใจ",
      "ดื่ม",
      "ดื่มแน่นอน",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "6. มีปัญหากับแฟน (ทะเลาะ, ถูกบอกเลิก)",
    choice: [
      "ไม่ดื่มแน่นอน",
      "ไม่ดื่ม",
      "ไม่แน่ใจ",
      "ดื่ม",
      "ดื่มแน่นอน",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "7. เห็นพ่อแม่ตั้งวงดื่มเครื่องดื่มแอลกอฮอล์กับเพื่อนๆ ",
    choice: [
      "ไม่ดื่มแน่นอน",
      "ไม่ดื่ม",
      "ไม่แน่ใจ",
      "ดื่ม",
      "ดื่มแน่นอน",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "8. เห็นครูดื่มเครื่องดื่มแอลกอฮอล์",
    choice: [
      "ไม่ดื่มแน่นอน",
      "ไม่ดื่ม",
      "ไม่แน่ใจ",
      "ดื่ม",
      "ดื่มแน่นอน",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "9. พบเห็นโฆษณาเกี่ยวกับเครื่องดื่มแอลกอฮอล์ที่น่าลอง",
    choice: [
      "ไม่ดื่มแน่นอน",
      "ไม่ดื่ม",
      "ไม่แน่ใจ",
      "ดื่ม",
      "ดื่มแน่นอน",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "10. เห็นดาราที่ชื่นชอบโฆษณาเกี่ยวกับเครื่องดื่มแอลกอฮอล์",
    choice: [
      "ไม่ดื่มแน่นอน",
      "ไม่ดื่ม",
      "ไม่แน่ใจ",
      "ดื่ม",
      "ดื่มแน่นอน",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "11. พบเห็นบู๊ทประชาสัมพันธ์เกี่ยวกับเครื่องดื่มแอลกอฮอล์ โดยมีการลดแลกแจกแถมสินค้ามากมาย",
    choice: [
      "ไม่ดื่มแน่นอน",
      "ไม่ดื่ม",
      "ไม่แน่ใจ",
      "ดื่ม",
      "ดื่มแน่นอน",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz: "12. ผู้ใหญ่ยื่นเครื่องดื่มแอลกอฮอล์ให้ทดลอง",
    choice: [
      "ไม่ดื่มแน่นอน",
      "ไม่ดื่ม",
      "ไม่แน่ใจ",
      "ดื่ม",
      "ดื่มแน่นอน",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "13. เพื่อนคะยั้นคะยอให้ดื่มเครื่องดื่มแอลกอฮอล์ ขณะไปร่วมงานฉลองหลังสอบเสร็จ ทั้งที่ได้ปฏิเสธไปแล้ว",
    choice: [
      "ไม่ดื่มแน่นอน",
      "ไม่ดื่ม",
      "ไม่แน่ใจ",
      "ดื่ม",
      "ดื่มแน่นอน",
    ],
    selecteChoice: 0,
  ),
  QuizModel(
    quiz:
        "14. เมื่อท่านถูกเพื่อนยื่นคำขาดว่าจะเลิกคบ หากท่านไม่ยอมดื่มเครื่องดื่มแอลกอฮอล์",
    choice: [
      "ไม่ดื่มแน่นอน",
      "ไม่ดื่ม",
      "ไม่แน่ใจ",
      "ดื่ม",
      "ดื่มแน่นอน",
    ],
    selecteChoice: 0,
  ),
];

List<DashboradModel> itemList = [
  DashboradModel(
    title: "แบบสอบถาม",
    path: "assets/icons/icon_0.png",
    color: const Color(0xff96D0DD),
  ),
  DashboradModel(
    title: "กิจกรรมที่1",
    path: "assets/icons/icon_1.png",
    color: const Color(0xff96D0DD),
  ),
  DashboradModel(
    title: "กิจกรรมที่2",
    path: "assets/icons/icon_2.png",
    color: const Color(0xffB3BBF9),
  ),
  DashboradModel(
    title: "กิจกรรมที่3",
    path: "assets/icons/icon_3.png",
    color: const Color(0xffF4CE6B),
  ),
  DashboradModel(
    title: "กิจกรรมที่4",
    path: "assets/icons/icon_4.png",
    color: const Color(0xffAB9A7E),
  ),
  DashboradModel(
    title: "กิจกรรมที่5",
    path: "assets/icons/icon_5.png",
    color: const Color(0xffEE676E),
  ),
  DashboradModel(
    title: "กิจกรรมที่6",
    path: "assets/icons/icon_6.png",
    color: const Color(0xff86E0BC),
  ),
  DashboradModel(
    title: "กิจกรรมที่7",
    path: "assets/icons/icon_7.png",
    color: const Color(0xffFF772B),
  ),
  DashboradModel(
    title: "กิจกรรมที่8",
    path: "assets/icons/icon_8.png",
    color: const Color(0xff94A375),
  ),
  DashboradModel(
    title: "กิจกรรมที่9",
    path: "assets/icons/icon_9.png",
    color: const Color(0xffF188C7),
  ),
  DashboradModel(
    title: "กิจกรรมที่10",
    path: "assets/icons/icon_10.png",
    color: const Color(0xffBEE8F1),
  ),
  DashboradModel(
    title: "แบบสอบถาม",
    path: "assets/icons/icon_11.png",
    color: const Color(0xffB3BBF9),
  ),
];

List<DashboradModel> itemList2 = [
  DashboradModel(
    title: "กิจกรรมที่1",
    path: "assets/icons/icon_1.png",
    color: const Color(0xff96D0DD),
  ),
  DashboradModel(
    title: "กิจกรรมที่2",
    path: "assets/icons/icon_2.png",
    color: const Color(0xffB3BBF9),
  ),
  DashboradModel(
    title: "กิจกรรมที่3",
    path: "assets/icons/icon_3.png",
    color: const Color(0xffF4CE6B),
  ),
  DashboradModel(
    title: "กิจกรรมที่4",
    path: "assets/icons/icon_4.png",
    color: const Color(0xffAB9A7E),
  ),
  DashboradModel(
    title: "กิจกรรมที่5",
    path: "assets/icons/icon_5.png",
    color: const Color(0xffEE676E),
  ),
  DashboradModel(
    title: "กิจกรรมที่6",
    path: "assets/icons/icon_6.png",
    color: const Color(0xff86E0BC),
  ),
  DashboradModel(
    title: "กิจกรรมที่7",
    path: "assets/icons/icon_7.png",
    color: const Color(0xffFF772B),
  ),
  DashboradModel(
    title: "กิจกรรมที่8",
    path: "assets/icons/icon_8.png",
    color: const Color(0xff94A375),
  ),
  DashboradModel(
    title: "กิจกรรมที่9",
    path: "assets/icons/icon_9.png",
    color: const Color(0xffF188C7),
  ),
  DashboradModel(
    title: "กิจกรรมที่10",
    path: "assets/icons/icon_10.png",
    color: const Color(0xffBEE8F1),
  ),
  DashboradModel(
    title: "กิจกรรมที่11",
    path: "assets/icons/icon_11.png",
    color: const Color(0xffB3BBF9),
  ),
  DashboradModel(
    title: "แบบสอบถาม",
    path: "assets/icons/icon_0.png",
    color: const Color(0xff96D0DD),
  ),
];

List<DashboradModel> itemList3 = [
  DashboradModel(
    title: "แบบสอบถาม",
    path: "assets/icons/icon_1.png",
    color: const Color(0xff96D0DD),
  ),
  DashboradModel(
    title: "กิจกรรมที่1",
    path: "assets/icons/icon_2.png",
    color: const Color(0xffB3BBF9),
  ),
  DashboradModel(
    title: "กิจกรรมที่2",
    path: "assets/icons/icon_3.png",
    color: const Color(0xffF4CE6B),
  ),
  DashboradModel(
    title: "กิจกรรมที่3",
    path: "assets/icons/icon_4.png",
    color: const Color(0xffAB9A7E),
  ),
  DashboradModel(
    title: "กิจกรรมที่4",
    path: "assets/icons/icon_5.png",
    color: const Color(0xffEE676E),
  ),
  DashboradModel(
    title: "กิจกรรมที่5",
    path: "assets/icons/icon_6.png",
    color: const Color(0xff86E0BC),
  ),
  DashboradModel(
    title: "กิจกรรมที่6",
    path: "assets/icons/icon_7.png",
    color: const Color(0xffFF772B),
  ),
  DashboradModel(
    title: "กิจกรรมที่7",
    path: "assets/icons/icon_8.png",
    color: const Color(0xff94A375),
  ),
  DashboradModel(
    title: "กิจกรรมที่8",
    path: "assets/icons/icon_9.png",
    color: const Color(0xffF188C7),
  ),
  DashboradModel(
    title: "กิจกรรมที่9",
    path: "assets/icons/icon_10.png",
    color: const Color(0xffBEE8F1),
  ),
  DashboradModel(
    title: "แบบสอบถาม",
    path: "assets/icons/icon_11.png",
    color: const Color(0xffB3BBF9),
  ),
];
