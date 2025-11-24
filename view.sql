
-- Basic user profile + total meals + total logs

CREATE VIEW user_overview AS
SELECT 
    u.user_id,
    CONCAT(u.first_name, ' ', u.last_name) AS full_name,
    u.email,
    u.height_in_inches,
    u.weight,
    COUNT(DISTINCT m.meal_id) AS total_meals,
    COUNT(DISTINCT fl.log_id) AS total_logs
FROM users u
LEFT JOIN meals m ON u.user_id = m.user_id
LEFT JOIN food_log fl ON u.user_id = fl.user_id
GROUP BY u.user_id;


-- Most frequently logged foods by users

CREATE VIEW top_foods_logged AS
SELECT
    fi.food_id,
    fi.name AS food_name,
    COUNT(fl.food_id) AS times_logged
FROM food_items fi
LEFT JOIN food_log fl ON fi.food_id = fl.food_id
GROUP BY fi.food_id, fi.name
ORDER BY times_logged DESC;


-- Total calories eaten per user per day

CREATE VIEW daily_calorie_summary AS
SELECT
    u.user_id,
    CONCAT(u.first_name, ' ', u.last_name) AS full_name,
    fl.log_date,
    SUM(fl.calories) AS total_calories
FROM food_log fl
JOIN users u ON fl.user_id = u.user_id
GROUP BY u.user_id, fl.log_date
ORDER BY fl.log_date DESC;


-- How many ingredients each recipe uses

CREATE VIEW recipe_breakdown AS
SELECT
    r.recipe_id,
    r.name AS recipe_name,
    r.servings,
    r.calories_per_serving,
    COUNT(ri.food_id) AS ingredient_count
FROM recipes r
LEFT JOIN recipe_ingredients ri ON r.recipe_id = ri.recipe_id
GROUP BY r.recipe_id;
