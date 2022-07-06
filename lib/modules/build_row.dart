import 'package:flutter/material.dart';
import '../shared/components/components.dart';
import '../shared/language/app_localization.dart';
import '../shared/styles/colors.dart';
import '../shared/styles/sizes.dart';
import '../shared/styles/styles.dart';
import 'home_screen.dart';

class BuildRow extends StatelessWidget {
  final int sections;
  final double perPerson;

  const BuildRow({super.key, required this.sections, required this.perPerson});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            children: [
              const Expanded(
                flex: 1,
                child: SizedBox(
                  width: 1,
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  AppLocalization.of(context)!.translate('the_number')!,
                  style: prim14bold(),
                ),
              ),
              const Expanded(
                flex: 2,
                child: SizedBox(
                  width: 1,
                ),
              ),
              Expanded(
                flex: 2,
                child: Text(
                  AppLocalization.of(context)!.translate('fare')!,
                  style: prim14bold(),
                ),
              ),
              const Expanded(
                flex: 1,
                child: SizedBox(
                  width: 1,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: defaultSeparator(separatorColor.withOpacity(.5)),
          ),
          SizedBox(
            child: Column(
             children:
                List.generate(14, (index) =>
                    Column(
                      children: [
                        tableRow(context,
                        txt1:( index+1).toString(), txt2: calculateFare(numOfPassenger:(index+1) ,perPerson: perPerson,section:sections )),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          child: defaultSeparator(separatorColor.withOpacity(.5)),
                        ),
                      ],
                    ),
                ),
            ),
          ),
          sizedBoxh1,
        ],
      ),
    );
  }
}

String calculateFare(
    {required double perPerson,
    required int numOfPassenger,
    required int section}) {
  if (perPerson * numOfPassenger < section) {
    return (section - (perPerson * numOfPassenger)).toString();
  }
  return "No Fare";
}



