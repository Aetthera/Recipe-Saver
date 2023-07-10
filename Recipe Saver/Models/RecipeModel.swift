//
//  RecipeModel.swift
//  Recipe Saver
//
//  Created by Alena Belova  on 2023-07-09.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salade = "Salad"
    case apertizer = "Apertizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
}

struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let direction: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
    Recipe(
        name: "Chorizo Breakfast Taco",
        image:"https://www.bengingi.com/_next/image?url=https%3A%2F%2Fres.cloudinary.com%2Fdd27yihoo%2Fimage%2Fupload%2Fv1682943920%2Fzeb1n29iemdbu8rbc0yf.webp&w=828&q=75",
        description: "Homemade flour tortillas, fluffy scrambled eggs, hearty black beans, creamy avocado, tangy pickled onions, spicy hot habanero sauce, fresh cilantro, and of course, the star of the show - crispy chorizo.",
        ingredients: "4 flour tortillas \n1 can of black beans \n1 tsp Tajin \n½ Juice from a lime \n4 pasture raised eggs \n2 chorizos \n 1 avocado \n1 red onion \n2 tbsp maple syrup \n1 teaspoon salt \n150 gr warm water \n150 gr vinegar \nCilantro \nHabanero hot sauce",
        direction: "Start by pickling your red onion- slice the red onion as thin as possible. \nIn a small container combine maple syrup, salt, warm water and vinegar. Mix well and add the red onions in. Keep aside until you ready to plate (can be done in advance). \nSlice the avocado as thin as you like. You can squeeze a lime on the avocado to avoid it from browning. \nWhisk the eggs into a fluffy mix. \nIn a pan- add the black beans, Tajin and a squeeze of lime juice. Cook on medium heat and smash to create a rough paste. \nCook the paste for about 5 min until the paste thickens. \nRemove the case from the chorizo. \nIn a pan, add the chorizo, crumble it, and cook until crispy. \nRemove from the pan and add the eggs so they cook in the chorizo fat. \nCook the eggs to a soft scrambled eggs. \nWarm up your flour tortillas and let's plate! \nAdd a tbsp of the black bean paste, add a bit of scrambled eggs, a few slices of avocado, chorizo, pickled onions, hot sauce to your liking and cilantro on top. YASSS!",
        category: "Apertizer",
        datePublished: "Jul 9th, 2023",
        url: "Made by BENGINGI https://www.bengingi.com/recipes/chorizo-breakfast-taco"
        ),
    Recipe(
        name: "Conchas (Pan Dulce)",
        image:"https://www.bengingi.com/_next/image?url=https%3A%2F%2Fres.cloudinary.com%2Fdd27yihoo%2Fimage%2Fupload%2Fv1683116638%2Fyoxgj8yq3htplpi8wqqd.webp&w=828&q=75",
        description: "Are you tired of overly sweet baked goods? Do you crave something with a more balanced flavor? Look no further than my Conchas recipe! Unlike some traditional recipes, my version is not overly sugary, making it the perfect choice for those who prefer a more subtle sweetness. But don't worry, these buns still pack a flavorful punch!",
        ingredients: "For the buns: \n580 gr AP flour \n150 gr milk, room temperature \n115 gr butter, melted \n100 gr sugar \n10 gr dry yeast \n10 gr salt \n5 gr vanilla paste \n3 pasture raised eggs \nFor the topping: \n120 gr butter, soften \n120 gr powdered sugar \n120 gr AP flour \n5 gr cinnamon (for the brown conchas) \n5 gr fresh ground espresso (for the brown conchas)",
        direction: "In a stand mixer's bowl combine milk, yeast, sugar, eggs, vanilla paste, flour, butter and salt. \nSet the mixer on the lowest speed and knead for 12-14 min. \nRound the dough into a tight ball, and let it rest, covered with a towel, until doubled in size. Pay attention, it might take a couple of hours to double in size as the dough contains lots of butter which is harder for the dough to proof. \nPrepare the topping- combine butter, flour, and powdered sugar in a bowl until smooth. \nIn order to get more than one color topping, divide the topping dough and dye that part. I divided the topping dough into two parts, one I left white (plain) and to one I added the cinnamon and espresso powder. \nDivide the topping dough into 30-35 gr pieces. Set aside. \nAfter the dough has doubled in size, divide into 90-100 gr pieces. \nRound each piece into a tight ball and arrange them 2 inches one from another on a baking tray with a parchment paper. \nUsing your hands, flatten the topping balls to a thin disc (it's ok if it's not perfect), and coat each bun with a disc. \nUsing a sharp knife score the topping on top of the bun to your desire design. \nLet the buns proof until the topping separate completely where you scored it. \nIn the meantime preheat your oven to 350F or 175C. \nBake the Conchas for 18-22 min, or until they are golden in the bottom. The top should still be relatively light in color. \nEat while still warm, they are amazing! YASSS!",
        category: "Dessert",
        datePublished: "Jul 9th, 2023",
        url: "Made by BENGINGI https://www.bengingi.com/recipes/conchas-(pan-dulce)"
        ),
    Recipe(
        name: "Pampushky (Ukrainian Garlic Buns)",
        image: "https://www.patee.ru/r/x6/15/5a/9f/960m.jpg",
        description: "One of the best garlic buns I’ve ever had in my life! They are fluffy, soft and super garlicky. Ukraine is known as the “breadbasket” of Europe, and both garlic and bread are staples of the cuisine. These rolls are traditionally served alongside Borscht and the garlic’s sharpness compliments the sweetness of borscht’s beets.",
        ingredients: "For the Pampushky: \n500 gr flour \n240 ml milk \n60 ml sunflower oil \n50 gr sugar \n13 gr dry yeast \n13 gr salt \n1 free range egg \nEgg+ a sip of milk (egg wash) \nFor brushing: \n2 cloves of garlic \n½ bunch a of dill \nSunflower oil \nAtlantic sea salt",
        direction: "In a stand mixer- add the milk, yeast, sugar, egg, flour, oil and salt. \nSet the mixer on the lowest speed and knead for 12 min. \nRound the dough into a tight ball, place in a bowl and cover with a towel/plastic wrap. Set aside until doubled in size (about 1-1.5h). \nIn the meantime- prepare the brushing mix. Chop the dill and the garlic as thin as you can. \nIn a bowl, add dill, garlic, oil and salt. Mix well until combined. \nPreheat your oven to 350F or 180C. \nAfter the buns have been proofed, divide the dough into 100-120 gr pieces. \nRound each piece into a tight ball and place the balls in a cast iron pan right next to each other leaving a tiny space between one to another. \nLet the buns proof until almost doubled in size (about 20-30 min). \nAfter the buns have been proofed, brush them with an egg wash. \nBake the buns for 20-25 min or until the internal temperature reaches 190F or 90C. \nImmediately brush the buns with the dill-garlic mix. \nEnjoy with a good bowl of borscht. YASSS!",
        category: "Side",
        datePublished: "Jul 9th, 2023",
        url: "Made by BENGINGI https://www.bengingi.com/recipes/pampushky-(ukrainian-garlic-buns)"
        ),
    Recipe(
        name: "Apricot Cherry Salad",
        image:"https://www.bengingi.com/_next/image?url=https%3A%2F%2Fres.cloudinary.com%2Fdd27yihoo%2Fimage%2Fupload%2Fv1686596036%2Fs5tsgkajjnpd1cwi7tiz.webp&w=828&q=75",
        description: "When BBQing in the summer with loved ones, amidst the chatter about the meat everyone plans to grill, let's take a moment to appreciate the fantastic salad you'll be serving. It's a salad with a twist—I discovered it from Zikki.",
        ingredients: "For the salad: \n10 cherries \n3 apricots \n1 head of romaine \n1 avocado \nA of pistachios \n½ bunch of mint \nYogurt stone/ricotta salata \nFor the dressing: \n3 tbsp extra virgin olive oil \n2 tbsp red wine vinegar \n1 tbsp mustard \nSalt \nBlack pepper",
        direction: "Start by roasting pistachios in a pan over medium heat for 5 min, mixing constantly. Set aside. \nMake the dressing by adding all the ingredients to a jar, close the lid and shake until thick (add olive oil to thicken, vinegar to dilute). \nCut the romaine lettuce by hands into big pieces and toss with the dressing in a bowl. \nCut open the avocado and cut into rough chunks. \nPit the cherries and the apricots and cut in half. \nSeparate the mint from its stems. \nPlate the salad- add the dressed romaine and decorate with the apricots, cherries, avocado, pistachios and grate some yogurt stone/ ricotta on top. YASSS!",
        category: "Salad",
        datePublished: "Jul 9th, 2023",
        url: "Made by BENGINGI https://www.bengingi.com/recipes/apricot-cherry-salad)"
        )
    ]
}
