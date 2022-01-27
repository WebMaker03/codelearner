create database codelearner2;
use codelearner2;

/* create 문 */

CREATE TABLE `users` (
  `u_code` int PRIMARY KEY AUTO_INCREMENT,
  `userid` varchar(255) NOT NULL,
  `userpw` varchar(255) NOT NULL,
  `u_name` varchar(255) NOT NULL,
  `age` int NOT NULL,
  `point` int DEFAULT 5000,
  `email` varchar(255) NOT NULL
);

CREATE TABLE `challenges` (
  `c_code` int PRIMARY KEY AUTO_INCREMENT,
  `c_name` varchar(255) NOT NULL,
  `theme` varchar(50) NOT NULL,
  `fee` int default 100,
  `period` int default 14,
  `img` varchar(255),
  `info` varchar(500) NOT null
);

CREATE TABLE `myC` (
  `mc_code` int PRIMARY KEY AUTO_INCREMENT,
  `c_code` int NOT NULL,
  `u_code` int NOT NULL,
  `state` boolean NOT NULL, /* 진행 1, 끝난거 0*/
  `startD` datetime NOT NULL,
  `finishD` datetime NOT NULL,
  `achievementPercentage` int NOT NULL,
  `img` varchar(255),
  foreign key(u_code) references users(u_code) on delete cascade,
  foreign key(c_code) references challenges(c_code) on delete cascade
);

CREATE TABLE `verification` (
  `v_code` int PRIMARY KEY AUTO_INCREMENT,
  `u_code` int NOT NULL,
  `mc_code` int NOT NULL,
  `v_date` date NOT NULL,
  `v_text` varchar(500) NOT NULL,
  `rating` int default 3,
  foreign key(u_code) references users(u_code) on delete cascade,
  foreign key(mc_code) references myC(mc_code) on delete cascade
);

CREATE TABLE `post` (
  `p_code` int PRIMARY KEY AUTO_INCREMENT,
  `u_code` int NOT NULL,
  `c_code` int NOT NULL,
  `p_title` varchar(300) NOT NULL,
  `p_text` varchar(500),
  foreign key(u_code) references users(u_code) on delete cascade,
  foreign key(c_code) references challenges(c_code) on delete cascade
);

CREATE TABLE `comments` (
  `cm_code` int PRIMARY KEY AUTO_INCREMENT,
  `u_code` int NOT NULL,
  `p_code` int NOT NULL,
  `cm_text` varchar(255),
  foreign key(u_code) references users(u_code) on delete cascade,
  foreign key(p_code) references post(p_code) on delete cascade
);
