
-- Fast lookups for food logs by user and date
CREATE INDEX idx_foodlog_user_date 
ON food_log (user_id, log_date);

-- Fast searching of food names
CREATE INDEX idx_food_items_name 
ON food_items (name);

-- Search meals by user faster
CREATE INDEX idx_meals_user 
ON meals (user_id);

-- Speed up joining recipes with ingredients
CREATE INDEX idx_recipe_ingredients_recipe 
ON recipe_ingredients (recipe_id);

-- Faster activity history lookup
CREATE INDEX idx_activities_user_date
ON activities (user_id, logged_at);

-- Goals by user & active status
CREATE INDEX idx_goals_user_active
ON goals (user_id, active);
