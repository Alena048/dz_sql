task1

CREATE TABLE `dz_telephone`.`telephone` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ProductName` VARCHAR(45) NOT NULL,
  `Manufacture` VARCHAR(45) NOT NULL,
  `ProductCount` INT NOT NULL,
  `Price` INT NOT NULL,
  PRIMARY KEY (`id`));


INSERT INTO `dz_telephone`.`telephone` (`ProductName`, `Manufacture`, `ProductCount`, `Price`) VALUES ('IPhoneX', 'Apple', '3', '76000');
INSERT INTO `dz_telephone`.`telephone` (`ProductName`, `Manufacture`, `ProductCount`, `Price`) VALUES ('IPhone 8', 'Apple', '2', '51000');
INSERT INTO `dz_telephone`.`telephone` (`ProductName`, `Manufacture`, `ProductCount`, `Price`) VALUES ('Galaxy S9', 'Samsung', '2', '56000');
INSERT INTO `dz_telephone`.`telephone` (`ProductName`, `Manufacture`, `ProductCount`, `Price`) VALUES ('Galaxy S8', 'Samsung', '1', '41000');
INSERT INTO `dz_telephone`.`telephone` (`ProductName`, `Manufacture`, `ProductCount`, `Price`) VALUES ('P 20 Pro', 'Huawei', '5', '36000');

task2

SELECT ProductName, Manufacture, Price FROM dz_telephone.telephone where ProductCount > "2";

task3

SELECT * FROM dz_telephone.telephone where Manufacture = "Samsung";