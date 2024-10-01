import 'package:application_islami/ui/teps/quran%20tep/quran%20view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SuraDetails extends StatefulWidget {
  static const String routName = "suraDetails";

  SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  String content = "";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsFiles;
    readFiles(args.detailsSuraNumber);

    var theme = Theme.of(context);
    double height = MediaQuery.of(context).size.height;
    double wight = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.png"))),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Islami"),
        ),
        body: Column(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                      vertical: height * 0.04, horizontal: wight * 0.08),
                  padding: EdgeInsets.symmetric(
                      vertical: height * 0.02, horizontal: wight * 0.04),
                  width: double.infinity,
                  height: height * 0.8,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.secondary.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "سورة ${args.detailsSuraName}",
                            style: theme.textTheme.titleSmall,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            width: wight * 0.04,
                          ),
                          const Icon(Icons.play_circle),
                        ],
                      ),
                      const Divider(
                        indent: 40,
                        endIndent: 40,
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 1,
                          itemBuilder: (context, index) => Text(
                            content,
                            style: theme.textTheme.bodySmall,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  readFiles(String index) async {
    var text = await rootBundle.loadString("assets/files/$index.txt");
    content = text;
    setState(() {
      content.split('\n');
    });
  }
}
