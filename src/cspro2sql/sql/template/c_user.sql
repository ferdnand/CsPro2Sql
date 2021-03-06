CREATE TABLE IF NOT EXISTS @SCHEMA.`c_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FIRSTNAME` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MIDDLENAME` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LASTNAME` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EMAIL` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PASSWORD` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ROLE` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `EMAIL_UNIQUE` (`EMAIL`),
  KEY `EMAIL_INDEX` (`EMAIL`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO @SCHEMA.`c_user` (FIRSTNAME, LASTNAME, EMAIL, PASSWORD, ROLE)
  VALUES ('Dashboard', 'Admin', 'admin@dashboard.it', '$2a$10$Yq.aC1NrfpC/grRBlc8dU.QgWG4bMvj3goJayS4DwypWXcrrHe756', 'ADMIN');
INSERT INTO @SCHEMA.`c_user` (FIRSTNAME, LASTNAME, EMAIL, PASSWORD, ROLE)
  VALUES ('Dashboard', 'Progress', 'progress@dashboard.it', '$2a$10$Yq.aC1NrfpC/grRBlc8dU.QgWG4bMvj3goJayS4DwypWXcrrHe756', 'PROGRESS');
INSERT INTO @SCHEMA.`c_user` (FIRSTNAME, LASTNAME, EMAIL, PASSWORD, ROLE)
  VALUES ('Dashboard', 'Analyst', 'analyst@dashboard.it', '$2a$10$Yq.aC1NrfpC/grRBlc8dU.QgWG4bMvj3goJayS4DwypWXcrrHe756', 'ANALYST');

