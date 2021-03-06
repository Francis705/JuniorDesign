USE smoothiesdb;

CREATE TABLE Recipes(
	recipe_id int NOT NULL PRIMARY KEY,
    title VARCHAR(255),
    image VARCHAR(255),
    rating float,
    directions VARCHAR(255),
    servings int,
    calories int,
    fat int,
    carbohydrates int,
    protein int
    );
    
CREATE TABLE Ingredient(
	ingredient_id int NOT NULL PRIMARY KEY,
    ingredient_name VARCHAR(255)
	);
    
CREATE TABLE Qty_Ingredients(
	step_id int NOT NULL,
    FOREIGN KEY (recipe_id) REFERENCES Recipes(recipe_id),
    FOREIGN KEY (ingredient_id) REFERENCES Ingredient(ingredient_id)
	);