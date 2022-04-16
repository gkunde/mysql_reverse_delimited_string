CREATE FUNCTION `reverse_delimited_string`(
	`delimited_string` VARCHAR(255),
	`delimiter` VARCHAR(5)
) RETURNS varchar(255) CHARSET utf8mb4
BEGIN
	DECLARE `reversed_delimited_string` VARCHAR(255) DEFAULT '';

	WHILE LOCATE(`delimiter`, `delimited_string`) > 0 DO
		SET `reversed_delimited_string` = CONCAT(SUBSTRING_INDEX(`delimited_string`, `delimiter`, 1), `delimiter`, `reversed_delimited_string`);
		SET `delimited_string` = SUBSTR(`delimited_string`, LOCATE(`delimiter`, `delimited_string`) + LENGTH(`delimiter`));
	END WHILE;

	SET `reversed_delimited_string` = CONCAT(`delimited_string`, `delimiter`, `reversed_delimited_string`);
	SET `reversed_delimited_string` = SUBSTR(`reversed_delimited_string`, 1, LENGTH(`reversed_delimited_string`) - 1);

	RETURN `reversed_delimited_string`;
END
