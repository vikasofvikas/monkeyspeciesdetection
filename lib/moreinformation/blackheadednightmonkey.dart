import 'package:flutter/material.dart';

import 'package:monkeyidentificationapp/scroll/shared.dart';
import 'package:monkeyidentificationapp/scroll/data.dart';

class blackheadednightmonkey extends StatelessWidget {
  // buildTextSubTitleVariation1(recipe.characterstic3),
  final Recipe recipe;

  blackheadednightmonkey({@required this.recipe});

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

                          image: DecorationImage(image: AssetImage('assets/images/monkeyinfo/blackheadednightmonkeyinfo.png'),

                            fit: BoxFit.cover,

                          ),
                        ),

                        child:
                        Text("")

                    ),
                  ),


                  SizedBox(height:25),
                  buildTextTitleVariation2('Diet', false),
                  buildTextSubTitleVariation1("Black-headed night monkeys are primarily frugivorous, preferring ripened Ficus fruits. They also opportunistically feed on leaves and flowers as well as moths, beetles, and spiders. However, examinations of fecal matter from A. nigriceps have not yielded significant amounts of leaf fiber or insect matter. This is different from A. vociferans which appears to be more folivorous."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Reproduction', false),
                  buildTextSubTitleVariation1("Black-headed night monkeys are serially monogamous; mates can be displaced due to violence on the part of a same sex interloper. Males and females form bonds that last until one or the other is displaced. Fruitful mating does not occur until a mated pair has been together for one year. Males have small testicles which might be indicative of monogamy and low mate competition. There seems to be no signal that a female is receptive to mating and mating activity takes place both during and outside of the estrus period. Mating encounters are short in length lasting for 1 to 9 coital thrusts. The breeding period in the wild is between August and February, though Aotus species in captivity have been observed to breed year round. Neither males or females seem to give reproductive signals and mating activity is independent of female estrus cycles. Reproductive activity in A. nigriceps usually occurs between August and February and the female produces one infant a year. Twins have been observed only rarely, in 1 out of 169 births. Males and females disperse from their natal range as sub-adults between 26 months and 5 years of age, averaging dispersal at 3 years old. The interbirth interval is from 166 to 419 days. The average weight of a newborn is 90 to 150 g. Full weaning occurs at around weeks 18 to 19. Sexual maturity is at 2 years in males and 3 to 4 years in females. Black-headed night monkey males are primary caregivers for their young. Females nurse their young every 3 hours but then drive the infant away by biting their feet or tail. Males take over care of the infant, except for nursing, after 2 weeks old. At about 8 weeks old, around the time of weaning, the males begin to drive their young away as well. Young sometimes usurp the territories of their parents after independence."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Behavior', false),
                  buildTextSubTitleVariation1("Black-headed night monkeys are arboreal quadripeds. They are primarily nocturnal, but have been occasionally observed during daylight hours. Black-headed night monkeys live in small family groups, including their young and sub-adult offspring. Aotus nigriceps individuals are highly territorial and defend their range with vocalizations and sexually specific aggression. Males usually attack other males and females usually attack other females. Confrontations last from 5 to 30 minutes and end when one of the groups leaves. Aggression is also the means of mate displacement. A male or female will enter a territory and fight with the resident female or male. If they are successful they will take over the mate and territory of their rival. Interestingly, successful interloper males will also take over the care of any infants of the previous pair."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Communication and Perception', false),
                  buildTextSubTitleVariation1("Resonant whoops and low-pitched hoots are the most common forms of vocal communication in Aotus. Whoops are usually used in intragroup encounters at the edges of territories and are used with visual displays and scent marking before aggressive interactions. Hoots are usually used in distance communication by unmated males and females and may be involved in mating rituals. Aotus males and females use both urine and skin secretions in scent marking behavior."),

                  SizedBox(height:25),
                  buildTextTitleVariation2('Ecosystem Roles', false),
                  buildTextSubTitleVariation1("Because of their frugivory, black-headed night monkeys are likely to aid in seed dispersal, although little research has been done on their ecosystem roles."),




                ],
              ),
            ),

          ],
        ),
      ),

    );
  }



}