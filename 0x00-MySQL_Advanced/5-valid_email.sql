-- SQL script to create a trigger that resets the valid_email attribute
-- only when the email has been modified

DELIMITER $$

CREATE TRIGGER valid_email_reset BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    -- Check if the email has been changed
    IF OLD.email <> NEW.email THEN
        -- Reset the valid_email attribute
        SET NEW.valid_email = 0;
    END IF;
END$$

DELIMITER ;
