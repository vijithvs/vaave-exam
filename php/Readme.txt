Create topics:

CREATE TABLE `exam_vaave`.`topics` (
  `id` INT(15) NOT NULL,
  `topic` VARCHAR(100) NOT NULL);


Create questions

CREATE TABLE `exam_vaave`.`questions` (
  `id` INT(15) NOT NULL,
  `question` VARCHAR(191) NOT NULL,
  `choice_data` TEXT NOT NULL,
  `score` INT(15) NOT NULL,
  `topic_id` INT(15) NOT NULL,
  `level` ENUM('BEGINNER', 'INTERMEDIATE', 'PROFESSIONAL') NOT NULL,
  PRIMARY KEY (`id`));


Create examinations

CREATE TABLE `exam_vaave`.`examinations` (
  `id` INT(11) NOT NULL,
  `date` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  `email` VARCHAR(45) NULL,
  `response` TEXT NOT NULL,
  `total_score` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

  https://code.tutsplus.com/tutorials/how-to-build-a-simple-rest-api-in-php--cms-37000
  https://auth0.com/blog/beginner-vuejs-tutorial-with-user-login/#Building-Application-Components
  https://auth0.com/blog/beginner-vuejs-tutorial-with-user-login/#Building-Application-Components