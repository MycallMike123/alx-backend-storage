-- Script that creates a function SafeDiv that divides (and returns) the first number by the second number or returns
-- 0 if the second number is equal to 0.

-- Create the function SafeDiv
DELIMITER $$

CREATE FUNCTION SafeDiv(
    a INT,
    b INT
)
RETURNS FLOAT
DETERMINISTIC
BEGIN
    -- Check if b is equal to 0
    IF b = 0 THEN
        RETURN 0; -- Return 0 if b is 0
    END IF;

    -- Divide a by b if b is not 0
    RETURN a / b;
END $$

DELIMITER ;
