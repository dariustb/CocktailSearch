-- This file generates the database with the Cocktail information in it
-- Building db from https://sqliteonline.com/ because it's so much easier imo

-- Create cocktails table
CREATE TABLE IF NOT EXISTS cocktails (
  id INTEGER PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  base VARCHAR(10) NOT NULL
);

-- Populate table with drinks
INSERT INTO cocktails (id, name, base)
VALUES
(1, 'Old Fashioned', 'Whiskey'),
(2, 'Negroni', 'Gin'),
(3, 'Daiquiri', 'Rum'),
(4, 'Dry Martini', 'Gin'),
(5, 'Margarita', 'Tequila'),
(6, 'Espresso Martini', 'Gin'),
(7, 'Whiskey Sour', 'Whiskey'),
(8, 'Manhattan', 'Whiskey'),
(9, 'Aperol Spritz', 'Wine'),
(10, 'Mojito', 'Rum'),
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
