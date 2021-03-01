import 'package:flutter/material.dart';
import 'package:monkeyidentificationapp/scroll/constants.dart';
import 'package:monkeyidentificationapp/scroll/shared.dart';
import 'package:monkeyidentificationapp/scroll/data.dart';

class japanesemacaque extends StatelessWidget {
 // buildTextSubTitleVariation1(recipe.characterstic3),
  final Recipe recipe;

  japanesemacaque({@required this.recipe});

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

                          image: DecorationImage(image: AssetImage('assets/images/monkeyinfo/japanesemacaqueinfo.png'),

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
                  buildTextSubTitleVariation1("Opportunistic omnivores, Japanese macaques eat fruit, seeds, young leaves, flowers, tree bark, fungi, bird eggs, insects, and invertebrates such as snail, crabs and crayfish. Over 213 species of plants are included in their diet. The variety is mostly due to seasonal changes and the resulting abundance or lack of food, as well as their diverse habitat range. They prefer to forage on the ground."),


                  SizedBox(height:25),

                  buildTextTitleVariation2('Behavior and Lifestyle', false),
                  buildTextSubTitleVariation1("More commonly called snow monkeys, you may be familiar with images of Japanese macaques bathing in hot thermal pools to keep warm during icy winters in the mountains of Japan. Interestingly, bathing in hot springs is a learned behavior. In the 1950s, anthropologists believed that humans were the only animals that pass on learned behaviors from individual to individual and across generations, a process called “cultural transmission.” Because it is fairly easy to observe Japanese macaques living in troops in their natural environment, researchers determined that studying their behavior would provide accurate insight into whether they, too, engage in cultural transmission. Similar studies had been done with captive primates, but captive animals do not engage in natural behaviors. ​Provisioning Japanese macaques with food has led to special developments and fascinating observations of their culture. One famous example of this is potato washing in a troop in Koshima, Japan. When researchers provisioned a troop by putting sweet potatoes along the beach to bring them out into the open, one older female named Imo began to wash the sand off of her sweet potato in water instead of brushing it off with her hand. Over time, this behavior spread to other members of the troop and was passed along from generation to generation. Potato washing became even more modified as they began washing their sweet potatoes in salt water rather than fresh to enhance the flavor. Japanese macaques spend time both arboreally (in trees) and terrestrially (on the ground), with females spending more time in the trees and males spending more time on the ground. They are diurnal, meaning they are most active during the day time. They are very capable climbers and sleep in trees, either individually or snuggling together to keep warm. They do not make nests and they change sleep sites daily."),


                  SizedBox(height:25),

                  buildTextTitleVariation2('Daily Life and Group Dynamics ', false),
                  buildTextSubTitleVariation1("Japanese macaques form matrilineal troops that usually range from 20 to 30 individuals, but can sometimes be as large as over 100. A major constraint on troop size is food availability. The troop is ruled by an alpha female and an alpha male. Females typically outnumber males in the troop 3 to 1 and are ranked by a hierarchy that is inherited and passed from mother to infant. The alpha male is responsible for fathering the offspring of the group as well as providing protection and leading the movement of the group. Males disperse from their troop around the time they reach sexual maturity and transfer among troops throughout their lives. Males emigrate to a new troop every 2-4 years, usually during mating season. There is a strong social hierarchy in groups of Japanese macaques, with many benefits to the higher-ranking members, such as first access to food. Within the social hierarchy, daughter’s inherit their mother’s social rank and younger siblings generally outrank their older siblings. Japanese macaques have been known to demonstrate altruistic behavior, particularly between mothers and daughters. Some of these behaviors include protection, support, food sharing, and alarm calling. Co-feeding, when a dominant individual gives food access to a subordinate individual, has also been observed. Females usually remain in their natal troop for life. Young macaques spend a lot of time playing. They make snowballs and roll them along the ground to make them larger. This activity has no survival purpose. Entire troops of Japanese macaques engage in the activity simply because it is fun. ​They have been observed playing with rocks for recreation. This was noted when populations were more dependent on humans for food. The theory is that with less time spent foraging for food there is more time for other recreational activities. When humans stopped feeding them and food once again became scarce, the macaques no longer took an interest in playing with rocks."),


                  SizedBox(height:25),

                  buildTextTitleVariation2('Communication', false),
                  buildTextSubTitleVariation1("Communication in all macaques is varied and complex. They usually use some combination of visual signals, vocalizations, and physical contact. Their bare faces, mobile lips, dramatic eyes, and body posture are used to successfully convey information about their moods and environment. Since Japanese macaques are very social animals, they use many different vocalizations to communicate. There have been six documented categories of vocalizations, including peaceful, defensive, aggressive, and warning calls. The other two vocalizations are specific to females in estrus and infants. More than fifty percent of Japanese macaque vocalizations are of the peaceful variety. These various vocalizations are used to signal the group to an individual’s mood. ​There are two vocalizations associated with grooming: the first is when they approach an individual for grooming and the second is when they attempt to groom another individual. Females solicit grooming more than males. ​Research has found specific “accents” in vocalizations that are used by different troops. Japanese macaques have a variety of body postures and facial expressions that express their emotions. Display behaviors with different postures include kicking, shaking, and leaping. These display behaviors increase in males during mating season. Captive Japanese macaques have been observed making facial expressions not known to occur in wild individuals. These expressions include ear-flattening, teeth display, eyebrow raise, and erecting the ears. Subordinate​ individuals in captivity have been observed grimacing, lip-smacking, playing with their hind-quarters, and practicing gaze-avoidance."),


                  SizedBox(height:25),

                  buildTextTitleVariation2('Reproduction and Family', false),
                  buildTextSubTitleVariation1("Female Japanese macaques reach sexual maturity around 3.5 years of age. The males reach sexual maturity around 4.5 years of age. Males as young as 1.5 have been observed mounting females, but do not successfully mate until they are older. Breeding season is typically from March to September. ​There are strong social bonds between the members of a troop, especially among females. Females select their mate according to the rank of the male and how long he has been in the troop. She avoids choosing males whom she has mated with in the past 4-5 years. Therefore, the longer a male is in a troop, the fewer mating opportunities he has. For this reason, males often change troops. This mating strategy not only increases genetic diversity, but can also lessen the chances of inbreeding by offspring. Courtship is a very important part of the breeding process for Japanese macaques. Potential mates spend approximately 1.6 days together during which time they feed, nest, and travel together. Females have been known to stay with high-ranking males for a longer period of time during courtship. High-ranking males may disrupt courtship between a potential mate and a lower-ranking male. If courtship is successful, a mating pair will copulate either arboreally or terrestrially. Females have two vocalizations associated with mating. The first, which sounds like a squeak, is heard before copulation. The second vocalization, which resembles a cackle, is made after copulation is complete. Japanese macaques are polygamous, meaning the males and females will copulate with available individuals and have multiple partners during a single breeding season. ​If pregnancy occurs, gestation is an average of 171.7 days. However, gestation can range anywhere from 157 to 188.5 days, depending on the individual and group region. When the female is ready to give birth, she leaves the group to find a safe and private place to have her offspring. Females generally have one infant per breeding season. Twins can sometimes occur, but usually only happen once out of every 488 births. Weaning of an infant usually occurs from 6 to 8 months. However, under rare circumstances, mother’s may nurse their offspring for up to 2.5 years if no other interfering births occur."),


                  SizedBox(height:25),

                  buildTextTitleVariation2('Ecological Role', false),
                  buildTextSubTitleVariation1("The primary ecological role of Japanese macaques is to disperse seeds. Through their rich plant-based diet, many plant seeds pass through the Japanese macaque’s gastrointestinal tract and are deposited in the environment, where they are able to spread and grow. Japanese macaques also have a commensalism relationship with the sika deer, as the deer eats leaves the Japanese macaque knocks to the ground when foraging in the treetops. "),





                  //    buildTextSubTitleVariation1("STEP 2"),
                  //  buildTextSubTitleVariation1(""),

                  //   buildTextSubTitleVariation1("STEP 3"),
                  // buildTextSubTitleVariation1("Add the spices with the tomato purée, cook for a further 2 mins until fragrant, then add the stock and marinated chicken. Cook for 15 mins, then add any remaining marinade left in the bowl. Simmer for 5 mins, then sprinkle with the toasted almonds. Serve with rice, naan bread, chutney, coriander and lime wedges, if you like."),

                ],
              ),
            ),

          ],
        ),
      ),

    );
  }



}