CREATE VIEW `r_religion` AS
    SELECT 
        `vs`.`VALUE` AS `RELIGION`, COUNT(0) AS `INDIVIDUALS`
    FROM
        (@SCHEMA.@INDIVIDUAL_TABLE `i`
        JOIN @SCHEMA.vs_@INDIVIDUAL_COLUMN_RELIGION `vs` ON ((`i`.@INDIVIDUAL_COLUMN_RELIGION = `vs`.`ID`)))
    GROUP BY `vs`.`VALUE`;
