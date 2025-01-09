import 'package:flutter/material.dart';
import 'package:stroll/Data/options.dart';
import 'package:stroll/Widgets/card.dart';
import 'package:stroll/theme.dart';

class Answer extends StatelessWidget {
  const Answer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.04,
      margin: EdgeInsets.only(top: 6.0),
      child: Center(
        child: Text(
          "❝ Mine is definitely the place in the morning.❞",
          style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: Colors.grey),
        ),
      ),
    );
  }
}

class Options extends StatefulWidget {
  const Options({super.key});

  @override
  State<Options> createState() => _OptionsState();
}

class _OptionsState extends State<Options> {
  int selectedOption = 3;

  void updateSelectedOption(int index) {
    setState(() {
      selectedOption = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.height;
    double childAspectRatio;

    if (screenWidth < 600) {
      // For small screens
      childAspectRatio = 3.0;
    } else if (screenWidth < 1200) {
      // For medium screens
      childAspectRatio = 2.5;
    } else {
      // For large screens
      childAspectRatio = 1.5;
    }
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: BouncingScrollPhysics(),
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return OptionCard(
          title: options[index],
          index: optionLabels[index],
          isSelected: selectedOption == index,
          onTap: () => updateSelectedOption(index),
        );
      },
    );
  }
}

class NextQuestion extends StatelessWidget {
  const NextQuestion({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.none,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.06,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            clipBehavior: Clip.none,
            padding: EdgeInsets.only(left: 4.0),
            width: MediaQuery.of(context).size.width * 0.6,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Pick your option.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "See who has a similar mind.",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            clipBehavior: Clip.none,
            padding: EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: CustomColors.active,
                width: 2.0,
              ),
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.mic_none_rounded,
              color: CustomColors.active,
              size: MediaQuery.of(context).size.width * 0.06,
            ),
          ),
          Container(
            clipBehavior: Clip.none,
            padding: EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: CustomColors.active,
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.arrow_forward_rounded,
              color: Colors.black,
              size: MediaQuery.of(context).size.width * 0.06,
            ),
          ),
        ],
      ),
    );
  }
}
