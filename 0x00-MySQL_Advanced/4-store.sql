-- SQL script to create a trigger
-- The trigger decreases the quantity of an item after a new order is added.
-- Note: Quantity in the items table can be negative.

-- Create a trigger to decrease item quantity after a new order is inserted
CREATE TRIGGER decrease_item_quantity AFTER INSERT ON orders
FOR EACH ROW
-- Update the quantity of the item in the items table
UPDATE items
SET quantity = quantity - NEW.number
WHERE name = NEW.item_name;
