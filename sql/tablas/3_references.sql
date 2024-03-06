Select * from users;

CREATE TABLE dni(
	dni_id int AUTO_INCREMENT PRIMARY KEY,
    dni_number int NOT NULL,
    user_id int ,
    UNIQUE(dni_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);

#DROP TABLE dni;


CREATE TABLE companies(
	cmp_id int AUTO_INCREMENT PRIMARY KEY,
    name_cmp varchar(100)
);


ALTER TABLE users
ADD CONSTRAINT fk_companies 
FOREIGN KEY(cmp_id) REFERENCES companies(cmp_id);

CREATE TABLE lenguajes(
	id_len int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
);
CREATE TABLE users_lenguajes(
	user_lengua int AUTO_INCREMENT PRIMARY KEY,
    user_id int,
    id_len int,
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(id_len) REFERENCES lenguajes(id_len),
    UNIQUE(user_id),
    UNIQUE(id_len)
);

