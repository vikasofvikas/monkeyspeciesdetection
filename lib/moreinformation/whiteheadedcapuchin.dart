import 'package:flutter/material.dart';

import 'package:monkeyidentificationapp/scroll/shared.dart';
import 'package:monkeyidentificationapp/scroll/data.dart';

class whiteheadedcapuchin extends StatelessWidget {
  // buildTextSubTitleVariation1(recipe.characterstic3),
  final Recipe recipe;

  whiteheadedcapuchin({@required this.recipe});

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

                          image: DecorationImage(image: AssetImage('assets/images/monkeyinfo/whiteheadedcapuchininfo.png'),

                            fit: BoxFit.cover,

                          ),
                        ),

                        child:
                        Text("")

                    ),
                  ),


                  SizedBox(height:25),
                  buildTextTitleVariation2('Diet', false),
                  buildTextSubTitleVariation1("Omnivores, white-headed/throated capuchins eat mostly fruits (up to nearly 70 percent of their diet from 95 species of fruit) and insects. Favorite fruits include figs and mangos. They prefer fruits that are ripe and test for ripeness by smelling, tasting, and poking each piece of fruit. But they eat only the pulp and juice, and spit out the seeds and fibers. Flowers, young leaves, seeds of certain plants, and bromeliads (flowering plants with generous, overlapping leaves) provide additional sustenance. Bromeliads are also an implemented water source; water that gets trapped inside the leaves provides the monkeys with drinking water. Insect prey includes beetle larvae, butterfly and moth caterpillars, ants, wasps, and ant and wasp larvae. However, white-throated capuchins also feast on larger prey, including birds, frogs, lizards, and squirrels. Bird eggs, crabs, and mollusks are snack items."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Reproduction', false),
                  buildTextSubTitleVariation1("Dominant males have long tenures and mate with multiple females, leading to many half-siblings and to a high degree of inter-relatedness within a troop. As reward for helping dominant males defend the troop against threats, subordinate males are permitted to mate with the daughters of dominant males. Rare among New World primates, dominant males tend to avoid breeding with their own daughters. Females give birth every 27 months, usually to a single infant but occasionally to twins. Most births occur during the dry season from December to April, after a five- to six-month gestation period. Mothers act as the primary caregivers, carrying their babies on their backs for the infants’ first six weeks of life. At age three months, infants are able to move independently. They are considered weaned between 2 and 4 month of age. As with other capuchins, white-throated capuchins mature slowly. Males attain reproductive maturity at 7 to 10 years old. Females are considered reproductively mature at age 4; however they usually give birth for the first time at age 7. Seven years old is the average age when they become independent."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Behavior', false),
                  buildTextSubTitleVariation1("​White-throated/headed capuchins are an arboreal species, meaning that they spend most of their time in trees where they forage at all levels of the forest, walking on all four limbs (quadrupedal locomotion). They are also great leapers and climbers. Their prehensile tail allows them to hang from branches, supporting their body weight while they forage. More than any other New World monkey, white-throated capuchins will descend from trees to forage on the ground. Foraging techniques include searching through leaf debris, stripping bark from trees, breaking dead tree branches to use as tools for rolling over rocks, and using stones to crack open and mash hard fruits. White-throated capuchins sometimes destroy acacia trees as they rip through the branches to get at residing ant colonies. They are a diurnal species; all that foraging is conducted during the daylight hours. At night, they sleep. ​White-throated capuchins are among the most intelligent of New World monkeys. In addition to their ability to fashion tools for foraging, they have been known to use sticks as weapons against snakes. Captive white-throated capuchins have been observed using sticks to drag food closer to them within their enclosures. Playful and inquisitive, white-throated capuchins enjoy taking things apart. This behavior is more frequently observed in captive settings but also occurs in the wild. Additionally, white-throated capuchins appear to have an innate understanding of herbal medicine. Wild white-throated capuchins will rub parts of certain plants into their hair. Scientific conjecture is that this self-care is a deliberate action to ward off ticks and other parasites. It may also provide inflammatory relief or serve as a form of scent marking."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Communication and Perception', false),
                  buildTextSubTitleVariation1("Communication among white-throated capuchins includes a repertoire of loud calls. Barks and coughs are used to warn a troop of impending danger; these vocalizations vary depending on the threat. The monkeys use softer calls in conversation with one another. Facial expressions and scent marking are also used. A practice known as urine marking, in which the monkeys rub urine on their feet, is thought to be a form of olfactory signal."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Group Dynamics ', false),
                  buildTextSubTitleVariation1("Highly social primates, white-throated capuchins live in family groups known as troops. Troops can include 20 to 40 individuals, but the average troop size is 16 members, who include alpha (dominant) males, related females, newcomer (“immigrant”) males, and offspring. Females make up about three-quarters of a troop, likely due to their predisposition to remain with their family. Males typically leave their natal (birth) group at age 4 and thereafter change troops about every 4 years. They sometimes migrate alone, but more often migrate with the company of related males from their birth group. This “safety in numbers” is important as they roam the forest, not only from potential predators, who include the harpy eagle, other raptors, and boa constrictors, but also from attacks by male white-throated capuchins from other troops, who are not receptive to immigrant males and may take violent action against these interlopers. Both male and female white-throated capuchins form alliances within their genders. Coalitionary aggression, when two or more individuals join together in a coalition for the purpose of protecting themselves from or attacking a target, is common to both sexes. Encounters with white-throated capuchins from other troops, whether occurring in overlapping home ranges or while traveling, are often hostile. Disputes are thought to be less about defending territory and more about intense competition between males and preserving the members of a troop, particularly its infants, whom immigrant males often kill in a quest for dominance. Dominant males are the primary aggressors in intergroup encounters and are the protectors of their troop’s infants; they have been known to kill their opponents. ​The dynamics within white-throated capuchin troops include a range of social bonding activities. Grooming (more common between females) and resting against one another for body contact (more common in males) are two examples. A curious example of social bonding is “hand sniffing,” where one monkey sticks his or her fingers in another monkey's nose, and then the other monkey reciprocates. This activity can last for several minutes and invokes a trance-like expression on the monkeys’ faces. White-throated capuchins will also suck on one other's fingers and tails for long periods of time. In another activity, individuals take turns in inserting an object into his or her mouth so another monkey can attempt to pry the object out. Social play is especially important for juveniles, for whom wrestling with one another is not just a fun pastime but an activity that teaches them about social bonds and boundaries. They learn other essential behaviors and skills from observing a troop’s adults. White-throated capuchins’ innate knack for finding food makes them popular with other monkey species, including Geoffroy’s spider monkeys, who sometimes travel with the capuchins in hopes of locating their next meal. The two species even engage in mutual grooming, but aggressive interactions sometimes occur. “Affiliative associations” also include non-primate animal species such as the white-lipped peccary, a wild hog-like animal. Additional opportunists include several bird species."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Ecosystem Roles', false),
                  buildTextSubTitleVariation1("A key species to rainforest ecology, the white-throated capuchin disperses seeds, from the great variety of fruit that it eats, through its feces throughout its habitat. They also help preserve the ecosystem by eating insects that would otherwise destroy trees and by pruning trees so that the trees generate more branches and additional fruit."),



                ],
              ),
            ),

          ],
        ),
      ),

    );
  }



}