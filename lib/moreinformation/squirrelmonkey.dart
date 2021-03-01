import 'package:flutter/material.dart';
import 'package:monkeyidentificationapp/scroll/constants.dart';
import 'package:monkeyidentificationapp/scroll/shared.dart';
import 'package:monkeyidentificationapp/scroll/data.dart';

class squirrelmonkey extends StatelessWidget {

  final Recipe recipe;

  squirrelmonkey({@required this.recipe});

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

                      image: DecorationImage(image: AssetImage('assets/images/monkeyinfo/squirrelmonkey.png'),

                          fit: BoxFit.cover,

                      ),



                     // shape: BoxShape.circle,
                    ),

                      child:
                                   Text("")

                  ),
),
                  SizedBox(height:25),

                  buildTextTitleVariation2('Species Specifics', false),

                  buildTextSubTitleVariation1("The social structure of squirrel monkeys varies between species. Saimiri scuireus live in much smaller groups than other Saimiri species. Males and females are fully integrated into the group, as opposed to most Saimiri species. Both males and females will leave their natal group. Females tend to travel between several groups in their lifetime. Whereas males tend to spend more time on the periphery or roaming by themselves. When a mixed sex group is formed, males tend to fight fiercely with any solitary males who try to join the group"),
                 SizedBox(height:25),
                  buildTextTitleVariation2('Physical Characteristics', false),



                       buildTextSubTitleVariation1("Squirrel monkeys move through the trees by leaping. They have thighs that are shorter relative to their lower legs; this allows more jumping force. They distribute a musky glandular secretion throughout their fur (especially on tail) as scent to mark territory or to leave a trail for others of the troop to follow as they go through the trees. This odor turns away hunters who might otherwise kill them for food."),
                  SizedBox(height:25),
                //  buildTextTitleVariation2('Physical Characteristics', false),




                  //   buildTextSubTitleVariation1(recipe.characterstic3),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Habitat', false),


                  buildTextSubTitleVariation1("Lives in primary and secondary forests and in cultivated areas, usually along rivers and streams. They use all levels of the forest, but forage and travel mainly in the lower canopy and understory"),


                  SizedBox(height:25),

                  buildTextTitleVariation2('Diet', false),

                  //   buildTextSubTitleVariation1("STEP 1"),
                  buildTextSubTitleVariation1("Squirrel Monkeys primarily eat fruit, nuts, insects, spiders, bird eggs, or young birds"),


                  SizedBox(height:25),
                  buildTextTitleVariation2('Ecological Web', false),




                  buildTextSubTitleVariation1("Squirrel monkeys play an important role in controlling insect populations. They also serve as a good source of food for many other animals in their ecosystem, such as raptors, snakes, and large cats."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Activity Pattern', false),

                  buildTextSubTitleVariation1("Squirrel monkeys spend 75-80% of their day foraging for fruit, insects, and other small arthropods. During the dry season, fruit becomes more scarce, and they are able to depend entirely on animal prey."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Behavior', false),

                  buildTextSubTitleVariation1("Squirrel monkeys wipe urine onto their hands and feet to mark their territory."),


                  SizedBox(height:25),
                  buildTextTitleVariation2('Social Behavior', false),

                  buildTextSubTitleVariation1("Live in groups of 15-12. Both sexes form a single linear hierarchy, with most males being more dominant than females. Males form coalitions and tend to be aggressive towards other males, and potential predators. The fruits they eat tend to be located in small, dense patches, so competition between group members tends to be high."),




                  SizedBox(height:25),
                  buildTextTitleVariation2('Reproductive Behavior', false),

                  buildTextSubTitleVariation1("Squirrel monkeys mate between September and November. Males and females are promiscuous and will mate with several partners. Offspring are born during the dry season, between February and April, when there is a high abundance of arthropods. For the first month of life, babies will stay attached to their mom, getting carried around on her back. Females act as the sole caregiver to their young, though males will also display increased aggression towards predators during the birthing season."),


                  SizedBox(height:25),
                  buildTextTitleVariation2('Offspring', false),

                  buildTextSubTitleVariation1("Squirrel Monkeys usually only give birth to one offspring at a time. For the first month of life, babies will stay attached to their mom, getting carried around on her back. Females act as the sole caregiver to their young, though males will also display increased aggression towards predators during the birthing season."),


                  SizedBox(height:25),
                  buildTextTitleVariation2('Status', false),

                  buildTextSubTitleVariation1("Squirrel monkeys are listed as Least Concern, because of their relatively wide range, adaptability to some degree of disturbed forest, and the lack of major threats. Given their small size, they are generally not hunted for meat. Though in some countries, squirrel monkeys are trapped and sold into the pet trade."),


                /*  SizedBox(height:25),
                  buildTextTitleVariation2('Ecological Web', false),

                  buildTextSubTitleVariation1("recipe.characterstic3"),


*/












                ],
              ),
            ),

          ],
        ),
      ),

    );
  }



}