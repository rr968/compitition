import 'package:flutter/material.dart';
import 'package:syntax_flutter_parser/data.dart';

String getParseString(List sentence, int level, int page) {
  List sen = sentence;
  String parseString = "";
  for (int j = 0; j < sen.length; j++) {
    String tem = "";
    for (int i = 0; i < dataP.length; i++) {
      if (dataP[i]["Word"] == sen[j] &&
          dataP[i]["Stage"] == level &&
          dataP[i]["Image"] == page) {
        tem = dataP[i]["Type"];
        j == sen.length - 1 ? parseString += tem : parseString += tem + ' ';
      }
    }
    //
  }
  return parseString;
}

List pronouns = [
  "إلى",
  "على",
  "في",
  "تحت",
  "هو",
  "هي",
  "من",
  "فوق",
  "انت",
  "انا",
  "نحن",
  "هم",
  "هن",
  "هما",
];
getRandomListRequiredWords(List<String> wordsList) {
  List<String> randomList = [
    "الشجرة",
    "يكسر",
    "ملابس",
    "الفرن",
    "طبق",
    "تقوم",
    "اكل",
    "النوم",
    "الجميل",
    "تحت",
  ];
  List<String> finalList = wordsList;
  randomList = randomList..shuffle();
  int remend = 14 - wordsList.length;
  //8
  for (int i = 0; i < remend; i++) {
    finalList.add(randomList[i]);
  }
  return finalList..shuffle();
}

getRandomListRequiredWords2(List<String> wordsList) {
  List<String> randomList = [
    "مرحبا",
    "بكم",
    "انا",
    "ريم",
    "بني هاني",
    "هنا",
    "نتث",
    "من"
  ];
  List<String> finalList = wordsList;
  randomList = randomList..shuffle();
  int remend = 14 - wordsList.length;
  for (int i = 0; i < remend; i++) {
    finalList.add(randomList[i]);
  }
  return finalList..shuffle();
}

List<String> learn1 = [
  """الجملة الإسمية هي التي تبدأ بإسم\nو لا يوجد فيها فعل معين\nمثل: قرأ و درس و قال""",
  """وتتكون من جزئين أساسيين  :\nقد يكونا كليهما أسم \nأو إسم  و وصف للإسم المبتدأ + الخبر""",
  """المبتدأ: هو الأسم الواقع في اول الجملة\nالخبر: هو الأسم و الصفة للمبتدأ """,
  """مثل:\n المدرسة كبيرة\nمحمد متفوق\nالسماء صافية"""
];
List<String> learn2 = [
  """أما بالنسبة الى الجملة الفعلية فهي  تبدأ بفعل لوصف حدث معين\nمثل: قراءة -دراسة - اكل""",
  """وتتكون من جزئين اساسيين\nهما الفعل + و من قام بالفعل الفاعل\nو نضيف الاسم الذي وقع عليه الفعل و هو المفعول به """,
  """ ونستطيع اضافة مكملات للجملة\nمثل: اين وقع الفعل و متى""",
  """مثل:\n أكل أحمد  التفاحة\nقرأ الولد القصة\nقرأ الولد القصة في الحديقة\nقرأ الولد القصة في الحديقة بسرعة""",
  """و نستطيع اضافة صفة للفاعل و المفعول به ايضا\nمثل قرأ  الولد المهذب القصة الجميلة في الحديقة الواسعة"""
];
List<String> learn3 = [
  """نستطيع ان نستخدم الضمائر للتعبير عن الاشخاص معنا \nمثل أنت أنا هو هي هم""",
  """قال المعلم لهم أنتم رائعون\nأنت انسان مهذب\nهو طالب مجتهد"""
];
List<String> learn4 = [
  """نحتاج احيانا لتوضيح علاقة اسم باسم اخر او فعل باسم باضافة أحد حروف الجر\nالتي تستخدم مع الأسماء فقط\nومن امثلتها: من، إلى، في، على ، فوق ، تحت""",
  """مثلا لنعرف البداية نستخدم حرف الجر من\nو لنعرف النهاية نستخدم حرف الجر الى""",
  """مثل:\nخرجت من البيت الى المدرسة\nالمطبخ في البيت\nالمفتاح على الطاولة"""
];
List<String> learn5 = [
  """نستطيع تكوين قصة من عدة جمل\nو نستخدم هنا ادوات الربط\nو لكل اداة وظيفة""",
  """مثل:\nأكل الولد التفاحة و البرتقالة\nاكل الولد التفاحة و شرب الحليب اللذيذ""",
  """غسل الولد يديه ثم أكل التفاحة\nاكل الولد التفاحة بعد أن بدأت الفسحة\nقال الولد أنا نجحت ف سعد الجميع له""",
];
Widget key(int currentLevel) {
  return Padding(
    padding: const EdgeInsets.only(top: 33, right: 8),
    child: Align(
      alignment: Alignment.topRight,
      child: Container(
        height: 45,
        width: 110,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(.8),
          borderRadius: BorderRadius.circular(10),
        ),
        child: FittedBox(
          child: Row(
            children: [
              currentLevel > 0
                  ? Image.asset("assets/greenkey.png")
                  : Image.asset("assets/greykey.PNG"),
              currentLevel > 1
                  ? Image.asset("assets/greenkey.png")
                  : Image.asset("assets/greykey.PNG"),
              currentLevel > 2
                  ? Image.asset("assets/greenkey.png")
                  : Image.asset("assets/greykey.PNG"),
              currentLevel > 3
                  ? Image.asset("assets/greenkey.png")
                  : Image.asset("assets/greykey.PNG"),
              currentLevel > 4
                  ? Image.asset("assets/greenkey.png")
                  : Image.asset("assets/greykey.PNG"),
            ],
          ),
        ),
      ),
    ),
  );
}
