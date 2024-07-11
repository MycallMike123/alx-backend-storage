-- SQL script that creates a view need_meeting Lists all students with a score under 80 (strict)
-- and either no last_meeting date or a last_meeting date more than 1 month ago.
-- Requirements:
-- The view need_meeting should return all student names where:
-- - Their score is under 80 (strict)
-- - AND they have no last_meeting date OR the last_meeting date is more than 1 month ago

-- Create the view need_meeting
CREATE VIEW need_meeting AS
SELECT name
FROM students
WHERE score < 80
  AND (last_meeting IS NULL OR DATEDIFF(CURDATE(), last_meeting) > 30);
