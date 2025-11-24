
-- USER TABLE
-- Stores basic profile information.

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(120) UNIQUE NOT NULL,
    dob DATE,
    gender VARCHAR(20),
    height_in_inches INTEGER CHECK (height_in_inches > 0),
    weight NUMERIC(5,2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- FOOD ITEMS
-- food with calories & macros.

CREATE TABLE food_items (
    food_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    brand VARCHAR(100),
    serving_size VARCHAR(50),
    calories INTEGER CHECK (calories >= 0),
    protein INTEGER CHECK (protein >= 0),
    carbs INTEGER CHECK (carbs >= 0),
    fat INTEGER CHECK (fat >= 0)
);


-- MEALS (User-created)

CREATE TABLE meals (
    meal_id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES users(user_id),
    name VARCHAR(100) NOT NULL,
    meal_type VARCHAR(50),
    serving_desc VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- MEAL ITEM (Associative Entity)
-- Many-to-many between meals and food_items.

CREATE TABLE meal_items (
    meal_id INTEGER REFERENCES meals(meal_id) ON DELETE CASCADE,
    food_id INTEGER REFERENCES food_items(food_id),
    quantity NUMERIC(6,2) NOT NULL,
    PRIMARY KEY (meal_id, food_id)
);


-- RECIPES

CREATE TABLE recipes (
    recipe_id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES users(user_id),
    name VARCHAR(100) NOT NULL,
    prep_time INTEGER,
    servings INTEGER CHECK (servings >= 1),
    instructions TEXT,
    calories_per_serving INTEGER CHECK (calories_per_serving >= 0)
);


-- RECIPE INGREDIENTS (Associative Entity)

CREATE TABLE recipe_ingredients (
    recipe_id INTEGER REFERENCES recipes(recipe_id) ON DELETE CASCADE,
    food_id INTEGER REFERENCES food_items(food_id),
    quantity NUMERIC(6,2),
    PRIMARY KEY (recipe_id, food_id)
);


-- FOOD LOG
-- A log entry must reference: meal OR food_item OR recipe.
-- calories is stored (pre-calculated) for fast reporting.

CREATE TABLE food_log (
    log_id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL REFERENCES users(user_id),
    log_date DATE NOT NULL,
    meal_id INTEGER REFERENCES meals(meal_id),
    food_id INTEGER REFERENCES food_items(food_id),
    recipe_id INTEGER REFERENCES recipes(recipe_id),
    quantity NUMERIC(6,2),
    calories INTEGER,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ACTIVITY LOG

CREATE TABLE activities (
    activity_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(user_id),
    activity_type VARCHAR(100),
    duration_min INTEGER,
    calories_burned INTEGER CHECK (calories_burned >= 0),
    logged_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- GOALS

CREATE TABLE goals (
    goal_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(user_id),
    goal_type VARCHAR(50),
    target_value NUMERIC(6,2),
    start_date DATE,
    end_date DATE,
    active BOOLEAN
);