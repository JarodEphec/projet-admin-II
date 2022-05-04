CREATE DATABASE woodyToys;
CREATE USER 'admin'@'127.0.0.1' IDENTIFIED BY 'validerSVP';
GRANT SELECT ON woodyToys.* TO 'admin'@'127.0.0.1';
--recharge la db
FLUSH PRIVILEGES;

CREATE TABLE `domains` (
  `id` int(11) NOT NULL auto_increment,
  `domain_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `users` (
  `id` int(11) NOT NULL auto_increment,
  `domain_id` int(11) NOT NULL,
  `password` varchar(106) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  FOREIGN KEY (domain_id) REFERENCES domains(id) ON DELETE CASCADE
);

CREATE TABLE `aliases` (
  `id` int(11) NOT NULL auto_increment,
  `domain_id` int(11) NOT NULL,
  `source` varchar(100) NOT NULL,
  `destination` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (domain_id) REFERENCES domains(id) ON DELETE CASCADE
);

INSERT INTO domains (domain_name) 
VALUES ('m1-2.ephec-ti.be');

INSERT INTO users (domain_id, password , email) 
VALUES ('1', 'CenClair', 'user1@m1-2.ephec-ti.be');

INSERT INTO users (domain_id, password , email) 
VALUES ('1', 'pasHash', 'user2@m1-2.ephec-ti.be');
