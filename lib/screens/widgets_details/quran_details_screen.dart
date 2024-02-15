import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuranDetailsScreen extends StatefulWidget {
  static const String routeName = "QuranDetailsScreen";

  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    QuranDetailsArgs args = ModalRoute.of(context)?.settings.arguments as QuranDetailsArgs;
    if(lines.isEmpty){
      readQuranFile(args.index);
    }
    return Container(
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/images/background.png"),
    fit: BoxFit.fill
    )),
    child:Scaffold(
      appBar: AppBar(
        title: const Text("Islamy"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(

              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("سورة ${args.title}", style: TextStyle(color: Theme.of(context).colorScheme.onSecondary, fontSize: 25 , fontWeight: FontWeight.bold)),
                          const SizedBox(width: 10,),
                          Icon(Icons.play_circle,color: Theme.of(context).colorScheme.onSecondary ,size: 25,)
                        ],
                      ),
                      const SizedBox(height: 10,),
                      Divider(color: Theme.of(context).colorScheme.tertiary,
                        height: 1,
                        thickness: 2,
                      )
                    ],
                  ),
                ),
                Expanded(child: lines.isNotEmpty
                    ?ListView.custom(
                      childrenDelegate:
                        SliverChildBuilderDelegate((context , index){
                        return Directionality(
                          textDirection: TextDirection.rtl,
                          child: Text(sura,style: TextStyle(color: Theme.of(context).colorScheme.onSecondary,fontSize: 20)),
                        );
                      },childCount: 1),)
                    : Center(child: CircularProgressIndicator(color: Theme.of(context).colorScheme.tertiary)))
              ],
            ),
          ),
        ),
      ),
    )
    );
  }
  List<String> lines =[];
  String sura = "";
  void readQuranFile(int index) async {
    String quran = await rootBundle.loadString("assets/texts/Quran_texts/${index+1}.txt");
    lines = quran.split("\n");
    if(lines.isNotEmpty) {
      for (int i = 0; i < lines.length; i++) {
        sura += lines[i];
        sura += "(${i + 1}) ";
      }
    }
    setState(() {
    });
  }
}

class QuranDetailsArgs{
  String title;
  int index;
  QuranDetailsArgs(this.title,this.index);
}
