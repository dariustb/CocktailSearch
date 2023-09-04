-- This file generates the database with the Cocktail information in it
-- Building db from https://sqliteonline.com/ because it's so much easier imo

-- Create cocktails table
CREATE TABLE IF NOT EXISTS cocktails (
  id INTEGER PRIMARY KEY,
  name        VARCHAR(20) NOT NULL,
  base        VARCHAR(10) NOT NULL,
  image       VARCHAR(40),
  description VARCHAR(500),
  ingredients TEXT,
  directions  TEXT
);

-- Populate table with drink information
INSERT INTO cocktails (id, name, base, image, description, ingredients, directions)
VALUES
(1, 'Old Fashioned', 'Whiskey',
    'https://www.allrecipes.com/thmb/Vej6x9B7_x28tDPaRN4CBQg0XHc=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/classic-old-fashioned-45046e3f716349a088c87374ccbf7916.jpg',
    'Just as the name suggests, the Bourbon Old Fashioned is quite an old drink. In fact, it can be connected to the first recorded definition of a cocktail over 200 years ago, which called for spirits, sugar, water, and bitters. The Old Fashioned ticks all those boxes with whiskey, sugar, water, and bitters.',
    '2 teaspoons simple syrup \n1 teaspoon water \n2 dashes bitters \n1 cup ice cubes \n1 (1.5 fluid ounce) jigger bourbon whiskey \n1 slice orange \n1 maraschino cherry',
    'Pour simple syrup, water, and bitters into a whiskey glass; stir to combine. \nAdd ice cubes and pour in bourbon. \nGarnish with orange slice and maraschino cherry.'),

(2, 'Negroni', 'Gin',
    'https://www.allrecipes.com/thmb/ehNCjZQ7xb99CYu2gc_Y5p9SvXI=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/477083-4b9c142ac00c407fb499415ad7c1b949.jpg',
    "As the story goes, the Negroni was invented in a bar in Florence in the early 20th century by Italian Count Camillo Negroni. He asked the bartender to strengthen his cocktail, an Americano, so the bartender replaced the soda water with gin and added an orange peel instead of the Americano's typical lemon peel. Now the experimental drink of gin, vermouth, and Campari has become a popular cocktail even outside of Italy.",
    '¾ fluid ounce campari \n¾ fluid ounce gin \n¾ fluid ounce sweet vermouth \n2 fluid ounces carbonated water \n1 wedge lemon, for garnish',
    'In a rocks glass over ice, combine Campari, gin, and sweet vermouth. \nAdd carbonated water and garnish with lemon wedge.'),

(3, 'Daiquiri', 'Rum',
    'https://www.allrecipes.com/thmb/rb0oWVcYMht7IEYB6eAmF1NiUFw=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/1016644-1446b79288da4aae9682c8d6e2fb3b6b.jpg',
    "Daiquiris can get a bad rep for being fruity slushies that you only drink on the beach. But this Cuban rum cocktail was a favorite of some of America's biggest names — including President John F. Kennedy and Ernest Hemmingway. Let the tasty simplicity of the Daiquiri change your mind with the sweet, fresh flavors of light rum, sugar, and lime.",
    '1 cup ice cubes \n1 ½ fluid ounces light rum \n1 fluid ounce lime juice \n1 fluid ounce triple sec \n1 teaspoon white sugar \n1 lime wedge \n2 tablespoons white sugar, or as needed',
    'Blend ice, rum, lime juice, triple sec, and 1 teaspoon sugar in a blender on the highest setting until smooth, 15 to 20 seconds. Pour into glass.\nSpread 2 tablespoons sugar in a thin layer onto a small plate. Rub lime wedge around the rim of a glass. Dip glass rim in sugar to coat. Pour blended beverage into the prepared glass to serve.'),

(4, 'Dry Martini', 'Gin',
    'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F8986779.jpg&q=60&c=sc&orient=true&poi=auto&h=512',
    "A James Bond favorite, the Dry Martini is simple and elegant. While we don't know the exact origin story of the Dry Martini, we do know that the cocktail made with dry gin, dry vermouth, and orange bitters is best served with a lemon twist.",
    '2 ½ fluid ounces gin \n½ fluid ounce dry vermouth \n1 pitted green olive \n1 cup ice',
    'Scoop ice into a shaker. Pour in gin and vermouth. Cover shaker, and gently shake to mix vermouth and gin. Pour drink, without ice, into a cocktail glass. Gently drop olive or lemon twist into the glass. Serve.'),

(5, 'Margarita', 'Tequila',
    'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fpublic-assets.meredithcorp.io%2F7b05be9bd7b94e37461543e3eb318757%2F1647732956margarita%25203.19.22.jpg&q=60&c=sc&orient=true&poi=auto&h=512',
    "The Margarita originated in Mexico and sparks a lot of debate about the way it's served. Whether you like it with or without a salt rim, frozen or on the rocks, or with triple sec, Cointreau, or Grand Marnier, you can't go wrong with a classic Margarita. The tequila is key, so opt for blanco tequila and start with the 3-2-1 ratio of three parts tequila, two parts orange-flavored liqueur, and one part lime juice.",
    '1 wedge lime \n1 teaspoon coarse sea salt, or as needed \n1 large ice cube \n1 cup ice cubes, or as needed \n2 fluid ounces white tequila \n1 ½ fluid ounces triple sec \n1 fluid ounce freshly squeezed lime juice \n1 slice lime',
    'Gather all ingredients.\nMoisten the rim of a glass with a lime wedge. Sprinkle salt onto a plate. Lightly dip the moistened rim into the salt.\nPlace a large ice cube in the glass and freeze the prepared glass until ready to serve.\nFill a cocktail shaker with fresh ice. Add tequila, triple sec, and lime juice. Cover and shake vigorously until the outside of the shaker has frosted.\nStrain margarita into the chilled glass and garnish with a slice of lime.'),

(6, 'Espresso Martini', 'Vodka', 
    'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F43%2F2022%2F09%2F13%2F222881-espresso-martini-cocktail-3x4-121-copy.jpg&q=60&c=sc&orient=true&poi=auto&h=512',
    'Straight from London, the Espresso Martini is sure to get you buzzing with a shot of espresso, coffee-flavored liqueur, and vodka. This smooth cocktail is a great after-dinner pick-me-up, and you can use espresso, strong coffee, or cold brew to get that caffeine boost.',
    '1 ½ fluid ounces vodka \n1 ½ fluid ounces coffee-flavored liqueur (such as Kahlua®) \n1 fluid ounce white creme de cacao \n1 fluid ounce brewed espresso \n1 cup ice',
    'Gather all ingredients. \nPour vodka, coffee liqueur, crème de cacao, and espresso into a cocktail shaker; add ice, cover and shake until chilled. \nStrain into a chilled martini glass.'),

(7, 'Whiskey Sour', 'Whiskey',
    'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fimages.media-allrecipes.com%2Fuserphotos%2F8002780.jpg&q=60&c=sc&orient=true&poi=auto&h=512',
    "The first printed recipe for a Whiskey Sour appeared in the Jerry Thomas Bartenders Guide, which was the first-ever cocktail book released in 1862. A mixture of whiskey, sugar, and lemon, the Whiskey Sour used to be made with egg white, but that ingredient isn't as common anymore.",
    '5 fluid ounces whiskey \n2 fluid ounces fresh lemon juice \n1 fluid ounce simple syrup \n1 cup ice cubes, or as needed \n3 maraschino cherries for garnish',
    'Combine whiskey, lemon juice, and simple syrup in a shaker. Fill with ice. Cover and shake until the shaker is frosty, about 30 seconds. \nStrain into 3 martini glasses and garnish each glass with a maraschino cherry.'),

(8, 'Manhattan', 'Whiskey',
    'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fpublic-assets.meredithcorp.io%2F86a252be84e2f7d51478ad3696979e3e%2F16476520234A0F3ED3-638F-49E0-A987-07E2912E23B7.jpeg&q=60&c=sc&orient=true&poi=auto&h=512',
    "The Manhattan has been famous since its alleged invention in the late 1800s in New York City's Manhattan Club. We may not know who invented the once-exclusive cocktail, but it is now a common cocktail served worldwide. The classic Manhattan is two parts whiskey, one part sweet vermouth, and bitters.",
    '2 fluid ounces rye whiskey \n½ fluid ounce sweet vermouth \n1 dash Angostura bitters \n1 cup ice cubes \n1 maraschino cherry',
    'Gather all ingredients.\nCombine whiskey, vermouth, and bitters in a cocktail mixing glass. Add ice and stir until chilled.\nStrain into a chilled cocktail glass and garnish with a maraschino cherry.'),

(9, 'Aperol Spritz', 'Wine',
    'https://www.allrecipes.com/thmb/3F4R2Xu3Bbk8jmHQ_vHdU4r-TYQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/4520123-960599ca12eb40c4adee8f938ecba335.jpg',
    "Served as an aperitivo, a light pre-meal drink, the Aperol Spritz originated in Italy in 1919. While you'd find Europeans enjoying this cocktail with Aperol, bubbly wine, and sparkling water ever since, the Aperol Spritz didn't make it big in the U.S. until the 2010s. But with only three ingredients and a light alcohol content, this easy-to-drink cocktail can now be found at brunches and happy hours around the world.",
    '4 ice cubes, or as desired \n2 fluid ounces Prosecco \n1 splash club soda \n1 (1.5 fluid ounce shot Aperol (or other bitter orange aperitif) \n1 slice orange',
    'Fill a wine glass with ice cubes; pour in Prosecco and club soda. Top cocktail with Aperol; garnish with orange slice.'),

(10, 'Mojito', 'Rum',
    'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fpublic-assets.meredithcorp.io%2F63c9914765589a51ddad074018b97407%2F1655776565image.jpg&q=60&c=sc&orient=true&poi=auto&h=512',
    "Dating back to 16th-century Cuba, the Mojito — made from rum, lime, mint, and sugar — was supposedly consumed for medicinal purposes. Eventually, it became known as the Mojito, as it first appeared in the 1932 edition of Sloppy Joe's Bar Cocktails Manual. Sloppy Joe's was a famed bar in Havana and the Mojito only consists of ingredients native to Cuba.",
    '10 fresh mint leaves\n½ medium lime, cut into 3 wedges, divided \n2 tablespoons white sugar, or to taste \n1 cup ice cubes, or as needed \n1 ½ fluid ounces white rum \n½ cup club soda, or as needed',
    'Place mint leaves and 1 lime wedge into a sturdy glass. Use a muddler and crush to release mint oils and lime juice. \nAdd remaining lime wedges and 2 tablespoons sugar, and muddle again to release the lime juice. Do not strain the mixture. \nFill the glass almost to the top with ice. \nPour in rum and fill the glass with club soda. \nStir, taste, and add more sugar if desired.');

-- Got tired. Feel free to add the other 40 if you want.
-- https://www.allrecipes.com/article/top-50-cocktail-list-and-recipes/

INSERT INTO cocktails (id, name, base)
VALUES
(11, 'Bloody Mary', 'Vodka'),
(12, 'Gimlet', 'Gin'),
(13, 'Moscow Mule', 'Vodka'),
(14, 'Penicillin', 'Whiskey'),
(15, "Dark 'n Stormy", 'Rum'),
(16, 'Corpse Reviver #2', 'Gin'),
(17, 'Clover Club', 'Gin'),
(18, 'Boulevardier', 'Whiskey'),
(19, 'Mai Tai', 'Rum'),
(20, 'Sazerac', 'Whiskey'),
(21, 'French 75', 'Gin'),
(22, 'Paloma', 'Tequila'),
(23, 'Pisco Sour', 'Brandy'),
(24, 'Vieux Carre', 'Whiskey'),
(25, 'Americano', 'Liqueur'),
(26, 'Amaretto Sour', 'Whiskey'),
(27, 'Rum Old Fashioned', 'Rum'),
(28, 'Gin Fizz', 'Gin'),
(29, 'Bramble', 'Gin'),
(30, 'Brandy Crusta', 'Brandy'),
(31, 'Bellini', 'Wine'),
(32, 'Pina Colada', 'Rum'),
(33, 'Porn Star Martini', 'Vodka'),
(34, 'Sidecar', 'Brandy'),
(35, 'Aviation', 'Gin'),
(36, 'Irish Coffee', 'Whiskey'),
(37, 'Last Word', 'Gin'),
(38, "Tommy's Margarita", 'Tequila'),
(39, 'Bamboo', 'Wine'),
(40, 'Tom Collins', 'Gin'),
(41, 'Caipirinha', 'Rum'),
(42, 'Vodka Martini', 'Vodka'),
(43, 'Hanky Panky', 'Gin'),
(44, 'Zombie', 'Rum'),
(45, 'Cosmopolitan', 'Vodka'),
(46, 'El Diablo', 'Tequila'),
(47, 'White Lady', 'Gin'),
(48, 'Gin Gin Mule', 'Gin'),
(49, 'Long Island Iced Tea', 'Vodka'),
(50, 'Jungle Bird', 'Rum');
