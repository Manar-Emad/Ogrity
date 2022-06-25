import 'package:flutter/material.dart';
import '../shared/components/components.dart';
import '../shared/language/app_localization.dart';
import '../shared/styles/colors.dart';
import '../shared/styles/sizes.dart';
import '../shared/styles/styles.dart';
import 'home_screen.dart';

class ItemExpandedTile20 extends StatelessWidget {
  const ItemExpandedTile20({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
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
            padding: const EdgeInsets.symmetric(
                vertical: 10, horizontal: 10),
            child: defaultSeparator(
                separatorColor.withOpacity(.5)),
          ),
          tableRow(context,
              txt1: '1', txt2: 'the_number'),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 10, horizontal: 10),
            child: defaultSeparator(
                separatorColor.withOpacity(.5)),
          ),
          tableRow(context,
              txt1: '2', txt2: 'the_number'),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 10, horizontal: 10),
            child: defaultSeparator(
                separatorColor.withOpacity(.5)),
          ),
          tableRow(context,
              txt1: '3', txt2: 'the_number'),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 10, horizontal: 10),
            child: defaultSeparator(
                separatorColor.withOpacity(.5)),
          ),
          tableRow(context,
              txt1: '4', txt2: 'the_number'),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 10, horizontal: 10),
            child: defaultSeparator(
                separatorColor.withOpacity(.5)),
          ),
          tableRow(context,
              txt1: '5', txt2: 'the_number'),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 10, horizontal: 10),
            child: defaultSeparator(
                separatorColor.withOpacity(.5)),
          ),
          tableRow(context,
              txt1: '6', txt2: 'the_number'),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 10, horizontal: 10),
            child: defaultSeparator(
                separatorColor.withOpacity(.5)),
          ),
          tableRow(context,
              txt1: '7', txt2: 'the_number'),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 10, horizontal: 10),
            child: defaultSeparator(
                separatorColor.withOpacity(.5)),
          ),
          tableRow(context,
              txt1: '8', txt2: 'the_number'),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 10, horizontal: 10),
            child: defaultSeparator(
                separatorColor.withOpacity(.5)),
          ),
          tableRow(context,
              txt1: '9', txt2: 'the_number'),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 10, horizontal: 10),
            child: defaultSeparator(
                separatorColor.withOpacity(.5)),
          ),
          tableRow(context,
              txt1: '10', txt2: 'the_number'),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 10, horizontal: 10),
            child: defaultSeparator(
                separatorColor.withOpacity(.5)),
          ),
          tableRow(context,
              txt1: '11', txt2: 'the_number'),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 10, horizontal: 10),
            child: defaultSeparator(
                separatorColor.withOpacity(.5)),
          ),
          tableRow(context,
              txt1: '12', txt2: 'the_number'),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 10, horizontal: 10),
            child: defaultSeparator(
                separatorColor.withOpacity(.5)),
          ),
          tableRow(context,
              txt1: '13', txt2: 'the_number'),
          Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 10, horizontal: 10),
            child: defaultSeparator(
                separatorColor.withOpacity(.5)),
          ),
          tableRow(context,
              txt1: '14', txt2: 'the_number'),
          sizedBoxh1,
        ],
      ),
    );
  }
}