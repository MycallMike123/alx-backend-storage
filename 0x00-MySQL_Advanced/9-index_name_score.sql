-- SQL script that creates an index idx_name_first_score
-- on the table names for the first letter of name and the score.
-- Requirements:
-- Index only the first letter of name and score

-- Create index idx_name_first_score on the table names for the first letter of name and score
CREATE INDEX idx_name_first_score ON names(name(1), score);
