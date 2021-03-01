import 'package:flutter/material.dart';

import 'package:monkeyidentificationapp/scroll/shared.dart';
import 'package:monkeyidentificationapp/scroll/data.dart';

class silverymarmoset extends StatelessWidget {
  // buildTextSubTitleVariation1(recipe.characterstic3),
  final Recipe recipe;

  silverymarmoset({@required this.recipe});

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

                          image: DecorationImage(image: AssetImage('assets/images/monkeyinfo/silverymarmosetinfo.png'),

                            fit: BoxFit.cover,

                          ),
                        ),

                        child:
                        Text("")

                    ),
                  ),


                  SizedBox(height:25),
                  buildTextTitleVariation2('Diet', false),
                  buildTextSubTitleVariation1("The silvery marmoset’s favorite thing to eat is tree sap and gum; aided by their long claws, they make a hole in the tree bark and then use their tongue and fingers to lick and scoop it out. Additionally, they feed on fruit, flowers, and the occasional small lizard, amphibian, insect, spider, or egg. Due to the high levels of gum and sap in their diets, silvery marmosets (and other marmosets and tamarins) have a specialized gut, including a large caecum that slows digestion, which helps them to absorb the nutrients from these food sources."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Reproduction', false),
                  buildTextSubTitleVariation1("Silvery marmosets reach sexual maturity by age two and breed twice a year—although typically only the dominant female in a group breeds. Reproduction in other females in the groups is suppressed. These marmosets have a gestation period of 145 days, after which they usually give birth to twins. These twins are often dizygotic, meaning that they are not genetically identical and may even have different fathers. Infant care is shared among group members, who may act as alloparents for the infant. Fathers and male group members often carry the infants and return them to their mother to feed. This alloparenting helps non-reproducing members of the group practice their parenting skills and increases the infants’ chances of survival. Infants are weened around six months of age and are adult-sized by one to two years."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Behavior', false),
                  buildTextSubTitleVariation1("Silvery marmosets are a primarily arboreal species and may spend their entire lives in the trees, never once coming down to the ground. Their range is smaller than some other marmoset species, about 25 acres (10 ha). Silvery marmosets are diurnal and spend their days foraging throughout their home range with their family group. As the sun sets, they find a place to sleep, often a vine tangle or tree hole, were they are nestled together and safe from predators."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Communication and Perception', false),
                  buildTextSubTitleVariation1("As with many marmosets and tamarins, communication is important and complex in this species. They use specialized calls to convey messages in varying situations. Similar to human language, marmoset vocalizations can be used to signal aggression, passivity, dominance, submission, and intention. For example, when initiating play and throughout a play session, silvery marmosets make a “ee-ee” sound, but when alerting other group members to a potential threat, they use a high-pitched, rapid “tsik” call. In addition to vocalizations, silvery marmosets also utilize scent communication. They have specialized glands on their chests and genitals that they use to convey messages about territories, dominance, and reproductive status by rubbing the glands on tree branches, leaving the scent behind."),

                  SizedBox(height:25),
                  buildTextTitleVariation2(' Daily Life and Group Dynamics', false),
                  buildTextSubTitleVariation1("Silvery marmosets live in groups of 4 to 12 individuals, one of whom is the dominant and sole reproducing female. Groups stick together and are relatively cohesive. Allogrooming is a frequent occurrence among all members. Levels of aggression are relatively low and aggressive bouts are mild, occurring most often around feeding times and feeding sites. When they reach maturity, both males and females tend to disperse and leave their family groups in order to find new mates."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Ecosystem Roles', false),
                  buildTextSubTitleVariation1("Silvery marmosets act as seed dispersers by depositing seeds from the fruit they eat throughout the forest. "),





                ],
              ),
            ),

          ],
        ),
      ),

    );
  }



}