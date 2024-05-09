-- creates a stored procedure ComputeAverageScoreForUser that computes and store the average score for a student
DELIMITER //

CREATE PROCEDURE ComputeAverageScoreForUser(
    IN user_id INT
)
BEGIN
    DECLARE total_score FLOAT;
    DECLARE num_corrections INT;
    DECLARE avg_score FLOAT;

    -- Calculate total score and number of corrections for the user
    SELECT SUM(score), COUNT(*) INTO total_score, num_corrections
    FROM corrections
    WHERE user_id = user_id;

    -- Calculate average score
    IF num_corrections > 0 THEN
        SET avg_score = total_score / num_corrections;
    ELSE
        SET avg_score = 0;
    END IF;

    -- Update average score for the user
    UPDATE users
 
