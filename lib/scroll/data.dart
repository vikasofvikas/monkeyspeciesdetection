import 'package:flutter/cupertino.dart';

import 'package:monkeyidentificationapp/moreinformation/balduakari.dart';
import 'package:monkeyidentificationapp/moreinformation/blackheadednightmonkey.dart';
import 'package:monkeyidentificationapp/moreinformation/japanesemacaque.dart';
import 'package:monkeyidentificationapp/moreinformation/mantledhowler.dart';
import 'package:monkeyidentificationapp/moreinformation/nilgirilangur.dart';
import 'package:monkeyidentificationapp/moreinformation/patasmonkey.dart';
import 'package:monkeyidentificationapp/moreinformation/pygmymarmoset.dart';
import 'package:monkeyidentificationapp/moreinformation/silverymarmoset.dart';

import 'package:monkeyidentificationapp/moreinformation/squirrelmonkey.dart';
import 'package:monkeyidentificationapp/moreinformation/whiteheadedcapuchin.dart';

class Recipe {

  String title;
  String description;
  String image;
  double calories;
  double carbo;
  double protein;
String characterstic1;
  String characterstic2;
  String characterstic3;
  String overview;
final Widget widget1;


  Recipe(this.title, this.description, this.image, this.calories, this.carbo, this.protein, this.characterstic1,this.characterstic2,this.characterstic3,this.overview, this.widget1);

}



List<Recipe> getRecipes(){
  return <Recipe>[
    Recipe("Squirel monkey", "Omnivorous", "assets/images/commonsquirrelmonkey.png", 1.5, 14, 15,"Their fur is short, thick, soft, and brightly colored. Skin on lips and around nostrils is black and almost devoid of hair.",
      "Most common coloration is white around eyes, ears, throat, and on sides of neck. Top of head is black to grayish, back forearms, hands, and feet are reddish or yellow with shoulders and hind feet suffused with gray.",
      "Thumb is short but well developed. Underparts whitish to yellowish, tail bicolored with black tip. Tail is not prehensile.",

      "Squirrel monkeys live in Central and South America in the midlevel tangled layers of branches, vines, and trees of tropical forests. Squirrel monkeys use all four limbs to move but will occasionally walk short distances on two limbs. Squirrel monkeys predominantly eat fruits and insects. They rarely reach for insects in motion, but prefer finding insects on leaves. They engage in long periods of visual observing behavior however, they tend to show notably less visual investigative behavior relative to other primates. Male squirrel monkeys are dichromatic, while females can be either dichromatic or trichromatic. The eye movements of squirrel monkeys are in general comparable to macaque monkeys, but they have a much narrower oculomotor range of about 10–15 degrees horizontally . Interestingly, the oculomotor range is larger for the vertical axis this asymmetry contrasts with terrestrial species in which horizontal eye movements are more frequent and of larger average amplitude. Like other monkeys, squirrel monkeys communicate with visual signals and social behaviors, including facial expressions, as well as signaling with their ears.",

      squirrelmonkey(),   ),

    Recipe("Japanese Macaque", "snow monkeys", "assets/images/japanesemacaque.png", 11.3, 22, 24, "Japanese macaques are medium-sized, stocky monkeys with relatively short tails. Sexually dimorphic in size, males are twice as large as females.",

    "Males average about 22 in (57 cm) in length and 25 lb (11.3 kg) in weight. Females average 20.5 inch (52.3 cm) in length and 18.5 lb (8.4 kg) in weight. Their tails are a (relatively) diminutive 2.5-4 inch (7-12 cm) long.",

      "Japanese macaques’ coats range in color from from gray to brown and can be mottled. In the winter, they grow a heavy insulating coat to maintain their body heat. During the summer their coat is lighter. They have human-like naked faces and expressive eyes. They have cheek pouches for food storage. In adulthood, their faces and bottoms become red.",
      "Japanese macaques, also called snow monkeys, are found on three of the four main Japanese islands—Honshu, Shikoku, and Kyushu—and live further north than any other macaque species. They live in a variety of habitats throughout these islands including subalpine, subtropical, deciduous, and evergreen forest mountains. Those that occupy the northernmost regions, which range through the forested mountains and highlands of Japan, thrive in winter temperatures that fall as low as -5 degrees F (-15 degrees C) and with snow cover that is more than 3 ft (1 m) deep. ​Famously, they warm themselves by bathing in hot thermal springs that are heated by nearby volcanoes",
        japanesemacaque()),

    Recipe("Mantled Howler", "Ecuadorian mantled howling monkeys", "assets/images/mantledhowler.png", 15, 23, 17,
      "Fairly stocky monkeys, mantled howlers are covered in black hair, except for two golden patches on their flanks. They are called mantled howlers because of the long golden hairs on their sides. Their tails are prehensile with a naked patch on the underside toward the tip, which is used for grasping onto branches. Their faces are mostly bare with growth that resembles a beard. These beards are typically longer in males than females.",
      "Infants are golden brown to silver in color. They increasingly transition to adult coloration until they reach about 12 weeks old, when they resemble their adult counterparts",
      "Mantled howler monkeys are sexually dimorphic, which means there are differences between males and females in size, behavior, and other characteristics. Males are slightly larger than females and exhibit differences in skeletal structures. Male mantled howler monkeys have a large hyoid bone situated in the anterior midline of the neck between the chin and the thyroid cartilage. The hyoid enables them to produce the loud sounds from which they receive their apt name: howlers. The upper molars of howler monkeys have very sharp shearing crests that are used for grinding leaves.",
      "Mantled howler monkeys, also called Ecuadorian mantled howling monkeys and South Pacific blackish howling monkeys, are found on the southern tip of Mexico and in Veracruz, southern Guatemala, Costa Rica, Panama, the west coast of Ecuador, and Colombia at elevations of up to 6,562 feet (2 km). Mantled howlers lives in lowland rain forests, gallery forests, cloud forests, dry forests, and mangroves, and are found in both primary and secondary forests. They use all levels of the canopy, but prefer the upper canopy region, where there is a mix of vegetation, branches, vines, and trees of varying sizes. Food is plentiful at this level of the rainforest and many animals—including howler monkeys—find shelter from predators, as well as strong winds and rain from tropical storms. Mantled howler monkeys are among the most commonly heard—that is to say loudest—primates in many Central American national parks including Manuel Antonio, Corcovado National Park, Santa Rosa National Park, and the Monteverde Cloud Forest Reserve.",
      mantledhowler(),),

    Recipe("Nilgiri Langur", "hooded leaf monkey", "assets/images/nilgirilangur.png", 25.4, 24,29,

"Adult male Nilgiri langurs are larger than females at a ratio of 1.2 to 1.",
      "With thick black fur and a flaxen, sometimes reddish mane around their black, hairless faces, the Nilgiri langur is a very comely primate. Females, unlike males, have patches of white fur on their thighs.",
      "Both males and females have big, dark eyes, providing a striking contrast to their large, white teeth. They have exceptionally long tails. It takes ten weeks before infants bloom into their adult pelage. Their coloration is similar to the lion-tailed macaque, also endemic to the Western Ghats, to which the Nilgiri langur is often compared.",

      "The Nilgiri langur, also known as the hooded leaf monkey, black leaf monkey, Indian hooded leaf monkey, John's langur, Nilgiri black langur, and the Nilgiri leaf monkey, is a species of Old World monkey endemic to South India. It is found in the Western Ghats, particularly in the Nilgiri Hills from which it derives its name, but also in other hilly areas in that region. They prefer to live between 980 and 6,500 ft (300–2,000 m) above sea level, and typically settle in at around 4,600 ft (1,400 m). Since they are an arboreal species, they seek out habitat with trees, and are known to inhabit secondary moist deciduous forests and evergreen forests. Other considerations include proximity to water and distance from humans. The Nilgiri langur has a contested taxonomical classification: some believe, based on such qualities as its coloration and cranial morphology, that this species is closely related to the purple-faced langurs of the group Trachypithecus. Contrarily, DNA testing reveals the Nilgiri langur to have a more likely relation to the gray langur, which would place them within the genus Semnopithecus. Some even argue the species warrants its own genus, Kasi. Resultantly, in scientific literature, you might find this species referred to as any of the following: Trachypithecus johnii, Semnopithecus johnii, Presbytis johnii, and Kasi johnii.",

        nilgirilangur(),),

    Recipe("Patas Monkey", "Hussar monkeys", "assets/images/patasmonkey.png", 22.5, 30, 22,

    "The most distinguishing features of this primate are adaptations that have evolved for life on the savanna. Patas have smaller digits on their hands, flat palms, long legs, a slim body, and a pronounced chest. Indeed, as they lope quickly through the brush, their movement more resembles a greyhound than a monkey. When running to escape predators, they are able to achieve speeds up to 34.2 miles (55 km) per hour.",
      "Males are a bit brighter in color than females, with a thick red-brown coat and a whiter pelage on their legs and ventrum. The crown of their head is a darker hue of red, almost brown in color. Their forward looking, close-set eyes resemble their human primate cousins. They have larger canines, proportional to their size, than any other primate. Adults of the eastern species have white noses, while in the west, their nose color may be more toward brown or black. In adults, black fur runs alongside their face up to the ear, accentuating their facial features. Both males and females sport a white mustache, however the male’s facial hair is longer and thicker. Babies are born with pinkish faces and a pale brown coat that darkens as they age.",
      "Another characteristic unique to males is their blue scrotum and the hair on their shoulders, which is similar to a mane. Both males and females have large cushioned rumps for sitting comfortably.",
      "Patas monkeys, also known as hussar monkeys, wadi monkeys, nisnas, and singe rouge, are Old World monkeys that span across West, Central, and parts of East Africa. Their adaptability enables them to thrive in a wide range of environmental conditions. From the edge of the Sahara Desert—in a dry, arid climate—southward to the more tropical areas of equatorial Africa, the patas monkey thrives, typically in more open areas rather than heavily wooded areas. The densest population of patas monkeys is found in West Africa. Patas populations are also found in Senegal, Ethiopia, Mali, Chad, Niger, Kenya, Tanzania, Central African Republic, Congo, and Cameroon. The open savanna and grass steppes with tall grasses provide protection from predators. Open woodlands and river deltas are also home to the patas. Additionally, patas monkeys have been observed moving into land that has been cleared for agriculture as well.",

patasmonkey(),



    ),


  /*




    Recipe("Patas Monkey", "Bacon-Wrapped Filet Mignon", "assets/images/patasmonkey.png", 250, 55, 20),*/
  ];
}
















class Recipe2 {

  String title;
  String description;
  String image;
  double calories;
  double carbo;
  double protein;
  String characterstic1;
  String characterstic2;
  String characterstic3;
  String overview;
  final Widget widget1;
  Recipe2(this.title, this.description, this.image, this.calories, this.carbo, this.protein, this.characterstic1,this.characterstic2,this.characterstic3,this.overview, this.widget1);

}

List<Recipe2> getRecipes2(){
  return <Recipe2>[
    Recipe2("Pygmy Marmoset", "smallest monkey", "assets/images/pygmymarmoset.png", 0.25, 5, 15,
"These monkeys are so small, they can fit into a human hand and weigh as much as a deck of cards or a baseball. Their tails are longer than their bodies, measuring 6.8 to 9 in (17-23 cm), and are used to help these tiny creatures maintain their balance as they climb and jump between trees and these monkeys have flexible necks and can rotate their head 180 degrees to avoid predators. ",
    "Pygmy marmosets have black, sharp claws – rather than flat nails like most primates – to help them climb and grip trees; in addition, pygmy marmosets are unique because they do not have opposable thumbs like many other primate species. Gold-brown fur with white and black flecks cover their heads in a soft, thick mane",
      "The underparts of the pygmy marmoset are covered in tawny and orange fur. The mane grows around the pygmy marmoset's round, brown eyes and mouth and covers the ears. They have a small white stripe between their eyes, and some white fur above the corners of their mouths, giving them a rather appealing appearance. Their body has black and brown stripes, called agouti coloring, for camouflage as they stay still to feed on tree sap. Their tails have black or brown rings. Infants are born with grey heads and a yellow coat, and as they grow they develop the same markings as adult pygmy marmosets.",
      "The small but fierce western pygmy marmoset is a New World monkey and native to the western Amazon Basin. The western Amazon Basin covers the northwestern region of Brazil, southern Colombia, eastern Peru and Ecuador, and northern Bolivia. These arboreal monkeys can usually be found where the vegetation is dense, near rivers or floodplains, jumping through the understory up to 66 ft (20 m) from ground level or clinging to tree trunks to feed on sap and gum. However, due to their small size, pygmy marmosets can be easy prey for eagles, hawks, wild cats, and snakes, so they prefer to stay in the understory of evergreen forests and avoid the top of the canopy and forest floor.",


pygmymarmoset()),


    Recipe2("Black Headed Night Monkey", "Aotus nigriceps", "assets/images/blackheadednightmonkey.png", 1.65, 30, 17,


    "Black-headed night monkeys are small primates approximately the same size as a small squirrel. While there are few data concerning the mass of A. nigriceps specifically, Aotus species, both male and female, average 750 g as adults, reaching this size by 14 months of age.",
      "Their coats are short and thick. Adult A. nigriceps have dark grey-black agouti pelage on the upper back and forelimbs and orange-tan pelage on the lower back, outer rear legs, and onto the tail. They have three conspicuous black stripes that nearly converge on the forehead. Two of these stripes follow the sides of the face to the maxilla, the central stripe extends to the bridge of the nose. They have white patches over each eye, on the cheeks, and under the mouth.",
      "They also have bright orange pelage on the sides of the neck and onto the ventrum, extending from the lower neck, chest and stomach onto the arms, legs and ventral tail. Infants and sub-adults have the same basic coloration. Aotus species have disproportionally large, brown eyes, consistent with their nocturnal habits. They lack a tapetem lucidem. Night monkeys have small external ears that are hidden by their fur. Their digits are long and thin, with straight nails and wide fingertip pads.The second digit of each foot has a curved nail which may be used for grooming.",
      "Aotus nigriceps (black-headed night monkey) is native to neotropical South America. Black-headed night monkeys are found in an area roughly within the boundaries of 5 to 15° south latitude and 75 to 55° west longitude. This area includes the Amazonian and Madeiran forests in Peru, Brazil, and Columbia and several forest areas found in the Huallaga, Ucayali, Yavari, Purus, and Madre de Dios river basins. It encompasses those areas south of the Amazon River to the Madeira River Basin and the northwestern part of the Tapajoz River Basin. Black-headed night monkeys are a species of red-necked or southern night monkeys. Black-headed night monkeys are usually found in lowland and hillside tropical forest areas. They are usually found in the higher canopy levels of the forest. They choose exclusive sleeping sites in the crooks of branches, especially in trees in the genus Miconia. These trees have large leaves and relatively thick canopy cover. Aotus species generally do not modify their sleeping environments.",

      blackheadednightmonkey()),


    Recipe2("White Headed Capuchin", "White-throated capuchins", "assets/images/whiteheadedcapuchin.png", 8.6, 15.4, 30,
      "White to pale yellow hair frames an expressive light tan-colored or pinkish face that is mostly bare of fur, suggesting the visage of a pensive old man. ",
      "Shoulders and upper arms of white-throated capuchins are draped in their white or pale yellow coats, contrasting the remainder of their bodies which are cloaked in black hair. A black fur cap sits atop the crown of this monkey’s head.",
      "The white-throated capuchin might be the most widely known monkey. Although they may not know the species’ name, most people readily recognize this monkey as the organ grinder’s sidekick. Perched atop this street musician’s shoulder, the monkey assistant cajoles passersby with its antics for monetary donations.",
      "White-throated capuchins, also known as Colombian white-throated capuchins, white-faced capuchins, and white-headed capuchins, are New World monkeys native to the rainforests of western Colombia, western Ecuador, and Panama. White-throated capuchins are commonly seen throughout Panama’s national parks. In South America, the species is found in the extreme northwestern strip between the Pacific Ocean and the Andes Mountains in Colombia and northwestern Ecuador. Adaptable to a variety of forest habitats, white-throated capuchins live in mature (primary) and secondary forests that include evergreen, deciduous, mangrove, and montane. They prefer primary forests, however, with a lot of old growth or advanced secondary forests.",

whiteheadedcapuchin(),),


    Recipe2("Silvery Marmoset", "Mico Argentatus", "assets/images/silverymarmoset.png", 0.8, 8.5, 16,

    "The silvery marmoset’s body is a striking silver-gray color. In contrast, the tail is dark brown.",
      "They have bare faces and bare ears, a trait they share with several other marmoset species. ",
      "Their hands—which look strikingly similar to human hands—end in sharp claws, which they use to gouge tree bark to access and consume the sticky sap inside.",
      "The silvery marmoset is found in the Brazil's eastern Amazon Rainforest. They typically live in primary and secondary growth lowland tropical forests; however, due to increasing habitat loss and fragmentation, this species is also found in anthropogenic habitats such as disturbed and fragmented forests.",

silverymarmoset()),
    Recipe2("Bald Uakari", "cacajao calvus", "assets/images/balduakari.png", 5.2, 18.5, 30,

    "The bald uakari is most easily recognized by its red face and bald head, from which it derives its name. Some people compare them to old men and babies, because of their baldness; there is no denying this species is uniquely handsome. The striking crimson color is caused by blood-flow beneath the skin, specifically a thinner epidermis coupled with a higher concentration of capillaries in the face.",
      "The redness of a female’s face is correlated with her estrogen levels; the redness of a male’s face is indirectly related to his testosterone levels, according to a recent study. A redder face indicates a healthier monkey, since their faces, like ours, grow pale when they’re ill—particularly with malaria, which is rampant in their habitat.",
      "Another distinction that sets the bald uakari apart is its conspicuously short tail, which is only around 6 in (52 cm) long. The bald uakari does not use its tail to travel through the trees; it relies on its arms and legs, as well as its long, furry fingers and toes. Their fur coats are long and cover the whole of their bodies, ranging in color from blonde to orange to brown to red. There are four recognized subspecies of bald uakari, distinguished by their variations in their coats.",
      "The bald uakari, or bald-headed uakari, is native to the Western Amazon—residing in the countries of Peru and Brazil, and possibly Colombia. Their rainforest habitat is in the Amazon River Basin, which often floods. Specifically, the bald uakari lives in várzea forests, seasonal floodplain forests that are inundated by whitewater rivers in the Amazon biome. Flooding occurs most often in the rainy season. To avoid the high water, these comely New World monkeys live in the trees alongside small tributaries or lakes.",

      balduakari(),),



  ];
}
