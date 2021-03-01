import 'package:flutter/material.dart';

import 'package:monkeyidentificationapp/scroll/shared.dart';
import 'package:monkeyidentificationapp/scroll/data.dart';

class nilgirilangur extends StatelessWidget {
  // buildTextSubTitleVariation1(recipe.characterstic3),
  final Recipe recipe;

  nilgirilangur({@required this.recipe});

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

                          image: DecorationImage(image: AssetImage('assets/images/monkeyinfo/nilgirilangurinfo.png'),

                            fit: BoxFit.cover,

                          ),
                        ),

                        child:
                        Text("")

                    ),
                  ),


                  SizedBox(height:25),
                  buildTextTitleVariation2('​Diet', false),
                  buildTextSubTitleVariation1("Being folivores, Nilgiri langurs mainly eat leaves. They do not shy away from other sources of sustenance, though, and are known to eat nuts, fruit, seeds, and flowers. Occasionally they are lignivorous, and eat tree bark. Their diet is made up of a variety of plant species—over 115 types of shrubs, vines, trees, and more. Like many folivorous primates, this species will also occasionally eat insects, but that remains an insignificant portion of their diet."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Behavior and Lifestyle', false),
                  buildTextSubTitleVariation1("Nilgiri langurs are a social species and often engage in activities such as grooming and playing within their groups. Playing can often be an expression of dominance, or a form of aggression. Males and females express dominance in different ways: males do this by deciding which sites they travel to, and when; females with a higher position within the group typically show their status by claiming preferred spots for resting or feeding. Higher-ranked males also have more social mobility, and are permitted to interact with all other members of the group, while lower-ranked individuals are not granted this same ability. The adult male is also the chief defender of the group’s territory when they come into contact with other groups. Mostly these interactions are contained to physical and verbal altercations, but can sometimes escalate to one dominant male usurping another dominant male, taking over his group, and killing his offspring."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('​Daily Life and Group Dynamics ', false),
                  buildTextSubTitleVariation1("​This is a diurnal species, meaning they are active during the day. While active, they spend approximately half of their time eating and the other half resting. Groups are typically female-centric, but have varying structures. Sometimes there is only one male, other times there are many—but there are always a high number of females. Groups can be anywhere from 1 to 27 in size, but most often fall somewhere in the middle of that range. Since there is a hierarchy within the group, this dominates the way interactions play out between individuals. The higher up an individual is in the hierarchy, the more often he or she will display dominant behavior. Low-ranking members, contrarily, might only rarely get the opportunity to assert themselves over other members of the group."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Communication', false),
                  buildTextSubTitleVariation1("The sounds made by the Nilgiri langur are often described as barks, and they are a highly vocal species. They are most vocal when expressing dominance or subservience within their social groups, or when establishing territorial boundaries with neighboring groups. Within the group, verbal altercations are typically started between females, and the high-ranking males ultimately intervene. Beyond sounds, they use gestures and facial expressions. An open mouth, for example, is a threat used mostly within the social group."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Reproduction and Family', false),
                  buildTextSubTitleVariation1("The Nilgiri langur reaches sexual maturity at between three and five years of age. The gestation period for this species is between 140 and 220 days, similar to the Hanuman langur, and most babies are born in the months of May and November. This is a result of increased breeding during times where food is more abundant, but this species breeds year round. Babies are born one at a time. Infants are nursed for a year, but mothers are less doting than other species. Mothers also will, eventually, allow other females in the group to interact with their offspring, but it is rare for the infant to be nurtured at all by sexually mature males"),


                  SizedBox(height:25),
                  buildTextTitleVariation2('​Ecological Role', false),
                  buildTextSubTitleVariation1("The Nilgiri langur plays a role in seed dispersal, although not nearly as significantly so as once believed. A 2013 study reveals that a majority of the seeds they consume are destroyed in the process. "),



                ],
              ),
            ),

          ],
        ),
      ),

    );
  }



}