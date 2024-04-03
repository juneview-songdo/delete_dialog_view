import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({super.key});

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Are you sure you want ")
            .textStyle(Theme.of(context).textTheme.bodyMedium!)
            .fontWeight(FontWeight.bold),
        Text("to delete this post?")
            .textStyle(Theme.of(context).textTheme.bodyMedium!)
            .fontWeight(FontWeight.bold),
        SizedBox(height: 20),
        //button
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //black background
            ElevatedButton(
                    //round
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Delete").fontSize(12))
                .expanded(),
            Gap(10),
            ElevatedButton(
                    //rount
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black, backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancel").fontSize(12))
                .expanded(),
          ],
        )
      ],
    ).padding(vertical: 20, horizontal: 15);
  }
}

main() async {
  return buildApp(appHome: NewView().center());
}
