#CREATE DATABASE test;
CREATE TABLE persons(
	id int NOT NULL ,
    name varchar(50) NOT NULL,
    age int,
    email varchar(100),
    created datetime,
    PRIMARY KEY(id),
    UNIQUE(id),
    CHECK (age>=18)
);

DROP TABLE persons