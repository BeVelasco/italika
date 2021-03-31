/*
SQLyog Ultimate v12.09 (32 bit)
MySQL - 10.3.25-MariaDB-0ubuntu0.20.04.1 : Database - italikaCRUD
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`italikaCRUD` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `italikaCRUD`;

/*Table structure for table `productoCTproducto` */

DROP TABLE IF EXISTS `productoCTproducto`;

CREATE TABLE `productoCTproducto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sku` varchar(30) DEFAULT NULL,
  `fert` varchar(30) DEFAULT NULL,
  `modelo` varchar(80) DEFAULT NULL,
  `tipo` char(1) DEFAULT NULL,
  `numserie` varchar(30) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `estatus` char(1) DEFAULT 'A',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Table structure for table `userCTusers` */

DROP TABLE IF EXISTS `userCTusers`;

CREATE TABLE `userCTusers` (
  `id` int(11) DEFAULT NULL,
  `nombre` varchar(80) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `estatus` char(1) DEFAULT 'A'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/* Procedure structure for procedure `addProduct` */

/*!50003 DROP PROCEDURE IF EXISTS  `addProduct` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `addProduct`(
	IN p_sku varchar(30),
	in p_fert VARCHAR(30),
	in p_modelo VARCHAR(80),
	in p_tipo char,
	in p_numserie VARCHAR(30),
	in p_fecha date
    )
BEGIN
	insert into `productoCTproducto` (sku, fert, modelo, tipo,numserie, fecha, estatus) values (p_sku, p_fert, p_modelo, p_tipo, p_numserie, p_fecha, 'A');
    END */$$
DELIMITER ;

/* Procedure structure for procedure `addUser` */

/*!50003 DROP PROCEDURE IF EXISTS  `addUser` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `addUser`(
in p_user varchar(80),
in p_pass varchar(200)
)
BEGIN
	insert into userCTusers (nombre, password) values (p_user, p_pass);
    END */$$
DELIMITER ;

/* Procedure structure for procedure `getProductiId` */

/*!50003 DROP PROCEDURE IF EXISTS  `getProductiId` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `getProductiId`(
	IN p_id INT
)
BEGIN
	select * from `productoCTproducto` as pcp
	where pcp.id = p_id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `listProduct` */

/*!50003 DROP PROCEDURE IF EXISTS  `listProduct` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `listProduct`()
BEGIN
	select * from `productoCTproducto`;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `modProduct` */

/*!50003 DROP PROCEDURE IF EXISTS  `modProduct` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `modProduct`(
	in p_id int,
	IN p_sku VARCHAR(30),
	IN p_fert VARCHAR(30),
	IN p_modelo VARCHAR(80),
	IN p_tipo CHAR,
	IN p_numserie VARCHAR(30),
	IN p_fecha DATE,
	in p_estatus char )
BEGIN
	UPDATE `productoCTproducto` SET  sku = p_sku, fert = p_fert, modelo = p_modelo, tipo = p_tipo,  numserie = p_numserie, fecha = p_fecha, estatus = p_estatus
		WHERE  id = p_id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `modUser` */

/*!50003 DROP PROCEDURE IF EXISTS  `modUser` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `modUser`(
in p_id Int,
in  p_pass varchar(200),
in p_estatus varchar(1)
)
BEGIN
	if p_pass <>'' then
		update `userCTusers` set password = p_pass, estatus = p_estatus
		where id = p_id;
	end if;
    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
