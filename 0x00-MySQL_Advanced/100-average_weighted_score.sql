-- SQL script to create a stored procedure ComputeAverageWeightedScoreForUser
-- that computes and stores the average weighted score for a student.
-- Requirements:
-- The procedure ComputeAverageWeightedScoreForUser takes 1 input:
-- user_id: a users.id value (assume user_id is linked to an existing user)

-- Create the stored procedure ComputeAverageWeightedScoreForUser
DELIMITER $$

CREATE PROCEDURE ComputeAverageWeightedScoreForUser(
    IN p_user_id INT
)
BEGIN
    DECLARE weighted_avg DECIMAL(10,2);

    -- Calculate the weighted average score for the user
    SELECT SUM(score * weight) / SUM(weight) INTO weighted_avg
    FROM corrections
    WHERE user_id = p_user_id;

    -- Update the user's average weighted score in the users table
    UPDATE users
    SET average_weighted_score = weighted_avg
    WHERE id = p_user_id;

END $$

DELIMITER ;
