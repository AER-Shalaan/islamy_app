import 'package:flutter/material.dart';

class SebihaWidget extends StatefulWidget {
  @override
  State<SebihaWidget> createState() => _SebihaWidgetState();
}

class _SebihaWidgetState extends State<SebihaWidget> {
  double turns = 0.0;
  int sebihaCounter = 0;
  int tsebihCounter =0;
  String deker = "";
  @override
  Widget build(BuildContext context) {
    tasbih();
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: ClipRRect(
                        child: Image.asset("assets/icons/head_of_seb7a.png" ,color: Theme.of(context).colorScheme.tertiary)),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 80),
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            turns+=1/4;
                            if(sebihaCounter< 33){
                              sebihaCounter++;
                            }else{
                              sebihaCounter = 0;
                            }
                          });
                        },
                          child: AnimatedRotation(
                              turns: turns,
                              duration: const Duration(milliseconds: 10),
                              child: Image.asset("assets/icons/body_of_seb7a.png",color: Theme.of(context).colorScheme.tertiary, )
                          )
                      )
                  ),
                ],),
          ),
          const Spacer(flex: 1,),
          Text("عدد التسبيحات", style: TextStyle(color: Theme.of(context).colorScheme.onPrimary,fontWeight: FontWeight.w500,fontSize: 25),),
          const Spacer(flex: 1,),
          Container(
            alignment: Alignment.center,
            height: 81,
            width: 69,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
              borderRadius: BorderRadius.circular(25)
            ),
            child: Text("$sebihaCounter",style: TextStyle(color: Theme.of(context).colorScheme.onPrimary,fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          const Spacer(flex: 1,),
          Container(
            alignment: Alignment.center,
            height: 51,
            width: 137,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiary,
              borderRadius: BorderRadius.circular(30)
            ),
            child: Text(deker,style: TextStyle(color: Theme.of(context).colorScheme.secondary,fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          const Spacer(flex: 6)

        ],),
    );
  }
  List<String> adkar =[
    "الله أكـبر","الحمد للـه","سبحـان الله","استغفر الله","لا إله إلا الله"
  ];
  void tasbih(){
    deker = adkar[tsebihCounter];
    setState(() {
      if(sebihaCounter == 33){
        if(tsebihCounter<4){
          tsebihCounter++;
        }else{
          tsebihCounter = 0;
        }
      }
    });
}
}