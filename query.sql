-- CREATE DATABASE recipes_database;
USE recipes_database;

-- CREATE TABLE recipe_ingredients (
--   recipe_id int NOT NULL, 
--   ingredient_id INT NOT NULL, 
--   amount INT NOT NULL,
--   PRIMARY KEY (recipe_id,ingredient_id)
-- );

INSERT INTO recipe_ingredients 
    (recipe_id, ingredient_id, amount)
VALUES
    (1,1,1),
    (1,2,2),
    (1,3,2),
    (1,4,3),
    (1,5,1),
    (2,3,2),
    (2,6,1),
    (3,5,1),
    (3,7,2),
    (7,8,9);
