

INSERT INTO users (first_name, last_name, email, dob, gender, height_in_inches, weight)
VALUES
('Sarah','Smith','sarah.smith@example.com','1988-11-04','Female',65,150),
('Michael','Johnson','michaelj@example.com','1995-07-20','Male',70,175),
('Emily','Davis','emilyd@example.com','1993-02-14','Female',64,135),
('Chris','Martinez','chrism@example.com','1999-09-01','Male',71,190),
('Ava','Brown','ava.b@example.com','2001-01-22','Female',66,143),
('Ethan','White','ethanw@example.com','1997-06-18','Male',69,168),
('Olivia','Taylor','olivia.t@example.com','1998-12-25','Female',63,127),
('Liam','Anderson','liam.a@example.com','2000-03-10','Male',72,200),
('Mia','Thomas','mia.t@example.com','1991-08-30','Female',64,132),

('Noah','Jackson','noah.j@example.com','1992-10-12','Male',70,178),
('Isabella','Harris','isa.h@example.com','1996-05-06','Female',65,140),
('Logan','Clark','logan.c@example.com','1989-04-15','Male',73,210),
('Sophia','Rodriguez','sophia.r@example.com','2002-07-11','Female',62,125),
('James','Lewis','james.l@example.com','1994-09-18','Male',71,185),
('Charlotte','Lee','charlotte.l@example.com','1993-03-03','Female',66,144),
('Benjamin','Walker','ben.w@example.com','1998-02-05','Male',74,220),
('Amelia','Hall','amelia.h@example.com','1997-12-19','Female',65,141),
('Mason','Allen','mason.a@example.com','1999-09-27','Male',69,175),
('Harper','Young','harper.y@example.com','2001-04-13','Female',64,130),

('Elijah','King','elijah.k@example.com','1990-11-07','Male',70,185),
('Avery','Wright','avery.w@example.com','1995-07-21','Female',67,148),
('Daniel','Scott','dan.s@example.com','1993-05-17','Male',72,195),
('Ella','Green','ella.g@example.com','1996-10-08','Female',63,132),
('Henry','Adams','henry.a@example.com','1999-12-12','Male',71,188),
('Grace','Baker','grace.b@example.com','2000-08-14','Female',65,138),
('Jacob','Nelson','jacob.n@example.com','1994-01-28','Male',73,205),
('Chloe','Carter','chloe.c@example.com','1998-03-07','Female',64,131),
('Samuel','Mitchell','sam.m@example.com','1997-06-02','Male',70,178),
('Abigail','Perez','abby.p@example.com','1995-09-15','Female',62,129),

('David','Roberts','david.r@example.com','1991-02-11','Male',74,215),
('Evelyn','Turner','eve.t@example.com','2000-01-05','Female',66,140),
('Matthew','Phillips','matt.p@example.com','1996-07-09','Male',71,185),
('Aria','Campbell','aria.c@example.com','1997-10-30','Female',63,128),
('Joseph','Parker','joe.p@example.com','1992-04-02','Male',72,205),
('Lily','Evans','lily.e@example.com','1998-08-23','Female',65,137),
('Wyatt','Edwards','wyatt.e@example.com','1995-03-19','Male',69,172),
('Zoey','Collins','zoey.c@example.com','1999-09-08','Female',64,133),
('Jack','Stewart','jack.s@example.com','1993-12-03','Male',70,182),
('Hannah','Sanchez','hannah.s@example.com','2001-05-27','Female',65,139),

('Andrew','Morris','andrew.m@example.com','1997-07-22','Male',71,190),
('Natalie','Rogers','natalie.r@example.com','1996-02-13','Female',63,134),
('Gabriel','Reed','gabe.r@example.com','1998-11-09','Male',72,200),
('Victoria','Cook','vic.c@example.com','1999-06-29','Female',65,145),
('Owen','Morgan','owen.m@example.com','2002-01-31','Male',68,160),
('Scarlett','Bell','scarlett.b@example.com','2001-03-01','Female',64,130);



INSERT INTO food_items (name, brand, serving_size, calories, protein, carbs, fat)
VALUES
('Apple','Generic','1 medium',95,0,25,0),
('Banana','Generic','1 medium',105,1,27,0),
('Chicken Breast','Tyson','4 oz',180,36,0,4),
('Rice (White)','Generic','1 cup',200,4,45,1),
('Salmon','Fresh','4 oz',240,23,0,14),
('Egg','Generic','1 large',70,6,0,5),
('Oatmeal','Quaker','1 cup',150,6,27,3),
('Greek Yogurt','Chobani','1 cup',140,15,12,0),
('Almonds','Blue Diamond','1 oz',165,6,6,14),
('Broccoli','Generic','1 cup',55,4,11,1),
('Spinach','Generic','1 cup',10,1,1,0),
('Turkey','Butterball','4 oz',160,32,0,2),
('Pasta','Barilla','1 cup',210,7,42,1),
('Avocado','Fresh','1 medium',240,3,12,22),
('Bread (Wheat)','Wonder','1 slice',70,3,12,1),
('Orange','Generic','1 medium',62,1,15,0),
('Milk 2%','Generic','1 cup',120,8,12,5),
('Cheddar Cheese','Kraft','1 oz',113,7,0,9),
('Peanut Butter','Jif','2 tbsp',190,8,7,16),
('Cereal','Cheerios','1 cup',110,3,20,2),
('Blueberries','Generic','1 cup',85,1,21,0),
('Steak','Angus','6 oz',430,42,0,30),
('Shrimp','Fresh','4 oz',120,23,1,1),
('Potato','Generic','1 medium',160,4,37,0),
('Sweet Potato','Generic','1 medium',112,2,26,0),
('Protein Powder','Optimum','1 scoop',120,24,3,1),
('Tofu','House Foods','4 oz',80,8,2,4),
('Cottage Cheese','Daisy','1 cup',220,25,8,5),
('Granola','KIND','1/2 cup',220,5,36,6),
('Pork Chop','Fresh','4 oz',250,28,0,14);





INSERT INTO meals (user_id, name, meal_type, serving_desc)
VALUES
(1, 'Chicken & Rice Bowl', 'Lunch', '1 bowl'),
(2, 'Protein Oatmeal', 'Breakfast', '1 bowl'),
(3, 'Egg & Veggie Breakfast', 'Breakfast', '1 plate'),
(4, 'Salmon & Broccoli', 'Dinner', '1 plate'),
(5, 'Turkey Sandwich', 'Lunch', '1 sandwich'),

(6, 'Tofu Stir Fry', 'Dinner', '1 plate'),
(7, 'Banana & Yogurt', 'Snack', '1 serving'),
(8, 'Steak Dinner', 'Dinner', '1 plate'),
(9, 'Fruit Bowl', 'Snack', '1 bowl'),
(10, 'Pasta & Salad', 'Lunch', '1 plate'),

(11, 'Chicken Pasta', 'Dinner', '1 plate'),
(12, 'PB Toast', 'Breakfast', '2 slices'),
(13, 'Beef Bowl', 'Lunch', '1 bowl'),
(14, 'Shrimp & Rice', 'Dinner', '1 plate'),
(15, 'Veggie Omelette', 'Breakfast', '1 plate'),

(16, 'Smoothie Bowl', 'Snack', '1 bowl'),
(17, 'Turkey Wrap', 'Lunch', '1 wrap'),
(18, 'Avocado Toast', 'Breakfast', '2 slices'),
(19, 'Cereal Bowl', 'Breakfast', '1 bowl'),
(20, 'Sweet Potato & Chicken', 'Dinner', '1 plate'),

(21, 'Salmon Salad', 'Lunch', '1 bowl'),
(22, 'Yogurt Parfait', 'Snack', '1 serving'),
(23, 'Egg Sandwich', 'Breakfast', '1 sandwich'),
(24, 'Rice & Steak', 'Dinner', '1 plate'),
(25, 'Granola & Milk', 'Breakfast', '1 bowl'),

(26, 'Shrimp Bowl', 'Lunch', '1 bowl'),
(27, 'Oatmeal & Fruit', 'Breakfast', '1 bowl'),
(28, 'Broccoli Stir Fry', 'Dinner', '1 plate'),
(29, 'Chicken Wrap', 'Lunch', '1 wrap'),
(30, 'Pork Chop & Potato', 'Dinner', '1 plate');





INSERT INTO meal_items (meal_id, food_id, quantity)
VALUES
-- Meal 1
(1, 3, 1), (1, 4, 1), (1, 10, 1), (1, 15, 1),

-- Meal 2
(2, 7, 1), (2, 6, 2), (2, 21, 1), (2, 29, 1),

-- Meal 3
(3, 6, 2), (3, 10, 1), (3, 11, 1), (3, 1, 1),

-- Meal 4
(4, 5, 1), (4, 10, 1), (4, 21, 1), (4, 16, 1),

-- Meal 5
(5, 15, 2), (5, 12, 1), (5, 16, 1), (5, 20, 1),

-- Meal 6
(6, 27, 1), (6, 10, 1), (6, 11, 1), (6, 25, 1),

-- Meal 7
(7, 2, 1), (7, 8, 1), (7, 21, 1), (7, 1, 1),

-- Meal 8
(8, 22, 1), (8, 10, 1), (8, 25, 1), (8, 16, 1),

-- Meal 9
(9, 1, 1), (9, 2, 1), (9, 21, 1), (9, 16, 1),

-- Meal 10
(10, 13, 1), (10, 10, 1), (10, 1, 1), (10, 29, 1),

-- Meal 11
(11, 3, 1), (11, 13, 1), (11, 10, 1), (11, 28, 1),

-- Meal 12
(12, 15, 2), (12, 19, 1), (12, 2, 1), (12, 1, 1),

-- Meal 13
(13, 22, 1), (13, 4, 1), (13, 25, 1), (13, 1, 1),

-- Meal 14
(14, 23, 1), (14, 4, 1), (14, 10, 1), (14, 16, 1),

-- Meal 15
(15, 6, 2), (15, 10, 1), (15, 11, 1), (15, 1, 1),

-- Meal 16
(16, 8, 1), (16, 21, 1), (16, 29, 1), (16, 1, 1),

-- Meal 17
(17, 12, 1), (17, 15, 1), (17, 16, 1), (17, 20, 1),

-- Meal 18
(18, 15, 2), (18, 14, 1), (18, 1, 1), (18, 8, 1),

-- Meal 19
(19, 20, 1), (19, 16, 1), (19, 21, 1), (19, 29, 1),

-- Meal 20
(20, 3, 1), (20, 26, 1), (20, 10, 1), (20, 16, 1),

-- Meal 21
(21, 5, 1), (21, 11, 1), (21, 21, 1), (21, 20, 1),

-- Meal 22
(22, 8, 1), (22, 21, 1), (22, 29, 1), (22, 2, 1),

-- Meal 23
(23, 15, 2), (23, 6, 1), (23, 1, 1), (23, 16, 1),

-- Meal 24
(24, 22, 1), (24, 4, 1), (24, 10, 1), (24, 21, 1),

-- Meal 25
(25, 29, 1), (25, 16, 1), (25, 20, 1), (25, 1, 1),

-- Meal 26
(26, 23, 1), (26, 4, 1), (26, 10, 1), (26, 11, 1),

-- Meal 27
(27, 7, 1), (27, 21, 1), (27, 2, 1), (27, 16, 1),

-- Meal 28
(28, 27, 1), (28, 10, 1), (28, 11, 1), (28, 26, 1),

-- Meal 29
(29, 3, 1), (29, 12, 1), (29, 16, 1), (29, 20, 1),

-- Meal 30
(30, 30, 1), (30, 24, 1), (30, 10, 1), (30, 21, 1);




INSERT INTO recipes (user_id, name, prep_time, servings, instructions, calories_per_serving)
VALUES
(1, 'High Protein Shake', 5, 1, 'Blend ingredients.', 320),
(2, 'Fruit Mix Bowl', 10, 2, 'Chop and mix fruit.', 150),
(3, 'Chicken Meal Prep', 20, 4, 'Cook chicken and rice.', 450),
(4, 'Veggie Stir Fry', 15, 2, 'Stir fry vegetables.', 180),
(5, 'Shrimp Pasta', 25, 3, 'Boil pasta, cook shrimp.', 520),

(6, 'Avocado Toast Deluxe', 5, 1, 'Toast bread, add avocado.', 280),
(7, 'Breakfast Scramble', 10, 2, 'Scramble eggs with veggies.', 260),
(8, 'Greek Yogurt Parfait', 5, 1, 'Layer yogurt and fruit.', 180),
(9, 'Pork Bowl', 20, 2, 'Cook pork and potatoes.', 500),
(10, 'Protein Oatmeal', 8, 1, 'Cook oatmeal, add protein.', 390),

(11, 'Steak Bites', 15, 2, 'Cook seasoned steak bites.', 420),
(12, 'Blueberry Smoothie', 4, 1, 'Blend all ingredients.', 250),
(13, 'Cottage Bowl', 5, 1, 'Mix cottage cheese & fruit.', 210),
(14, 'Tofu Power Bowl', 20, 2, 'Cook tofu and vegetables.', 330),
(15, 'Sweet Potato Mash', 12, 3, 'Boil and mash potatoes.', 210);


INSERT INTO recipe_ingredients (recipe_id, food_id, quantity)
VALUES
(1, 27, 1), (1, 5, 1), (1, 2, 1),
(2, 1, 1), (2, 21, 1), (2, 16, 1),
(3, 3, 1), (3, 4, 1), (3, 10, 1),
(4, 10, 1), (4, 11, 1), (4, 1, 1),
(5, 23, 1), (5, 13, 1), (5, 21, 1),

(6, 14, 1), (6, 15, 2), (6, 1, 1),
(7, 6, 2), (7, 10, 1), (7, 11, 1),
(8, 8, 1), (8, 21, 1), (8, 29, 1),
(9, 30, 1), (9, 24, 1), (9, 10, 1),
(10, 7, 1), (10, 27, 1), (10, 21, 1),

(11, 22, 1), (11, 21, 1), (11, 10, 1),
(12, 8, 1), (12, 21, 1), (12, 2, 1),
(13, 28, 1), (13, 21, 1), (13, 1, 1),
(14, 27, 1), (14, 10, 1), (14, 11, 1),
(15, 26, 2), (15, 21, 1), (15, 1, 1);
