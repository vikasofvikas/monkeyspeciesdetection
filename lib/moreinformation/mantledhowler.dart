import 'package:flutter/material.dart';
import 'package:monkeyidentificationapp/scroll/constants.dart';
import 'package:monkeyidentificationapp/scroll/shared.dart';
import 'package:monkeyidentificationapp/scroll/data.dart';

class mantledhowler extends StatelessWidget {
  // buildTextSubTitleVariation1(recipe.characterstic3),
  final Recipe recipe;

  mantledhowler({@required this.recipe});

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

                          image: DecorationImage(image: AssetImage('assets/images/monkeyinfo/mantledhowlerinfo.png'),

                            fit: BoxFit.cover,

                          ),



                          // shape: BoxShape.circle,
                        ),

                        child:
                        Text("")

                    ),
                  ),


                  SizedBox(height:25),

                  buildTextTitleVariation2('Diet', false),

                  buildTextSubTitleVariation1("Mantled howler monkeys spend most of their time munching on leaves, fruits, and flowers, though food habits vary seasonally with resource availability. Flowers are abundant during the dry season; fruits are available during the wet season. Mantled howler monkeys are very selective about the species on which they feed. Their food choices are based on digestibility, nutrient value, and tannins (which can be quite unpleasant for howlers). Tannins are found in plant tissues and consist of high levels of acid, which can cause stomach irritation. Mantled howler monkeys are equipped with large salivary glands that break down tannins before they reach the stomach, enabling them to consume leaves that other species cannot. Grazing on these leaves gives mantled howler monkeys access to a niche that is rarely exploited by other mammals. However, they prefer to eat young leaves with a higher protein-to-fiber ratio and a lower tannin content. While foraging, they spend an equal amount of time feeding on both leaves and fruits. In Los Tuxtlas, Mexico, however, a species known as Atta cephalotes, a leaf-cutting ant, inflicts significant pressure on available leaf resources, which causes competition between arboreal mammals like the mantled howler."),



                  SizedBox(height:25),

                  buildTextTitleVariation2('​Behavior and Lifestyle', false),

                  buildTextSubTitleVariation1("Mantled howler monkeys are arboreal and diurnal; that is, they live in trees and are most active during the day. They move through the forest canopy by walking and climbing quadrupedally or suspending themselves below the branches. They hang by their arms and support themselves with their long prehensile tails while feeding. At night they sleep on horizontal branches. There is slight variation in locomotion style between males and females. Males climb less, leap more, and prefer the higher canopy, compared to females. When necessary, both males and females will cross open areas between forest patches on the ground and even swim short distances. This species is polygynous, meaning one male mates with multiple females. Mantled howler monkeys do not have a particular breeding season and instead tend to breed at anytime of the year. Many births occur in late December and January."),

                  SizedBox(height:25),

                  buildTextTitleVariation2('Daily Life and Group Dynamics', false),

                  buildTextSubTitleVariation1("Mantled howler monkeys are highly sociable creatures. Dominance hierarchies within their groups demonstrate complex social interactions that may be the opposite of what one might expect. For example, among mantled howlers: young adults have a higher ranking; middle-aged adults are intermediately ranked; and older adults have a low ranking. In many species, rank is achieved over time and experience. Group sizes range from 10 to 20 individuals, usually with 1 to 5 adult males and 5 to 10 adult females and their offspring. Males form bachelor groups and may challenge dominant males in an effort to usurp their troops. Females form stable social units and rarely leave their natal group. The gender ratio is close to four females for every male. If the ratio of females drops below four, older males may behave aggressively toward younger males in an effort to drive them off, or they will wander off themselves to find a new troop. Thus, immigration plays an important role in population size and dynamics."),

                  SizedBox(height:25),

                  buildTextTitleVariation2('Communication', false),

                  buildTextSubTitleVariation1("​​One of the most common forms of communication between mantled howler monkeys is vocal communication. The loudest New World monkey species, their calls can be heard up to 3 miles away. A long call, amplified by the hyoid bone, can travel large distances. These calls communicate group location, distance, and composition. They can also be directed toward solitary individuals and other members of the group. Long calls are often heard at dawn. Neighboring groups communicate through vocal calls between the males. They emit woofing, grunting, barking, and howling sounds. Olfactory communication has been reported in male mantled howler monkeys. Males have been observed tasting the urine of females, possibly to check for estrus status. Tactile communication is mainly demonstrated by females via grooming. "),

                  SizedBox(height:25),

                  buildTextTitleVariation2('Reproduction and Family', false),

                  buildTextSubTitleVariation1("After six months of gestation, the mother gives birth to one offspring. The newborn is licked clean and carried by her or his mother. During the first few weeks after birth, the mother nurses the infant. After 3 weeks, the infant begins to eat leaves. As the infant matures, he or she begins to ride on the mother’s back. When traveling on the mother’s back, the infant grasps the base of the mother’s tail with his or her own. The child is constantly with the mother for the first four months. During this time, mother and infant do not venture more than 6.5 ft (2 m) away from each other. Occasionally, females other than the mother may care for the child. At about 10-11 weeks, the baby starts to forage independently and spends much more time on his or her own. Males reach maturity at about 42 months and females at about 36 months."),
                  SizedBox(height:25),

                  buildTextTitleVariation2('​Ecological Role', false),

                  buildTextSubTitleVariation1("Mantled howler monkeys disperse seeds from the plants they eat throughout the forest, which is highly beneficial to the ecosystem. Their feces are used by dung beetles, which helps recycle nutrients into the soil."),

                ],
              ),
            ),

          ],
        ),
      ),

    );
  }



}