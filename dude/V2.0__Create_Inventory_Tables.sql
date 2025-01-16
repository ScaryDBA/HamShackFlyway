CREATE TABLE radio.inventory (inventory_id INT GENERATED BY DEFAULT AS IDENTITY,
                            inventory_item_id INT NOT NULL,
                            CONSTRAINT inventory_pk
                                PRIMARY KEY (inventory_id));

CREATE TABLE radio.inventory_item (inventory_item_id INT GENERATED BY DEFAULT AS IDENTITY,
                                inventory_item_name VARCHAR(200),
                                CONSTRAINT inventory_item_pk
                                    PRIMARY KEY (inventory_item_id));


ALTER TABLE radio.inventory
ADD CONSTRAINT inventory_item_inventory
    FOREIGN KEY (inventory_item_id)
    REFERENCES radio.inventory_item (inventory_item_id);