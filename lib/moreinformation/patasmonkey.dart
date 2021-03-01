import 'package:flutter/material.dart';

import 'package:monkeyidentificationapp/scroll/shared.dart';
import 'package:monkeyidentificationapp/scroll/data.dart';

class patasmonkey extends StatelessWidget {
  // buildTextSubTitleVariation1(recipe.characterstic3),
  final Recipe recipe;

  patasmonkey({@required this.recipe});

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

                          image: DecorationImage(image: AssetImage('assets/images/monkeyinfo/patasmonkeyinfo.png'),

                            fit: BoxFit.cover,

                          ),
                        ),

                        child:
                        Text("")

                    ),
                  ),


                  SizedBox(height:25),
                  buildTextTitleVariation2('Diet', false),
                  buildTextSubTitleVariation1("Patas monkeys are omnivores. Their primary diet relies on all parts of the acadia tree (gum, flowers, seeds, pods, and young leaves) and arthropods. They also eat various berries, fruits, and bird eggs. The rainy and dry seasons have a large effect on their diet. They have been observed stealing baby birds from nests, eating fish removed from drying streams, and spending a large amount of time foraging for insects. With an increase in agriculture in their native habitat, patas are raiding crops as a new and easily obtained source of food. They have been known to steal pineapples, millet, wheat, bananas, peanuts, and dates and eat the flowers from cotton plants."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Behavior and Lifestyle', false),
                  buildTextSubTitleVariation1("The range of the patas monkey covers a large area of approximately 12.35 square miles (3,200 hectares). ​They are diurnal and spend the day grooming, interacting socially, and foraging for food, interspersed with a rest period in the afternoon. At night, the group spreads out in the trees as protection from predators, of which there are many! Hyenas, raptors, cheetahs, jaguars, tigers, and humans all prey upon the patas monkey. When water is scarce, groups may gather together around a watering hole. One observer noted 200 patas monkeys around a watering hole during a particularly dry season. ​Patas monkeys are generally quadrupedal, but will stand bipedally to check for danger. They may walk on their hind legs when using both hands to clasp objects. As patas stand to scan their environment, they also “keep tabs” on their group. This assures that no antagonism is in the making and group cohesion reigns."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Daily Life and Group Dynamics ', false),
                  buildTextSubTitleVariation1("Patas monkeys live in groups of 9-40 members. The group is primarily a female hierarchy that is not as structured and unchanging as that of other Cercopithecidae. Grooming among females shows their relationship status and social standing. Favored members are groomed and fussed over. Females will also allomother the infants of their group. The dominant male does not get involved in these domestic affairs, aside from loud verbal warnings when danger approaches. His role is to maintain a position up in a tree or on a high rock to keep a look-out, though he will be groomed by the high-ranking females of his harem. Young males leave the group at the age of puberty (approximately age 3) to live with other bachelors. These male groups provide protection for young males. During mating season, they will mate with females from many groups. It has been observed that clandestine trysts, set up by females, will occur with males from outside her family group. When water is scarce and groups gather around a watering hole, friction sometimes occurs between groups. Aggressive behavior will be exhibited by the dominant male and females alike. Bared canines and domineering stances warn other groups to steer clear."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Communication', false),
                  buildTextSubTitleVariation1("Since patas monkeys live in an open habitat, they rely on visual contact. To keep predators from knowing their presence, they have developed physical cues (rather than vocal) to communicate with one another. They exhibit many warning or alarm calls. Male patas monkeys use certain alarm calls specific to each predator so the group knows which predator is in the vicinity. When raptors or snakes are seen, the male will call a “gecker” or “chudder” sound. If baboons, jackals, dogs, or large cats are in the area, he will shout a loud “chudder” or an even more piercing “nyow.” Sometimes jackals and wildcats will illicit a quieter “cough” alarm. Infant patas monkeys let their needs be known with a “want” call. In response, the allomothers approach the baby with a “moo” to provide comfort. Olfactory communication has also been observed. One patas monkey will place her nose near another’s mouth and seem to sniff. Scientists believe the purpose of this behavior is to determine what food was eaten."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Reproduction and Family', false),
                  buildTextSubTitleVariation1("The patas family group is a “harem” polygyny or one in which a male mates with many females. However, males from outside the group may join in to mate during breeding season. Mating season is during the “winter months” and, depending on geographic location, may be from June to December or October to January. Males mate at approximately 4 years of age. Females are ready to mate at approximately 3 years of age. Females initiate the sexual exchange. There is no outward sign she is in estrus, so the males will wait until they are approached. The female stands on all fours with her rear toward the male, and looks over her shoulder as an invitation to mate. The gestation period is about 170 days and the baby nurses for 3-5 months, being fully weaned by one year of age. Generally, females have only one infant per year."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('​Ecological Role', false),
                  buildTextSubTitleVariation1("The varied diet of patas monkeys makes their presence on the savannah, steppes, and sparse woodlands of Sub Saharan Africa of utmost importance in repopulating the ecosystem. Patas monkeys eat the seeds of fruit and particularly acacia trees, which are then dispersed as they roam their large range areas. Acacia trees are a food source for many other species and, for this reason, patas monkeys play an integral role in maintaining a healthy ecosystem."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Conservation Status and Threats', false),
                  buildTextSubTitleVariation1("​The International Union for Conservation of Nature Red List of Threatened Species classifies the patas monkey as Near Threatened (IUCN, 2020). They are threatened by habitat degradation, fragmentation and loss due primarily to agricultural expansion and intensification (both crops and livestock), charcoal production and ’development’ activities (e.g., settlements, roads, powerlines, dams, wind farms). They are hunted for food in Central Africa and West Africa, and are widely persecuted as a crop pests. They are on the verge of extinction in Kenya. Agriculture has changed from more natural, small farms, to larger full-scale plantations. Patas monkeys do not need dense woodlands, but they do need tall trees for protection, particularly at night. With the destruction of wooded areas, patas monkeys will not thrive. The introduction of agriculture and the resultant “free food” that patas monkeys find there has caused conflict with human primates. Farmers often retaliate against the raiding patas by killing what they consider to be “pests.” Patas monkeys are  hunted for bushmeat over all parts of its geographic distribution but, particularly, in Central and West Africa. In addition, they are captured for use as research animals. There is a need to clarify how many research animals are captive bred and how many are wild caught."),




                ],
              ),
            ),

          ],
        ),
      ),

    );
  }



}