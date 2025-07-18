import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:ai-quiz-craft/controllers/quiz_controller.dart';
import 'package:ai-quiz-craft/custom_widgets/custom_template.dart';
import 'package:ai-quiz-craft/theme/font.dart';
import 'package:ai-quiz-craft/theme/palette.dart';

class QuestionnaireView extends StatelessWidget {
  const QuestionnaireView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomTemplate(
        body: PieChart(
      dataMap: Get.find<QuizController>().getPieList(0),
      chartType: ChartType.disc,
      legendOptions: LegendOptions(
          legendTextStyle: TextStyle(
        fontFamily: fontFamily,
        fontSize: 15,
        fontWeight: Font.regular,
        color: Palette.font,
      )),
      chartValuesOptions: ChartValuesOptions(
        showChartValueBackground: false,
        decimalPlaces: 2,
        showChartValuesInPercentage: true,
        showChartValuesOutside: true,
        chartValueStyle: TextStyle(
          fontFamily: fontFamily,
          fontSize: 15,
          fontWeight: Font.regular,
          color: Palette.font,
        ),
      ),
    ));
  }
}
