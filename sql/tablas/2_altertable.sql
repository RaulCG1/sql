CREATE TABLE persons1(
	id int NOT NULL AUTO_INCREMENT ,
    name varchar(50) NOT NULL,
    age int,
    email varchar(100) ,
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    PRIMARY KEY(id),
    UNIQUE(id),
    CHECK (age>=18)
);

/*ALTER TABLE persons1
ADD surname varchar(10);*/
ALTER TABLE persons1
RENAME COLUMN surname TO descriptions;

ALTER TABLE persons1
MODIFY COLUMN descriptions varchar(200);
ALTER TABLE persons1
DROP COLUMN descriptions;