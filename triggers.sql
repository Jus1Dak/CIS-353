
-- RULE: Only ONE of (meal_id, food_id, recipe_id) must be set.

CREATE OR REPLACE FUNCTION enforce_one_food_source()
RETURNS TRIGGER AS $$
BEGIN
    IF ( (NEW.meal_id IS NOT NULL)::INT +
         (NEW.food_id IS NOT NULL)::INT +
         (NEW.recipe_id IS NOT NULL)::INT ) <> 1 THEN
        RAISE EXCEPTION 'FoodLog must reference exactly one: meal, food, or recipe.';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_food_source
BEFORE INSERT OR UPDATE ON food_log
FOR EACH ROW
EXECUTE FUNCTION enforce_one_food_source();


-- RULE: A user cannot have more than one active goal of the same type.

CREATE OR REPLACE FUNCTION enforce_single_active_goal()
RETURNS TRIGGER AS $$
DECLARE
    active_count INT;
BEGIN
    IF NEW.active THEN
        SELECT COUNT(*) INTO active_count
        FROM goals
        WHERE user_id = NEW.user_id
        AND goal_type = NEW.goal_type
        AND active = TRUE;

        IF active_count > 0 THEN
            RAISE EXCEPTION 'User already has an active goal of this type.';
        END IF;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_single_goal
BEFORE INSERT OR UPDATE ON goals
FOR EACH ROW
EXECUTE FUNCTION enforce_single_active_goal();


-- Prevent users from logging more than 20 items

CREATE OR REPLACE FUNCTION limit_daily_logs()
RETURNS TRIGGER AS $$
DECLARE
    log_count INT;
BEGIN
    SELECT COUNT(*) INTO log_count
    FROM food_log
    WHERE user_id = NEW.user_id
      AND log_date = NEW.log_date;

    IF log_count >= 20 THEN
        RAISE EXCEPTION 'You cannot log more than 20 items in a single day.';
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_limit_daily_logs
BEFORE INSERT ON food_log
FOR EACH ROW
EXECUTE FUNCTION limit_daily_logs();

