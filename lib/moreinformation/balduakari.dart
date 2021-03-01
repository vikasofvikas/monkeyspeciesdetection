import 'package:flutter/material.dart';

import 'package:monkeyidentificationapp/scroll/shared.dart';
import 'package:monkeyidentificationapp/scroll/data.dart';

class balduakari extends StatelessWidget {
  // buildTextSubTitleVariation1(recipe.characterstic3),
  final Recipe recipe;

  balduakari({@required this.recipe});

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

                          image: DecorationImage(image: AssetImage('assets/images/monkeyinfo/balduakariinfo.png'),

                            fit: BoxFit.cover,

                          ),
                        ),

                        child:
                        Text("")

                    ),
                  ),


                  SizedBox(height:25),
                  buildTextTitleVariation2('Diet', false),
                  buildTextSubTitleVariation1("The bald uakari is an herbivore. The mainstay of its diet is fruit, which they find by foraging. Their foraging habits sometimes lead them to eat leaves, seeds, or roots—whatever is readily available, even insects, such as caterpillars. The diet of the bald uakari varies with the seasons and is dependent on flooding. When water levels are high and the uakari keep to the trees, they rely on fruit for nourishment. During the dry season, they leave the trees to search for food on the ground, particularly seeds. Their strong jaws allow them to eat tough foods that other animals would be unable to open—like unripe fruit or Brazil nuts."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Reproduction', false),
                  buildTextSubTitleVariation1("Bald uakaris are most commonly monogamous. Females reach sexual maturity at the age of 3, earlier than males, who reach sexual maturity after 6 years. The average gestation period for a bald uakari is 182 days. The babies are nursed for as long as five months, and are provided for and protected by their mothers."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Behavior', false),
                  buildTextSubTitleVariation1("Bald uakari are diurnal primates, which means they are active during the day. They are also arboreal primates, meaning they live in the treetops of the Amazon rainforest. They only come down from the trees during the dry season, when flooding ceases and there is food be found on the forest floor. They are foragers, not hunters, and are known to be territorial. A troop of uakari has a home territory of around 2 sq mi (500 ha). They are predominantly quadrupeds, but are also capable of walking and jumping on two legs, covering distances of up to 3 mi (5 km) in a day."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Communication and Perception', false),
                  buildTextSubTitleVariation1("These monkeys mainly communicate acoustically, though on the whole they are pretty quiet. They will use shrieks as a method to defend their territory. Their hairless faces also allow them to be expressive and communicate emotions through their facial expressions.​ Additionally, these monkeys wag their short tails to communicate. Their hair can also stand, which can be used to indicate territorial defensiveness. For mating, females release scents to attract males."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Ecosystem Roles', false),
                  buildTextSubTitleVariation1("The bald uakari is an herbivore, but relies so heavily on fruit for food that some might classify the species more specifically as a frugivore. Because they so often eat both ripe fruit and the seeds of fruit, the bald uakari plays an important role in seed dispersal, as do most frugivores. Monkeys are exceptionally important because they can transport seeds a greater distance than smaller animals."),



                ],
              ),
            ),

          ],
        ),
      ),

    );
  }



}