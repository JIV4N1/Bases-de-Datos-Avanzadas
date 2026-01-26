#Modificacion de la tabla clients

ALTER TABLE clients 
    ADD COLUMN gender ENUM ('m', 'f', 'ns') 
    DEFAULT 'ns' NOT NULL; //me vas a poner por default ns

ALTER TABLE clients
    ADD COLUMN country 
    VARCHAR(2) DEFAULT 'mx' NOT NULL;
    //como hacer para agregar que la mayoria sea mujeres y lo demas hombres