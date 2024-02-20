import 'package:flutter/material.dart';
import 'package:islamy_app/screens/home/bodies/hadith/hadith_model.dart';

class HadithDetailsScreen extends StatelessWidget {
  static const String routeName = "HadithDetailsScreen";
  const HadithDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HadithModel hadithModel = ModalRoute.of(context)?.settings.arguments as HadithModel;
    return  Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                fit: BoxFit.fill
            )),
        child:Scaffold(
          appBar: AppBar(
            title: Text("Islamy" ,style: Theme.of(context).textTheme.titleLarge)
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(hadithModel.title, style: Theme.of(context).textTheme.titleSmall),
                          const SizedBox(width: 10,),
                          Icon(Icons.play_circle,color: Theme.of(context).colorScheme.onSecondary ,size: 25,),
                          const SizedBox(height: 10,),
                        ],
                      ),
                    ),
                    const Divider(height: 1, indent: 30, endIndent: 30,),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(hadithModel.content,
                            style: Theme.of(context).textTheme.bodyMedium
                        ),
                      ),
                    )


                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}
