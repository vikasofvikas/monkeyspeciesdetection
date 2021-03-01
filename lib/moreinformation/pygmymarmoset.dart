import 'package:flutter/material.dart';

import 'package:monkeyidentificationapp/scroll/shared.dart';
import 'package:monkeyidentificationapp/scroll/data.dart';

class pygmymarmoset extends StatelessWidget {
  // buildTextSubTitleVariation1(recipe.characterstic3),
  final Recipe recipe;

  pygmymarmoset({@required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        brightness: Brightness.light,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
        actions: [

        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 70,),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Center(
                    child:
                    Container(
                        height: 200.0,
                        width: 290.0,

                        decoration: BoxDecoration(
                          //    borderRadius: Border.fromBorderSide(side) ,
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          border: Border.all(color: Colors.redAccent.withOpacity(0.5), width: 4),

                          image: DecorationImage(image: AssetImage('assets/images/monkeyinfo/pygmymarmosetinfo.png'),

                            fit: BoxFit.cover,

                          ),
                        ),

                        child:
                        Text("")

                    ),
                  ),


                  SizedBox(height:25),
                  buildTextTitleVariation2('​Diet', false),
                  buildTextSubTitleVariation1("Pygmy marmosets are primarily gummivores; their diet consists mostly of tree exudate (tree sap, gum, latex, and resin) and some fruit, flowers, nectar, insects, and spiders. They have small, sharp bottom teeth that they use to gouge holes in trees and vines. Once the exudate starts to pool in the holes, they use their tongue to lick it from the tree. They start by gnawing holes in the bottom of the trees and work their way up the trunk until the tree no longer supplies an adequate amount of exudate. At this point, they move to a new tree and begin the process again. However, it is important to note that these primates do not kill the tree they are feeding from, but instead move from tree to tree to allow the tree to replenish itself. In addition, the sap attracts insects and butterflies, and sometimes the monkeys wait for them to land before snatching them up for a meal. Pygmy marmosets can chew over 1,000 holes in one tree and they will often keep reopening a single hole so sap continues to run out of the tree or vine."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Behavior and Lifestyle', false),
                  buildTextSubTitleVariation1("Families choose a sleeping site near their food source that is adequately covered to avoid predators. All group members wake up at sunrise. Typically, marmosets socially interact shortly after waking up and in the late afternoon before sleeping by grooming each other and playing. Between these times, their attention is focused on feeding and taking care of their young. Males are typically busier with taking care of the infants than the females, giving the females more freedom to forage."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Daily Life and Group Dynamics', false),
                  buildTextSubTitleVariation1("​Pygmy marmosets are monogamous and find a mate to start their own family. Each group of pygmy marmosets usually consists of one couple and their young and extended family, called a troop. Troops typically vary from 2 to 6 members. Although these monkeys are generally docile and friendly to family members, they are very territorial. Pygmy marmoset families have territories up to 100 ac (40.5 ha) marked by scent. ​ The adults in the troop work together to raise the young and watch for predators. When they are attacked, they work together to defend themselves by making loud vocalizations and counterattacking; however, they sometimes stay still until the predator leaves."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Communication', false),
                  buildTextSubTitleVariation1("Pygmy marmosets communicate physically, vocally, and chemically to protect their families and mark their territories. They make facial expressions to show surprise, fear, and contentment through various movements using their lips, eyelids, and mane. In addition, male pygmy marmosets will arch their back and strut to show dominance or when they feel threatened. They also create various vocalizations by making high-pitched trills and chatters to communicate. For example, when a pygmy marmoset makes a loud, open-mouth trill, this is to signal danger such as a predator, but a high-pitched, closed-mouth trill is used for recognition. To humans, these vocalizations can sound similar to bird calls. Some calls are so high-pitched that the human ear can't hear them. Finally, pygmy marmosets use scent to mark their territory and to attract mates."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Reproduction and Family', false),
                  buildTextSubTitleVariation1("Each troop has one dominant female that produces offspring. When a female is ready to reproduce, she releases a chemical secretion from her genitals, chest, and anus to attract a mate. Once she finds a mate and becomes pregnant, her gestation period lasts for four and a half months. After the first mating, she can give birth about every five to seven months. Mothers almost always have fraternal twins. The babies weigh about 0.5 oz (14 g) and are about the size of a human thumb. After she reproduces the first time, she is ready to breed again three weeks after she gives birth. The father takes on an active parenting role from the day of delivery, helping to deliver the infants, cleaning them, and taking care of them by carrying the newborns on his back for the first two weeks between nursings. Sometimes siblings help with the infants as well, hiding them while the other family members find food. At three months, the young pygmy marmosets are strong enough to keep up with the troop and are weaned from their mother. After one to one and a half years, young marmosets reach sexual maturity, and at two years of age, they are fully grown. At this point, they will typically stay in the troop for two more birth cycles to take care of new infants before leaving the group to begin mating and creating their own families. This group coordination allows the juveniles to learn parenting skills, and for the troop to continue functioning cohesively."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Ecological Role', false),
                  buildTextSubTitleVariation1("Pygmy marmosets act as seed dispersers by depositing seeds from the fruit they eat throughout the forest. "),




                ],
              ),
            ),

          ],
        ),
      ),

    );
  }



}