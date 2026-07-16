-- MySQL dump 10.13  Distrib 5.7.40, for Win64 (x86_64)
--
-- Host: localhost    Database: training_vrs
-- ------------------------------------------------------
-- Server version	5.7.40-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `training_vrs` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `training_vrs`;

--
-- Table structure for table `sys_email_queue`
--

DROP TABLE IF EXISTS `sys_email_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_email_queue` (
  `objid` varchar(50) NOT NULL,
  `refid` varchar(50) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `reportid` varchar(50) DEFAULT NULL,
  `dtsent` datetime DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` mediumtext,
  `errmsg` varchar(255) DEFAULT NULL,
  `connection` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_email_queue`
--

LOCK TABLES `sys_email_queue` WRITE;
/*!40000 ALTER TABLE `sys_email_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_email_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_email_template`
--

DROP TABLE IF EXISTS `sys_email_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_email_template` (
  `objid` varchar(50) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` mediumtext,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_email_template`
--

LOCK TABLES `sys_email_template` WRITE;
/*!40000 ALTER TABLE `sys_email_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_email_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_image`
--

DROP TABLE IF EXISTS `sys_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_image` (
  `objid` varchar(50) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` mediumtext,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_image`
--

LOCK TABLES `sys_image` WRITE;
/*!40000 ALTER TABLE `sys_image` DISABLE KEYS */;
INSERT INTO `sys_image` VALUES ('pedicab','Pedicab','iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAACXBIWXMAAA9hAAAPYQGoP6dpAAAKT2lDQ1BQaG90b3Nob3AgSUNDIHByb2ZpbGUAAHjanVNnVFPpFj333vRCS4iAlEtvUhUIIFJCi4AUkSYqIQkQSoghodkVUcERRUUEG8igiAOOjoCMFVEsDIoK2AfkIaKOg6OIisr74Xuja9a89+bN/rXXPues852zzwfACAyWSDNRNYAMqUIeEeCDx8TG4eQuQIEKJHAAEAizZCFz/SMBAPh+PDwrIsAHvgABeNMLCADATZvAMByH/w/qQplcAYCEAcB0kThLCIAUAEB6jkKmAEBGAYCdmCZTAKAEAGDLY2LjAFAtAGAnf+bTAICd+Jl7AQBblCEVAaCRACATZYhEAGg7AKzPVopFAFgwABRmS8Q5ANgtADBJV2ZIALC3AMDOEAuyAAgMADBRiIUpAAR7AGDIIyN4AISZABRG8lc88SuuEOcqAAB4mbI8uSQ5RYFbCC1xB1dXLh4ozkkXKxQ2YQJhmkAuwnmZGTKBNA/g88wAAKCRFRHgg/P9eM4Ors7ONo62Dl8t6r8G/yJiYuP+5c+rcEAAAOF0ftH+LC+zGoA7BoBt/qIl7gRoXgugdfeLZrIPQLUAoOnaV/Nw+H48PEWhkLnZ2eXk5NhKxEJbYcpXff5nwl/AV/1s+X48/Pf14L7iJIEyXYFHBPjgwsz0TKUcz5IJhGLc5o9H/LcL//wd0yLESWK5WCoU41EScY5EmozzMqUiiUKSKcUl0v9k4t8s+wM+3zUAsGo+AXuRLahdYwP2SycQWHTA4vcAAPK7b8HUKAgDgGiD4c93/+8//UegJQCAZkmScQAAXkQkLlTKsz/HCAAARKCBKrBBG/TBGCzABhzBBdzBC/xgNoRCJMTCQhBCCmSAHHJgKayCQiiGzbAdKmAv1EAdNMBRaIaTcA4uwlW4Dj1wD/phCJ7BKLyBCQRByAgTYSHaiAFiilgjjggXmYX4IcFIBBKLJCDJiBRRIkuRNUgxUopUIFVIHfI9cgI5h1xGupE7yAAygvyGvEcxlIGyUT3UDLVDuag3GoRGogvQZHQxmo8WoJvQcrQaPYw2oefQq2gP2o8+Q8cwwOgYBzPEbDAuxsNCsTgsCZNjy7EirAyrxhqwVqwDu4n1Y8+xdwQSgUXACTYEd0IgYR5BSFhMWE7YSKggHCQ0EdoJNwkDhFHCJyKTqEu0JroR+cQYYjIxh1hILCPWEo8TLxB7iEPENyQSiUMyJ7mQAkmxpFTSEtJG0m5SI+ksqZs0SBojk8naZGuyBzmULCAryIXkneTD5DPkG+Qh8lsKnWJAcaT4U+IoUspqShnlEOU05QZlmDJBVaOaUt2ooVQRNY9aQq2htlKvUYeoEzR1mjnNgxZJS6WtopXTGmgXaPdpr+h0uhHdlR5Ol9BX0svpR+iX6AP0dwwNhhWDx4hnKBmbGAcYZxl3GK+YTKYZ04sZx1QwNzHrmOeZD5lvVVgqtip8FZHKCpVKlSaVGyovVKmqpqreqgtV81XLVI+pXlN9rkZVM1PjqQnUlqtVqp1Q61MbU2epO6iHqmeob1Q/pH5Z/YkGWcNMw09DpFGgsV/jvMYgC2MZs3gsIWsNq4Z1gTXEJrHN2Xx2KruY/R27iz2qqaE5QzNKM1ezUvOUZj8H45hx+Jx0TgnnKKeX836K3hTvKeIpG6Y0TLkxZVxrqpaXllirSKtRq0frvTau7aedpr1Fu1n7gQ5Bx0onXCdHZ4/OBZ3nU9lT3acKpxZNPTr1ri6qa6UbobtEd79up+6Ynr5egJ5Mb6feeb3n+hx9L/1U/W36p/VHDFgGswwkBtsMzhg8xTVxbzwdL8fb8VFDXcNAQ6VhlWGX4YSRudE8o9VGjUYPjGnGXOMk423GbcajJgYmISZLTepN7ppSTbmmKaY7TDtMx83MzaLN1pk1mz0x1zLnm+eb15vft2BaeFostqi2uGVJsuRaplnutrxuhVo5WaVYVVpds0atna0l1rutu6cRp7lOk06rntZnw7Dxtsm2qbcZsOXYBtuutm22fWFnYhdnt8Wuw+6TvZN9un2N/T0HDYfZDqsdWh1+c7RyFDpWOt6azpzuP33F9JbpL2dYzxDP2DPjthPLKcRpnVOb00dnF2e5c4PziIuJS4LLLpc+Lpsbxt3IveRKdPVxXeF60vWdm7Obwu2o26/uNu5p7ofcn8w0nymeWTNz0MPIQ+BR5dE/C5+VMGvfrH5PQ0+BZ7XnIy9jL5FXrdewt6V3qvdh7xc+9j5yn+M+4zw33jLeWV/MN8C3yLfLT8Nvnl+F30N/I/9k/3r/0QCngCUBZwOJgUGBWwL7+Hp8Ib+OPzrbZfay2e1BjKC5QRVBj4KtguXBrSFoyOyQrSH355jOkc5pDoVQfujW0Adh5mGLw34MJ4WHhVeGP45wiFga0TGXNXfR3ENz30T6RJZE3ptnMU85ry1KNSo+qi5qPNo3ujS6P8YuZlnM1VidWElsSxw5LiquNm5svt/87fOH4p3iC+N7F5gvyF1weaHOwvSFpxapLhIsOpZATIhOOJTwQRAqqBaMJfITdyWOCnnCHcJnIi/RNtGI2ENcKh5O8kgqTXqS7JG8NXkkxTOlLOW5hCepkLxMDUzdmzqeFpp2IG0yPTq9MYOSkZBxQqohTZO2Z+pn5mZ2y6xlhbL+xW6Lty8elQfJa7OQrAVZLQq2QqboVFoo1yoHsmdlV2a/zYnKOZarnivN7cyzytuQN5zvn//tEsIS4ZK2pYZLVy0dWOa9rGo5sjxxedsK4xUFK4ZWBqw8uIq2Km3VT6vtV5eufr0mek1rgV7ByoLBtQFr6wtVCuWFfevc1+1dT1gvWd+1YfqGnRs+FYmKrhTbF5cVf9go3HjlG4dvyr+Z3JS0qavEuWTPZtJm6ebeLZ5bDpaql+aXDm4N2dq0Dd9WtO319kXbL5fNKNu7g7ZDuaO/PLi8ZafJzs07P1SkVPRU+lQ27tLdtWHX+G7R7ht7vPY07NXbW7z3/T7JvttVAVVN1WbVZftJ+7P3P66Jqun4lvttXa1ObXHtxwPSA/0HIw6217nU1R3SPVRSj9Yr60cOxx++/p3vdy0NNg1VjZzG4iNwRHnk6fcJ3/ceDTradox7rOEH0x92HWcdL2pCmvKaRptTmvtbYlu6T8w+0dbq3nr8R9sfD5w0PFl5SvNUyWna6YLTk2fyz4ydlZ19fi753GDborZ752PO32oPb++6EHTh0kX/i+c7vDvOXPK4dPKy2+UTV7hXmq86X23qdOo8/pPTT8e7nLuarrlca7nuer21e2b36RueN87d9L158Rb/1tWeOT3dvfN6b/fF9/XfFt1+cif9zsu72Xcn7q28T7xf9EDtQdlD3YfVP1v+3Njv3H9qwHeg89HcR/cGhYPP/pH1jw9DBY+Zj8uGDYbrnjg+OTniP3L96fynQ89kzyaeF/6i/suuFxYvfvjV69fO0ZjRoZfyl5O/bXyl/erA6xmv28bCxh6+yXgzMV70VvvtwXfcdx3vo98PT+R8IH8o/2j5sfVT0Kf7kxmTk/8EA5jz/GMzLdsAAAAgY0hSTQAAeiUAAICDAAD5/wAAgOkAAHUwAADqYAAAOpgAABdvkl/FRgAABJVJREFUeNrsmm2IFVUYx39zd67S3TJtezErN3v7kK26ltFWFAWGVARRQUIlEX0KsoiQoCKKNo2IIDCiLfpkKPRikVkm6aZrGb5sLn4I0sCMUrMXV8t2994+7H/g6TAzd+bemXEXemCYc86cOfP8z/N+7vVqtRrjmUqMcxr3APy5y7aEjbcBvcDFwK8J16oCgT5WdL8e2JUrgJCxipi/VP2pTaz/GdAJ/FyUCk0C+g3zzdJUoE/rFgJgE3BRxt+YAXwPnF6ECvUCHaa/GTgAnJRizSowDFwHTNZYC3AmcChvAIuB24FpwJ/Azbo3QquAu9R+GthdhArNFfMAO5pgHuAb0+4qygauNu3tTa79tWl3FAXgmgwB7AB+V/uSvIzYBXClaW9pcu0jwFa1J+YlBWvEM4F2tb8DfpL3qTSwriePMwDcpLE5wEbgWkXsY4o5wynXnilploD9vmPANpX4IMZ91hJKoN30ZwEfAwvM2A/AjcDehMy/DDxq+hv8CAMeAHYCpzUIINjhI9oxTwGtBxgERgTuKqlZD3CyIvawdrcElDV/P3ALMA94T8BbgbVe59I+a3RzTBLWm5Ga7gIuA4aA6U5eNF/5UlJ6Eng+zIjPA2arPSgJZEWBNyvLG1laB3Sr/ZokdSFwLnCW+kEw7HeZtwA6NRngS+BwhgDW1YkH3UbqAHukMgfUDzb2sTgv1GbGzgAul/63pNB/L2Rsn8P0+SFzjgJPAC8AC4F3zLOzpTYrgPVxAOzHr5C7GzHjaQvnmknsTjHjLRHzXwQeFqMV4C3ZzWbgL+CBNCXliBhoMd7AT3mVzVVNIL0qsEjtHvW/Ffg7gb/rBbKSk4R1GcNrlGpyia7vDqPJSreH9M2D4ukhYE2SSOxF7NJQBkY8EvOsA3jKeJqAHlc9sSZpKuHlWHeHrV0G3ldwSvtu4QAsBRXZ7jql6wWqp1vr1SRFnwt1AB9FMH9c99U6yvkFeDapBKo5Mm1tamHEnNVKHmeo/RKwVICXAMvqAZhnxloVcCrAhCYZ3yPvEkfPqWa+TRG4G7hB1yNOHAkF8ArwoJP27i1IpXrEfOBK2ySFgCbIBiZF2YIvhi2tB1Y2eSJnjbYLuDfkWZ+zcTWpctVxwdU4JxN2tLgJeCPDXd4XASAYux84Van8qpC4UUoLIGvPFPbxJbKPc5T3BEndq47Re0ppUgHIm7YreUNGe7f8/mxlwm5WUBprAJY7/ZW636NiPQzAmAlkv0nP06qcN1YAvKtCP4pxV10OqY7eqAg+PQmAPH/1WxHzrCx+DjoSm6aTjVtVoZ0wCfwIfBHzfJu80rbgzEc2ulNV4iz+e94aacSLVBO3ZsD0MZ14oEOtOOoHphgpderdZ+JyNd9RHY9arR3Pa89BAm8nmLNBRr4Y+AN4vV6iWTI6vxz4PEfd/ypF5Ebp9D/1JpccHZyP5w1mzPwAcF+K+anqcN85g4HRM8s3Ve4drVPTxvnqKcCnwB0p1iBtCu8bMQX++TCjv5NNVB7SiFv1xPTxBoNd4iLLZ/QocQHwYUSJVzR9ovvWRDv1/79VTjD9OwCncfibBGodTAAAAABJRU5ErkJggg=='),('tricycle','Tricycle Logo','iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAACXBIWXMAAA9hAAAPYQGoP6dpAAAKT2lDQ1BQaG90b3Nob3AgSUNDIHByb2ZpbGUAAHjanVNnVFPpFj333vRCS4iAlEtvUhUIIFJCi4AUkSYqIQkQSoghodkVUcERRUUEG8igiAOOjoCMFVEsDIoK2AfkIaKOg6OIisr74Xuja9a89+bN/rXXPues852zzwfACAyWSDNRNYAMqUIeEeCDx8TG4eQuQIEKJHAAEAizZCFz/SMBAPh+PDwrIsAHvgABeNMLCADATZvAMByH/w/qQplcAYCEAcB0kThLCIAUAEB6jkKmAEBGAYCdmCZTAKAEAGDLY2LjAFAtAGAnf+bTAICd+Jl7AQBblCEVAaCRACATZYhEAGg7AKzPVopFAFgwABRmS8Q5ANgtADBJV2ZIALC3AMDOEAuyAAgMADBRiIUpAAR7AGDIIyN4AISZABRG8lc88SuuEOcqAAB4mbI8uSQ5RYFbCC1xB1dXLh4ozkkXKxQ2YQJhmkAuwnmZGTKBNA/g88wAAKCRFRHgg/P9eM4Ors7ONo62Dl8t6r8G/yJiYuP+5c+rcEAAAOF0ftH+LC+zGoA7BoBt/qIl7gRoXgugdfeLZrIPQLUAoOnaV/Nw+H48PEWhkLnZ2eXk5NhKxEJbYcpXff5nwl/AV/1s+X48/Pf14L7iJIEyXYFHBPjgwsz0TKUcz5IJhGLc5o9H/LcL//wd0yLESWK5WCoU41EScY5EmozzMqUiiUKSKcUl0v9k4t8s+wM+3zUAsGo+AXuRLahdYwP2SycQWHTA4vcAAPK7b8HUKAgDgGiD4c93/+8//UegJQCAZkmScQAAXkQkLlTKsz/HCAAARKCBKrBBG/TBGCzABhzBBdzBC/xgNoRCJMTCQhBCCmSAHHJgKayCQiiGzbAdKmAv1EAdNMBRaIaTcA4uwlW4Dj1wD/phCJ7BKLyBCQRByAgTYSHaiAFiilgjjggXmYX4IcFIBBKLJCDJiBRRIkuRNUgxUopUIFVIHfI9cgI5h1xGupE7yAAygvyGvEcxlIGyUT3UDLVDuag3GoRGogvQZHQxmo8WoJvQcrQaPYw2oefQq2gP2o8+Q8cwwOgYBzPEbDAuxsNCsTgsCZNjy7EirAyrxhqwVqwDu4n1Y8+xdwQSgUXACTYEd0IgYR5BSFhMWE7YSKggHCQ0EdoJNwkDhFHCJyKTqEu0JroR+cQYYjIxh1hILCPWEo8TLxB7iEPENyQSiUMyJ7mQAkmxpFTSEtJG0m5SI+ksqZs0SBojk8naZGuyBzmULCAryIXkneTD5DPkG+Qh8lsKnWJAcaT4U+IoUspqShnlEOU05QZlmDJBVaOaUt2ooVQRNY9aQq2htlKvUYeoEzR1mjnNgxZJS6WtopXTGmgXaPdpr+h0uhHdlR5Ol9BX0svpR+iX6AP0dwwNhhWDx4hnKBmbGAcYZxl3GK+YTKYZ04sZx1QwNzHrmOeZD5lvVVgqtip8FZHKCpVKlSaVGyovVKmqpqreqgtV81XLVI+pXlN9rkZVM1PjqQnUlqtVqp1Q61MbU2epO6iHqmeob1Q/pH5Z/YkGWcNMw09DpFGgsV/jvMYgC2MZs3gsIWsNq4Z1gTXEJrHN2Xx2KruY/R27iz2qqaE5QzNKM1ezUvOUZj8H45hx+Jx0TgnnKKeX836K3hTvKeIpG6Y0TLkxZVxrqpaXllirSKtRq0frvTau7aedpr1Fu1n7gQ5Bx0onXCdHZ4/OBZ3nU9lT3acKpxZNPTr1ri6qa6UbobtEd79up+6Ynr5egJ5Mb6feeb3n+hx9L/1U/W36p/VHDFgGswwkBtsMzhg8xTVxbzwdL8fb8VFDXcNAQ6VhlWGX4YSRudE8o9VGjUYPjGnGXOMk423GbcajJgYmISZLTepN7ppSTbmmKaY7TDtMx83MzaLN1pk1mz0x1zLnm+eb15vft2BaeFostqi2uGVJsuRaplnutrxuhVo5WaVYVVpds0atna0l1rutu6cRp7lOk06rntZnw7Dxtsm2qbcZsOXYBtuutm22fWFnYhdnt8Wuw+6TvZN9un2N/T0HDYfZDqsdWh1+c7RyFDpWOt6azpzuP33F9JbpL2dYzxDP2DPjthPLKcRpnVOb00dnF2e5c4PziIuJS4LLLpc+Lpsbxt3IveRKdPVxXeF60vWdm7Obwu2o26/uNu5p7ofcn8w0nymeWTNz0MPIQ+BR5dE/C5+VMGvfrH5PQ0+BZ7XnIy9jL5FXrdewt6V3qvdh7xc+9j5yn+M+4zw33jLeWV/MN8C3yLfLT8Nvnl+F30N/I/9k/3r/0QCngCUBZwOJgUGBWwL7+Hp8Ib+OPzrbZfay2e1BjKC5QRVBj4KtguXBrSFoyOyQrSH355jOkc5pDoVQfujW0Adh5mGLw34MJ4WHhVeGP45wiFga0TGXNXfR3ENz30T6RJZE3ptnMU85ry1KNSo+qi5qPNo3ujS6P8YuZlnM1VidWElsSxw5LiquNm5svt/87fOH4p3iC+N7F5gvyF1weaHOwvSFpxapLhIsOpZATIhOOJTwQRAqqBaMJfITdyWOCnnCHcJnIi/RNtGI2ENcKh5O8kgqTXqS7JG8NXkkxTOlLOW5hCepkLxMDUzdmzqeFpp2IG0yPTq9MYOSkZBxQqohTZO2Z+pn5mZ2y6xlhbL+xW6Lty8elQfJa7OQrAVZLQq2QqboVFoo1yoHsmdlV2a/zYnKOZarnivN7cyzytuQN5zvn//tEsIS4ZK2pYZLVy0dWOa9rGo5sjxxedsK4xUFK4ZWBqw8uIq2Km3VT6vtV5eufr0mek1rgV7ByoLBtQFr6wtVCuWFfevc1+1dT1gvWd+1YfqGnRs+FYmKrhTbF5cVf9go3HjlG4dvyr+Z3JS0qavEuWTPZtJm6ebeLZ5bDpaql+aXDm4N2dq0Dd9WtO319kXbL5fNKNu7g7ZDuaO/PLi8ZafJzs07P1SkVPRU+lQ27tLdtWHX+G7R7ht7vPY07NXbW7z3/T7JvttVAVVN1WbVZftJ+7P3P66Jqun4lvttXa1ObXHtxwPSA/0HIw6217nU1R3SPVRSj9Yr60cOxx++/p3vdy0NNg1VjZzG4iNwRHnk6fcJ3/ceDTradox7rOEH0x92HWcdL2pCmvKaRptTmvtbYlu6T8w+0dbq3nr8R9sfD5w0PFl5SvNUyWna6YLTk2fyz4ydlZ19fi753GDborZ752PO32oPb++6EHTh0kX/i+c7vDvOXPK4dPKy2+UTV7hXmq86X23qdOo8/pPTT8e7nLuarrlca7nuer21e2b36RueN87d9L158Rb/1tWeOT3dvfN6b/fF9/XfFt1+cif9zsu72Xcn7q28T7xf9EDtQdlD3YfVP1v+3Njv3H9qwHeg89HcR/cGhYPP/pH1jw9DBY+Zj8uGDYbrnjg+OTniP3L96fynQ89kzyaeF/6i/suuFxYvfvjV69fO0ZjRoZfyl5O/bXyl/erA6xmv28bCxh6+yXgzMV70VvvtwXfcdx3vo98PT+R8IH8o/2j5sfVT0Kf7kxmTk/8EA5jz/GMzLdsAAAAgY0hSTQAAeiUAAICDAAD5/wAAgOkAAHUwAADqYAAAOpgAABdvkl/FRgAABDpJREFUeNrsml2IFWUYx39zzqq5bmmEaaWs+ZFaoahBGkqaGuZFImpICokf1EWmGYY3ixJeZBlGdSOoSJqFoWAUZIkS5u6G2EWmFWiJYmWFru7S+rV7vNj/oceXmTlz9pzzToIPHOZ555155/3P8/3MCXK5HLcyZbjFqWr0uoaouUXAU8DfRayXF2cWqAHeAn6uKICI888Cm8qw/hBggm8VmgLsKdP644GvfQJ4pgIPnAJ84QvAtBCd7uzP0nRgrg8bWCbjW6jxcuA94IEiDfl3YLNZ51PgE19GPNjw+3Q824m1DxoA9/tSoXuBx8WfAo6XsPYRw48EevkA8BjQTfz3Ja59FDgjvgYY6gPAk44KlEr1hh/kA8BYw+8vw/pfGf6RShtxL2C0+MtyqeOA6k6u/Q/wsBn3AdYDrwF/6NnbgJVAe8I1a/VSBgBdgXoLYJR0FaANWCx7yIXkOlFjS9eB7mY8EDgp/j4dV0htX9Ba1SEakgPOS4JbgbvN/BULwOYsm4A64KGEyVvU3BlgBzAVmAQsBZZI2u3i1wM/JpRAA/BElArZiW+AZscVdpYaBQBgBHAMaNL4HanWSuAnYC3QW9K7phcwAnhT178eZQPdjP5fAPaW0c72Spr5ePCxM79GAO6StFxq1nEL8G0UgP5CDtAC9JD+VseoTZBg838BV814WMg1/wKr9JYnAQec+Xd1XBrnhbLmXD9gp5B3KRFAs+M+ozzaOuAVue6xwHc6/zYwBpghoIlyoUCeoVzFsgXaFnPdArnIQ8CvwB3SjA+AzwrFgSDkoQF+qV7la29VcqiOeDVJJPa12TCpTlAR1WLscAmwXV7qepJI7AuAfc7TwEZF1bAo3hJhg6lK4JqOdXKvAyKu666XGyQF4IsuAS8Db4TMtRvPNRjoCzyXFICv9tw84P2IzW8GvlQSWaN05mwhI64ymWhadFrFTq0StakmZXgJeFAq1RolgdnyvWnQb8CjSt9rlaVONPM9gD+VyUZKYFpKm7+inlGzUSNXldsKudFMCgErT2sVcQcpkRwlUO6Gs3F7rPJowJYOCwBK3vqLH2dcbd65ZJ1crWAu5IMWG36DuiG1SuszIXvM/J8AbAF+cAAATAbudKJvrlBelsYHjg8LpBqBM26Ly2J9AzimcjVq8xlnT61Kq+uA1dzc9kxFhbbHzHWVsTY5BdEwYJZ+p4ETaUpgZ8zcL8Bw/usIXhSgduB5YE5YzexTAgfl96PopIqafK7UU+XlavWFUreBXQmuOUDHt4Q87YjbvO185W/eTWW+G59TVy0JHTGpRsH2fsapgmYRBI0VADBTOp2Eupi9ZZMAyPvde0w4/6hMG2+i44NJQxH3FNVMrjLJk+27zKeji9zTyU2KqX0zKkhai7z3YkiVFgugAXgR+DxEb8+lEKkbFXmPOjEh/E3d/rPHbQCl0Y0BAGeg7IOrETiBAAAAAElFTkSuQmCC');
/*!40000 ALTER TABLE `sys_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_message_queue`
--

DROP TABLE IF EXISTS `sys_message_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_message_queue` (
  `objid` varchar(50) NOT NULL,
  `state` int(11) DEFAULT NULL,
  `dtsent` datetime DEFAULT NULL,
  `email` varchar(355) DEFAULT NULL,
  `mobileno` varchar(50) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` mediumtext,
  `errmsg` varchar(255) DEFAULT NULL,
  `connection` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_message_queue`
--

LOCK TABLES `sys_message_queue` WRITE;
/*!40000 ALTER TABLE `sys_message_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_message_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_message_template`
--

DROP TABLE IF EXISTS `sys_message_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_message_template` (
  `objid` varchar(50) NOT NULL,
  `statement` mediumtext,
  `subject` varchar(255) DEFAULT NULL,
  `message` mediumtext,
  `emailfield` varchar(255) DEFAULT NULL,
  `mobilenofield` varchar(255) DEFAULT NULL,
  `connection` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_message_template`
--

LOCK TABLES `sys_message_template` WRITE;
/*!40000 ALTER TABLE `sys_message_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_message_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_report_def`
--

DROP TABLE IF EXISTS `sys_report_def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_report_def` (
  `name` varchar(100) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `template` varchar(255) DEFAULT NULL,
  `reportheader` varchar(100) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `statement` mediumtext,
  `permission` varchar(100) DEFAULT NULL,
  `parameters` mediumtext,
  `querytype` varchar(50) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `properties` mediumtext,
  `paramhandler` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `fk_sys_report_def_template` (`template`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_report_def`
--

LOCK TABLES `sys_report_def` WRITE;
/*!40000 ALTER TABLE `sys_report_def` DISABLE KEYS */;
INSERT INTO `sys_report_def` VALUES ('franchise_permit','Franchise Permit Report',NULL,NULL,NULL,NULL,NULL,'def svc = SERVICE.lookup( \"VrsDocService\" );\nreturn svc.getDocInfo( [objid: PARAMS.objid] );',NULL,'[]','SCRIPT','DEPLOYED',NULL,'[]',NULL),('mtop_franchise_list_report','MTOP Franchise List','trimobile_reports','franchise_list',NULL,NULL,1,'select acctno, apptype, owner_name from vw_vrs_franchise \nwhere vehicletypeid = \'mtop\'',NULL,'[[prompt:1,name:\"objid\",caption:\"Objid\",type:\"monthlist\"]]','SQL','DEPLOYED',NULL,'[]',NULL),('mtop_petition','Petition','vrs_txn:pedicab:form:reports',NULL,NULL,NULL,NULL,NULL,NULL,'[]',NULL,'DEPLOYED',NULL,'[]',NULL),('sample','test','vrs_txn:trimobile:form:reports',NULL,NULL,NULL,1,'def objid = PARAMS.objid;\ndef name = PARAMS.name;\n\nreturn PARAMS;',NULL,'[[prompt:1,name:\"objid\",caption:\"objid\",type:\"text\"],[prompt:1,name:\"name\",caption:\"name\",type:\"text\"]]','SCRIPT','DRAFT',NULL,'[]',NULL),('statement_undertaking','Report Form 2','vrs_txn:pedicab:form:reports',NULL,NULL,NULL,1,NULL,NULL,'[]',NULL,'DEPLOYED',NULL,'[]',NULL),('trimobile_franchise_permit','Trimobile Franchise Permit','vrs_txn:trimobile:form:reports',NULL,NULL,NULL,2,'return [template: \'mtop_franchise\' ]',NULL,'[]','SCRIPT','DEPLOYED',NULL,'[]',NULL),('trimobile_permit','Print Trimobile Permit','vrs_txn:trimobile:form:reports','mtop_permit',NULL,NULL,1,'def txnEm = EM.lookup( \"vw_vrs_txn\" );\ndef txn = txnEm.find( [objid: PARAMS.objid] ).first();\nif(!txn.permit?.objid) throw new Exception(\"Permit is not yet issued\"); \n\ndef svc = SERVICE.lookup( \"VrsDocService\" );\ndef info = svc.getDocInfo( [issuanceid: txn.permit.objid ] );\ninfo.qrcode = \"qrcode:\" + info.issueno;\n\nreturn info;',NULL,'[]','SCRIPT','DEPLOYED',NULL,'[]',NULL),('vrs_bill_printout','Print Bill','vrs_bill:form:reports','vrs_assessment',NULL,NULL,1,'def svc = SERVICE.lookup( \"VrsBillingService\" );\ndef bi = svc.getBillingInfo(  [billid: PARAMS.objid ] );\nreturn  bi;',NULL,'[]','SCRIPT','DEPLOYED','Prints the assessment billing form','[]',NULL),('vrs_doc_report','VRS Doc Report',NULL,NULL,NULL,NULL,NULL,'def svc = SERVICE.lookup( \"VrsDocService\" );\ndef info = svc.getDocInfo( [objid: PARAMS.objid] );\ninfo.qrcode = \"qrcode:\" + info.issueno;\n\nreturn info;\n',NULL,'[]','SCRIPT','DEPLOYED','Data to fetch VRS documents','[]',NULL);
/*!40000 ALTER TABLE `sys_report_def` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_report_subreport_def`
--

DROP TABLE IF EXISTS `sys_report_subreport_def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_report_subreport_def` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `reportid` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `querytype` varchar(50) DEFAULT NULL,
  `statement` mediumtext,
  PRIMARY KEY (`objid`),
  KEY `fk_sys_report_subreport_def_reportid` (`reportid`),
  CONSTRAINT `fk_sys_report_subreport_def_reportid` FOREIGN KEY (`reportid`) REFERENCES `sys_report_def` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_report_subreport_def`
--

LOCK TABLES `sys_report_subreport_def` WRITE;
/*!40000 ALTER TABLE `sys_report_subreport_def` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_report_subreport_def` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_report_template`
--

DROP TABLE IF EXISTS `sys_report_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_report_template` (
  `name` varchar(100) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `filepath` varchar(255) NOT NULL,
  `master` int(11) DEFAULT NULL,
  `icon` mediumblob,
  PRIMARY KEY (`name`),
  UNIQUE KEY `uix_sys_report_template_filepath` (`filepath`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_report_template`
--

LOCK TABLES `sys_report_template` WRITE;
/*!40000 ALTER TABLE `sys_report_template` DISABLE KEYS */;
INSERT INTO `sys_report_template` VALUES ('franchise_list','Franchise List','reports/franchise_list.jasper',0,NULL),('mtop_application','MTOP Application','formreports/mtop_application.jasper',0,NULL),('mtop_permit','MTOP Permit','formreports/mtop_permit.jasper',0,NULL),('vrs_assessment','VRS Assessment','formreports/assessment.jasper',0,NULL);
/*!40000 ALTER TABLE `sys_report_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `name` varchar(50) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `system` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES ('ADMIN','ADMIN',0),('APPROVER','APPROVER',0),('ASSESSOR','ASSESSOR',0),('COORDINATOR','COORDINATOR',0),('MASTER','MASTER',0),('PROCESSOR','PROCESSOR',0),('RELEASER','RELEASER',0),('REPORT_EDITOR','REPORT EDITOR',0),('RULE_AUTHOR','RULE AUTHOR',0),('SHARED','SHARED',1),('SYSTEM','SYSTEM',0),('WF_EDITOR','WF_EDITOR',0);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_permission`
--

DROP TABLE IF EXISTS `sys_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_permission` (
  `objid` varchar(100) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `object` varchar(25) DEFAULT NULL,
  `permission` varchar(25) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `fk_sys_role_permission_role` (`role`),
  CONSTRAINT `fk_sys_role_permission_role` FOREIGN KEY (`role`) REFERENCES `sys_role` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_permission`
--

LOCK TABLES `sys_role_permission` WRITE;
/*!40000 ALTER TABLE `sys_role_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule`
--

DROP TABLE IF EXISTS `sys_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `ruleset` varchar(50) NOT NULL,
  `rulegroup` varchar(50) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `description` longtext,
  `salience` int(11) DEFAULT NULL,
  `effectivefrom` date DEFAULT NULL,
  `effectiveto` date DEFAULT NULL,
  `dtfiled` datetime DEFAULT NULL,
  `user_objid` varchar(50) DEFAULT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `noloop` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `rulegroup` (`rulegroup`,`ruleset`),
  KEY `ruleset` (`ruleset`),
  CONSTRAINT `sys_rule_ibfk_1` FOREIGN KEY (`rulegroup`, `ruleset`) REFERENCES `sys_rulegroup` (`name`, `ruleset`),
  CONSTRAINT `sys_rule_ibfk_2` FOREIGN KEY (`ruleset`) REFERENCES `sys_ruleset` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule`
--

LOCK TABLES `sys_rule` WRITE;
/*!40000 ALTER TABLE `sys_rule` DISABLE KEYS */;
INSERT INTO `sys_rule` VALUES ('RUL-16f4340b:183cf6cd6d6:-7989','DEPLOYED','ASSERT_DUE_DATE','vrsbilling','initial','Assert Due Date',NULL,50000,NULL,NULL,'2022-10-13 13:09:01','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL-2c08c905:186b4861e0a:-7af2','DEPLOYED','SET_PERMIT_EXPIRYDATE','vrsdoc','issuance','set permit expiry date',NULL,50000,NULL,NULL,'2023-03-06 09:53:23','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL-31609ab4:186abb24eb9:-79c0','DEPLOYED','SET_FRANCHISE_EXPIRY_DATE','vrsdoc','issuance','set franchise expiry date',NULL,50000,NULL,NULL,'2023-03-05 17:02:53','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL-45e8bc36:186ba1dc867:-7094','APPROVED','SUPERVISION_FEE','vrspayment','map-account','SUPERVISION FEE',NULL,43000,NULL,NULL,'2023-03-07 12:05:05','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL-45e8bc36:186ba1dc867:-7199','APPROVED','LEGAL_RESEARCH','vrspayment','map-account','LEGAL RESEARCH',NULL,44000,NULL,NULL,'2023-03-07 12:01:21','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL-45e8bc36:186ba1dc867:-7297','APPROVED','LEGALIZATION_FEE','vrspayment','map-account','LEGALIZATION FEE',NULL,45000,NULL,NULL,'2023-03-07 11:59:57','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL-45e8bc36:186ba1dc867:-7399','APPROVED','FILING_FEE','vrspayment','map-account','FILING FEE',NULL,46000,NULL,NULL,'2023-03-07 11:58:48','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL-45e8bc36:186ba1dc867:-74ea','APPROVED','BODY_NO_FEE','vrspayment','map-account','BODY NO. FEE',NULL,47000,NULL,NULL,'2023-03-07 11:56:16','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL-45e8bc36:186ba1dc867:-75e8','APPROVED','FRANCHISE_FEE','vrspayment','map-account','FRANCHISE FEE',NULL,48000,NULL,NULL,'2023-03-07 11:54:48','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL-45e8bc36:186ba1dc867:-77bb','APPROVED','CERT_FEE','vrspayment','map-account','CERTIFICATION FEE',NULL,49000,NULL,NULL,'2023-03-07 11:50:15','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL-45e8bc36:186ba1dc867:-7ced','APPROVED','TRIMOBILE_LEGALIZATION_FEE_RENEWAL_WOUT_FRANCHISE','vrsbilling','compute-fees','TRIMOBILE add legalization fee for renewal captured without franchise',NULL,50000,NULL,NULL,'2023-03-07 11:41:01','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL1dbf685:183ca5a944b:-6116','APPROVED','MAYORS_PERMIT_MTOP','vrspayment','map-account','MAYORS PERMIT MTOP ',NULL,50000,NULL,NULL,'2022-10-12 15:34:30','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL299990a3:186b5702e3c:-68f2','APPROVED','TRIMOBILE_LEGALIZATION_FEE','vrsbilling','compute-fees','TRIMOBILE APPLICABLE TO NEW AND CHANGE MOTOR',NULL,50000,NULL,NULL,'2023-03-06 15:36:32','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL299990a3:186b5702e3c:-6bd1','APPROVED','TRIMOBILE_NEW_RENEW','vrsbilling','compute-fees','TRIMOBILE NEW AND RENEWAL',NULL,50000,NULL,NULL,'2023-03-06 15:30:01','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL4808e68a:18686912375:-7b4b','APPROVED','SURCHARGE_MAPPING','vrspayment','map-account','surcharge mapping',NULL,30000,NULL,NULL,'2023-02-25 12:53:21','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL51a47117:186ba0179c8:-78c8','APPROVED','TRIMOBILE_LEGALIZATION_FEE_FOR_RENEWAL','vrsbilling','compute-fees','TRIMOBILE add legalization fee for renewal only if the franchise is expired',NULL,50000,NULL,NULL,'2023-03-07 11:24:27','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL5ab947a6:186c6423c21:-7bde','DEPLOYED','ADD_TRIMOBILE_PERMIT','vrsdoc','initial','Add TRIMOBILE Permit',NULL,1000,NULL,NULL,'2023-03-09 20:11:08','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL664a91a3:1837d695764:-6973','DEPLOYED','CREDIT_EXCESS_PAYMENT','vrspayment','apply-payment','Credit Excess Payment',NULL,1000,NULL,NULL,'2022-09-27 13:48:02','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL664a91a3:1837d695764:-6dd4','DEPLOYED','APPLY_BILLITEM_PAYMENT','vrspayment','apply-payment','Apply Bill Item Payment',NULL,50000,NULL,NULL,'2022-09-27 13:37:13','USR-1b82c604:14cc29913bb:-7fec','ADMIN',0),('RUL66efd98c:18676a8376d:-7296','DEPLOYED','CALC_CURRENT_SURCHARGE','vrsbilling','compute-surcharge','calculate current surcharge',NULL,50000,NULL,NULL,'2023-02-22 10:03:44','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL6da9fa81:183789e12da:-79b1','DEPLOYED','SET_BILL_DUE_DATE','vrsbilling','summary','Set Bill Due Date',NULL,50000,NULL,NULL,'2022-09-26 15:18:51','USR-1b82c604:14cc29913bb:-7fec','ADMIN',1),('RUL765b50be:1966169b2e1:-2c5e','DEPLOYED','MTOP.FILING.FEE.RENEWAL','vrspayment','map-account','MTOP.FILING.FEE.RENEWAL',NULL,50000,NULL,NULL,'2025-04-23 16:14:00','USR-5b2bba0f:16d19290a2d:-7df2','FRITZIEMAE',1),('RUL765b50be:1966169b2e1:-37d3','DEPLOYED','DOC.STAMP','vrspayment','map-account','DOC.STAMP',NULL,50000,NULL,NULL,'2025-04-23 16:02:40','USR-5b2bba0f:16d19290a2d:-7df2','FRITZIEMAE',1),('RUL765b50be:1966169b2e1:-3da2','DEPLOYED','CERTIFICATION_FEE','vrspayment','map-account','CERTIFICATION_FEE',NULL,50000,NULL,NULL,'2025-04-23 15:57:16','USR-5b2bba0f:16d19290a2d:-7df2','FRITZIEMAE',1),('RUL765b50be:1966169b2e1:-42d2','DEPLOYED','SUP.AND_REG.FEE','vrspayment','map-account','SUP.AND_REG.FEE',NULL,50000,NULL,NULL,'2025-04-23 15:51:47','USR-5b2bba0f:16d19290a2d:-7df2','FRITZIEMAE',1),('RUL765b50be:1966169b2e1:-5327','DRAFT','MTOP_FILLINGFEE_(RENEWAL)','vrspayment','map-account','MTOP_FILLINGFEE_RENEWAL',NULL,50000,NULL,NULL,'2025-04-23 15:37:54','USR-5b2bba0f:16d19290a2d:-7df2','FRITZIEMAE',1),('RUL765b50be:1966169b2e1:-5a53','DEPLOYED','ROAD_WORTHY','vrspayment','map-account','ROAD_WORTHY',NULL,50000,NULL,NULL,'2025-04-23 15:33:52','USR-5b2bba0f:16d19290a2d:-7df2','FRITZIEMAE',1),('RUL765b50be:1966169b2e1:-6adb','DEPLOYED','STICKER','vrspayment','map-account','STICKER',NULL,50000,NULL,NULL,'2025-04-23 15:21:28','USR-5b2bba0f:16d19290a2d:-7df2','FRITZIEMAE',1),('RUL765b50be:1966169b2e1:-7a6b','DEPLOYED','MTOP_NEW_AND_RENEW','vrsbilling','compute-fees','MTOP_NEW_AND_RENEW',NULL,50000,NULL,NULL,'2025-04-23 14:50:36','USR-5b2bba0f:16d19290a2d:-7df2','FRITZIEMAE',1);
/*!40000 ALTER TABLE `sys_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_action`
--

DROP TABLE IF EXISTS `sys_rule_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_action` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `actiondef_objid` varchar(50) DEFAULT NULL,
  `actiondef_name` varchar(50) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `parentid` (`parentid`),
  KEY `sys_rule_action_actiondef` (`actiondef_objid`),
  CONSTRAINT `sys_rule_action_actiondef` FOREIGN KEY (`actiondef_objid`) REFERENCES `sys_rule_actiondef` (`objid`),
  CONSTRAINT `sys_rule_action_ibfk_1` FOREIGN KEY (`parentid`) REFERENCES `sys_rule` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_action`
--

LOCK TABLES `sys_rule_action` WRITE;
/*!40000 ALTER TABLE `sys_rule_action` DISABLE KEYS */;
INSERT INTO `sys_rule_action` VALUES ('RA-1259d1cf:186c6483b89:-7ffe','RUL5ab947a6:186c6423c21:-7bde','vrs.actions.AddVrsDoc','add-vrs-doc',0),('RA-2e4aa27:183cafd1647:-7fb4','RUL1dbf685:183ca5a944b:-6116','treasury.actions.AddCashReceiptItem','add-cashreceipt-item',0),('RA-64a7157b:186b57a138f:-7fe1','RUL299990a3:186b5702e3c:-68f2','vrs.actions.AddVrsBillItem','add-vrs-billitem',0),('RA-64a7157b:186b57a138f:-7fe6','RUL299990a3:186b5702e3c:-6bd1','vrs.actions.AddVrsBillItem','add-vrs-billitem',0),('RA-64a7157b:186b57a138f:-7fe9','RUL299990a3:186b5702e3c:-6bd1','vrs.actions.AddVrsBillItem','add-vrs-billitem',0),('RA-64a7157b:186b57a138f:-7fec','RUL299990a3:186b5702e3c:-6bd1','vrs.actions.AddVrsBillItem','add-vrs-billitem',0),('RA-64a7157b:186b57a138f:-7fef','RUL299990a3:186b5702e3c:-6bd1','vrs.actions.AddVrsBillItem','add-vrs-billitem',0),('RA-64a7157b:186b57a138f:-7ff2','RUL299990a3:186b5702e3c:-6bd1','vrs.actions.AddVrsBillItem','add-vrs-billitem',0),('RA-64a7157b:186b57a138f:-7ff5','RUL299990a3:186b5702e3c:-6bd1','vrs.actions.AddVrsBillItem','add-vrs-billitem',0),('RA-64a7157b:186b57a138f:-7ff8','RUL299990a3:186b5702e3c:-6bd1','vrs.actions.AddVrsBillItem','add-vrs-billitem',0),('RA1448e246:186ba1ffea1:-7f4c','RUL-45e8bc36:186ba1dc867:-7094','treasury.actions.AddCashReceiptItem','add-cashreceipt-item',0),('RA1448e246:186ba1ffea1:-7f57','RUL-45e8bc36:186ba1dc867:-7199','treasury.actions.AddCashReceiptItem','add-cashreceipt-item',0),('RA1448e246:186ba1ffea1:-7f62','RUL-45e8bc36:186ba1dc867:-7297','treasury.actions.AddCashReceiptItem','add-cashreceipt-item',0),('RA1448e246:186ba1ffea1:-7f6d','RUL-45e8bc36:186ba1dc867:-7399','treasury.actions.AddCashReceiptItem','add-cashreceipt-item',0),('RA1448e246:186ba1ffea1:-7f78','RUL-45e8bc36:186ba1dc867:-74ea','treasury.actions.AddCashReceiptItem','add-cashreceipt-item',0),('RA1448e246:186ba1ffea1:-7f83','RUL-45e8bc36:186ba1dc867:-75e8','treasury.actions.AddCashReceiptItem','add-cashreceipt-item',0),('RA1448e246:186ba1ffea1:-7f8e','RUL-45e8bc36:186ba1dc867:-77bb','treasury.actions.AddCashReceiptItem','add-cashreceipt-item',0),('RA1448e246:186ba1ffea1:-7fea','RUL-45e8bc36:186ba1dc867:-7ced','vrs.actions.AddVrsBillItem','add-vrs-billitem',0),('RACT-16f4340b:183cf6cd6d6:-6d8f','RUL-16f4340b:183cf6cd6d6:-7989','treasury.actions.AssertVarDate','assert-var-date',0),('RACT-2c08c905:186b4861e0a:-778a','RUL-2c08c905:186b4861e0a:-7af2','vrs.actions.UpdateVrsDoc','update-vrs-doc',0),('RACT-31609ab4:186abb24eb9:-7385','RUL-31609ab4:186abb24eb9:-79c0','vrs.actions.UpdateVrsDoc','update-vrs-doc',0),('RACT-3291e393:18677e4c531:-776e','RUL66efd98c:18676a8376d:-7296','treasury.actions.AddSurchargeItem','add-surcharge-item',0),('RACT4808e68a:18686912375:-7846','RUL4808e68a:18686912375:-7b4b','treasury.actions.AddCashReceiptItem','add-cashreceipt-item',0),('RACT51a47117:186ba0179c8:-74ec','RUL51a47117:186ba0179c8:-78c8','vrs.actions.AddVrsBillItem','add-vrs-billitem',0),('RACT664a91a3:1837d695764:-68ab','RUL664a91a3:1837d695764:-6973','treasury.actions.AddCreditBillItem','add-credit-billitem',0),('RACT664a91a3:1837d695764:-69e7','RUL664a91a3:1837d695764:-6dd4','treasury.actions.ApplyBillItemPayment','apply-billitem-payment',0),('RACT664a91a3:1837d695764:-70a2','RUL6da9fa81:183789e12da:-79b1','treasury.actions.SetBillValidityDate','set-bill-validity-date',0),('RACT6da9fa81:183789e12da:-77b0','RUL6da9fa81:183789e12da:-79b1','treasury.actions.SetBillDueDate','set-bill-due-date',0),('RACT765b50be:1966169b2e1:-297e','RUL765b50be:1966169b2e1:-2c5e','treasury.actions.AddCashReceiptItem','add-cashreceipt-item',0),('RACT765b50be:1966169b2e1:-3452','RUL765b50be:1966169b2e1:-37d3','treasury.actions.AddCashReceiptItem','add-cashreceipt-item',0),('RACT765b50be:1966169b2e1:-3b04','RUL765b50be:1966169b2e1:-3da2','treasury.actions.AddCashReceiptItem','add-cashreceipt-item',0),('RACT765b50be:1966169b2e1:-3ea6','RUL765b50be:1966169b2e1:-42d2','treasury.actions.AddCashReceiptItem','add-cashreceipt-item',0),('RACT765b50be:1966169b2e1:-4b81','RUL765b50be:1966169b2e1:-5327','treasury.actions.AddCashReceiptItem','add-cashreceipt-item',0),('RACT765b50be:1966169b2e1:-53f8','RUL765b50be:1966169b2e1:-5a53','treasury.actions.AddCashReceiptItem','add-cashreceipt-item',0),('RACT765b50be:1966169b2e1:-66a3','RUL765b50be:1966169b2e1:-6adb','treasury.actions.AddCashReceiptItem','add-cashreceipt-item',0),('RACT765b50be:1966169b2e1:-724a','RUL765b50be:1966169b2e1:-7a6b','vrs.actions.AddVrsBillItem','add-vrs-billitem',0),('RACT765b50be:1966169b2e1:-732a','RUL765b50be:1966169b2e1:-7a6b','vrs.actions.AddVrsBillItem','add-vrs-billitem',0),('RACT765b50be:1966169b2e1:-742e','RUL765b50be:1966169b2e1:-7a6b','vrs.actions.AddVrsBillItem','add-vrs-billitem',0),('RACT765b50be:1966169b2e1:-7558','RUL765b50be:1966169b2e1:-7a6b','vrs.actions.AddVrsBillItem','add-vrs-billitem',0),('RACT765b50be:1966169b2e1:-773c','RUL765b50be:1966169b2e1:-7a6b','vrs.actions.AddVrsBillItem','add-vrs-billitem',0);
/*!40000 ALTER TABLE `sys_rule_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_action_param`
--

DROP TABLE IF EXISTS `sys_rule_action_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_action_param` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `actiondefparam_objid` varchar(100) DEFAULT NULL,
  `stringvalue` varchar(255) DEFAULT NULL,
  `booleanvalue` int(11) DEFAULT NULL,
  `var_objid` varchar(50) DEFAULT NULL,
  `var_name` varchar(50) DEFAULT NULL,
  `expr` longtext,
  `exprtype` varchar(25) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `obj_key` varchar(50) DEFAULT NULL,
  `obj_value` varchar(255) DEFAULT NULL,
  `listvalue` longtext,
  `lov` varchar(50) DEFAULT NULL,
  `rangeoption` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `parentid` (`parentid`),
  KEY `var_objid` (`var_objid`),
  KEY `sys_rule_action_param_actiondefparam` (`actiondefparam_objid`),
  KEY `fk_sys_rule_action_param_objkey` (`obj_key`),
  CONSTRAINT `sys_rule_action_param_actiondefparam` FOREIGN KEY (`actiondefparam_objid`) REFERENCES `sys_rule_actiondef_param` (`objid`),
  CONSTRAINT `sys_rule_action_param_parentid` FOREIGN KEY (`parentid`) REFERENCES `sys_rule_action` (`objid`),
  CONSTRAINT `sys_rule_action_param_varobjid` FOREIGN KEY (`var_objid`) REFERENCES `sys_rule_condition_var` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_action_param`
--

LOCK TABLES `sys_rule_action_param` WRITE;
/*!40000 ALTER TABLE `sys_rule_action_param` DISABLE KEYS */;
INSERT INTO `sys_rule_action_param` VALUES ('RAP-1259d1cf:186c6483b89:-7ffd','RA-1259d1cf:186c6483b89:-7ffe','vrs.actions.AddVrsDoc.doctypeid',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MTOP_PERMIT','MTOP PERMIT',NULL,NULL,NULL),('RAP-2e4aa27:183cafd1647:-7fb2','RA-2e4aa27:183cafd1647:-7fb4','treasury.actions.AddCashReceiptItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ITMACCT1dbf685:183ca5a944b:-6582','MAYORS PERMIT (MTOP)',NULL,NULL,NULL),('RAP-2e4aa27:183cafd1647:-7fb3','RA-2e4aa27:183cafd1647:-7fb4','treasury.actions.AddCashReceiptItem.amount',NULL,NULL,NULL,NULL,'AMT','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP-64a7157b:186b57a138f:-7fdf','RA-64a7157b:186b57a138f:-7fe1','vrs.actions.AddVrsBillItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'LEGALIZATION_FEE','LEGALIZATION FEE',NULL,NULL,NULL),('RAP-64a7157b:186b57a138f:-7fe0','RA-64a7157b:186b57a138f:-7fe1','vrs.actions.AddVrsBillItem.amount',NULL,NULL,NULL,NULL,'300','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP-64a7157b:186b57a138f:-7fe4','RA-64a7157b:186b57a138f:-7fe6','vrs.actions.AddVrsBillItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'LEGAL_RESEARCH_FEE','LEGAL RESEARCH FEE',NULL,NULL,NULL),('RAP-64a7157b:186b57a138f:-7fe5','RA-64a7157b:186b57a138f:-7fe6','vrs.actions.AddVrsBillItem.amount',NULL,NULL,NULL,NULL,'50','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP-64a7157b:186b57a138f:-7fe7','RA-64a7157b:186b57a138f:-7fe9','vrs.actions.AddVrsBillItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'FILING_FEE','FILING FEE',NULL,NULL,NULL),('RAP-64a7157b:186b57a138f:-7fe8','RA-64a7157b:186b57a138f:-7fe9','vrs.actions.AddVrsBillItem.amount',NULL,NULL,NULL,NULL,'30','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP-64a7157b:186b57a138f:-7fea','RA-64a7157b:186b57a138f:-7fec','vrs.actions.AddVrsBillItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'FRANCHISE_FEE','FRANCHISE FEE',NULL,NULL,NULL),('RAP-64a7157b:186b57a138f:-7feb','RA-64a7157b:186b57a138f:-7fec','vrs.actions.AddVrsBillItem.amount',NULL,NULL,NULL,NULL,'600','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP-64a7157b:186b57a138f:-7fed','RA-64a7157b:186b57a138f:-7fef','vrs.actions.AddVrsBillItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SUPERVISION_FEE','SUPERVISION FEE',NULL,NULL,NULL),('RAP-64a7157b:186b57a138f:-7fee','RA-64a7157b:186b57a138f:-7fef','vrs.actions.AddVrsBillItem.amount',NULL,NULL,NULL,NULL,'70','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP-64a7157b:186b57a138f:-7ff0','RA-64a7157b:186b57a138f:-7ff2','vrs.actions.AddVrsBillItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'CERTIFICATION_FEE','CERTIFICATION FEE',NULL,NULL,NULL),('RAP-64a7157b:186b57a138f:-7ff1','RA-64a7157b:186b57a138f:-7ff2','vrs.actions.AddVrsBillItem.amount',NULL,NULL,NULL,NULL,'40','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP-64a7157b:186b57a138f:-7ff3','RA-64a7157b:186b57a138f:-7ff5','vrs.actions.AddVrsBillItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MAYORS_PERMIT_FEE','MAYORS PERMIT FEE',NULL,NULL,NULL),('RAP-64a7157b:186b57a138f:-7ff4','RA-64a7157b:186b57a138f:-7ff5','vrs.actions.AddVrsBillItem.amount',NULL,NULL,NULL,NULL,'80','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP-64a7157b:186b57a138f:-7ff6','RA-64a7157b:186b57a138f:-7ff8','vrs.actions.AddVrsBillItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'BODY_NO_FEE','BODY NO FEE',NULL,NULL,NULL),('RAP-64a7157b:186b57a138f:-7ff7','RA-64a7157b:186b57a138f:-7ff8','vrs.actions.AddVrsBillItem.amount',NULL,NULL,NULL,NULL,'300','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP1448e246:186ba1ffea1:-7f49','RA1448e246:186ba1ffea1:-7f4c','treasury.actions.AddCashReceiptItem.groupid',NULL,NULL,NULL,NULL,'CODE','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP1448e246:186ba1ffea1:-7f4a','RA1448e246:186ba1ffea1:-7f4c','treasury.actions.AddCashReceiptItem.amount',NULL,NULL,NULL,NULL,'AMT','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP1448e246:186ba1ffea1:-7f4b','RA1448e246:186ba1ffea1:-7f4c','treasury.actions.AddCashReceiptItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ITMACCT1dbf685:183ca5a944b:-65da','SUPERVISING FEE (MTOP)',NULL,NULL,NULL),('RAP1448e246:186ba1ffea1:-7f54','RA1448e246:186ba1ffea1:-7f57','treasury.actions.AddCashReceiptItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ITEMACCT9af6ad4:14d9d556539:-1153','ZONING LEGAL RESEARCH FEE',NULL,NULL,NULL),('RAP1448e246:186ba1ffea1:-7f55','RA1448e246:186ba1ffea1:-7f57','treasury.actions.AddCashReceiptItem.amount',NULL,NULL,NULL,NULL,'AMT','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP1448e246:186ba1ffea1:-7f56','RA1448e246:186ba1ffea1:-7f57','treasury.actions.AddCashReceiptItem.groupid',NULL,NULL,NULL,NULL,'CODE','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP1448e246:186ba1ffea1:-7f5f','RA1448e246:186ba1ffea1:-7f62','treasury.actions.AddCashReceiptItem.groupid',NULL,NULL,NULL,NULL,'CODE','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP1448e246:186ba1ffea1:-7f60','RA1448e246:186ba1ffea1:-7f62','treasury.actions.AddCashReceiptItem.amount',NULL,NULL,NULL,NULL,'AMT','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP1448e246:186ba1ffea1:-7f61','RA1448e246:186ba1ffea1:-7f62','treasury.actions.AddCashReceiptItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'REVITEM-413c997c:141bf94d4b9:-7fa5','LEGAL CERTIFICATION FEE',NULL,NULL,NULL),('RAP1448e246:186ba1ffea1:-7f6a','RA1448e246:186ba1ffea1:-7f6d','treasury.actions.AddCashReceiptItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'REVITEM217a91b:1409e6ae44e:-7e02','MOTORELA FILING FEE',NULL,NULL,NULL),('RAP1448e246:186ba1ffea1:-7f6b','RA1448e246:186ba1ffea1:-7f6d','treasury.actions.AddCashReceiptItem.amount',NULL,NULL,NULL,NULL,'AMT','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP1448e246:186ba1ffea1:-7f6c','RA1448e246:186ba1ffea1:-7f6d','treasury.actions.AddCashReceiptItem.groupid',NULL,NULL,NULL,NULL,'CODE','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP1448e246:186ba1ffea1:-7f75','RA1448e246:186ba1ffea1:-7f78','treasury.actions.AddCashReceiptItem.groupid',NULL,NULL,NULL,NULL,'CODE','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP1448e246:186ba1ffea1:-7f76','RA1448e246:186ba1ffea1:-7f78','treasury.actions.AddCashReceiptItem.amount',NULL,NULL,NULL,NULL,'AMT','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP1448e246:186ba1ffea1:-7f77','RA1448e246:186ba1ffea1:-7f78','treasury.actions.AddCashReceiptItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ITMACCT1dbf685:183ca5a944b:-6523','SIDECAR PLATE (MTOP)',NULL,NULL,NULL),('RAP1448e246:186ba1ffea1:-7f80','RA1448e246:186ba1ffea1:-7f83','treasury.actions.AddCashReceiptItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'REVITEM217a91b:1409e6ae44e:-7ea2','MOTORELA FRANCHISE',NULL,NULL,NULL),('RAP1448e246:186ba1ffea1:-7f81','RA1448e246:186ba1ffea1:-7f83','treasury.actions.AddCashReceiptItem.amount',NULL,NULL,NULL,NULL,'AMT','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP1448e246:186ba1ffea1:-7f82','RA1448e246:186ba1ffea1:-7f83','treasury.actions.AddCashReceiptItem.groupid',NULL,NULL,NULL,NULL,'CODE','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP1448e246:186ba1ffea1:-7f8b','RA1448e246:186ba1ffea1:-7f8e','treasury.actions.AddCashReceiptItem.groupid',NULL,NULL,NULL,NULL,'CODE','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP1448e246:186ba1ffea1:-7f8c','RA1448e246:186ba1ffea1:-7f8e','treasury.actions.AddCashReceiptItem.amount',NULL,NULL,NULL,NULL,'AMT','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP1448e246:186ba1ffea1:-7f8d','RA1448e246:186ba1ffea1:-7f8e','treasury.actions.AddCashReceiptItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ITMACCT584b53f0:15fd6cbed1d:-5a1b','CERTIFICATE OF REGISTRATION',NULL,NULL,NULL),('RAP1448e246:186ba1ffea1:-7fe7','RA1448e246:186ba1ffea1:-7fea','vrs.actions.AddVrsBillItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'LEGALIZATION_FEE','LEGALIZATION FEE',NULL,NULL,NULL),('RAP1448e246:186ba1ffea1:-7fe8','RA1448e246:186ba1ffea1:-7fea','vrs.actions.AddVrsBillItem.amount',NULL,NULL,NULL,NULL,'300','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RAP1448e246:186ba1ffea1:-7fe9','RA1448e246:186ba1ffea1:-7fea','vrs.actions.AddVrsBillItem.year',NULL,NULL,'RCC1448e246:186ba1ffea1:-7fec','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-16f4340b:183cf6cd6d6:-6d1e','RACT-16f4340b:183cf6cd6d6:-6d8f','treasury.actions.AssertVarDate.tag',NULL,NULL,NULL,NULL,'\'duedate\'','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-16f4340b:183cf6cd6d6:-6d7d','RACT-16f4340b:183cf6cd6d6:-6d8f','treasury.actions.AssertVarDate.date',NULL,NULL,NULL,NULL,'@DATE( YEAR , 1,  20 )','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-2c08c905:186b4861e0a:-7753','RACT-2c08c905:186b4861e0a:-778a','vrs.actions.UpdateVrsDoc.expirydate',NULL,NULL,NULL,NULL,'@DATE(  YR, 12,  31)','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-2c08c905:186b4861e0a:-7772','RACT-2c08c905:186b4861e0a:-778a','vrs.actions.UpdateVrsDoc.document',NULL,NULL,'RC-1fdb3a47:186b49d951b:-7ffd','VDOC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-31609ab4:186abb24eb9:-734e','RACT-31609ab4:186abb24eb9:-7385','vrs.actions.UpdateVrsDoc.expirydate',NULL,NULL,NULL,NULL,'def dt = ( PEXPIRYDATE == null ) ? DTISSUED : PEXPIRYDATE;\n\ndef mon = @MONTH( dt );\ndef day = @DAY( dt  );\ndef yr = @YEAR( dt  );\n\nreturn @DATE( yr + 3 , mon ,  day ); \n','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-31609ab4:186abb24eb9:-736d','RACT-31609ab4:186abb24eb9:-7385','vrs.actions.UpdateVrsDoc.document',NULL,NULL,'RCOND-31609ab4:186abb24eb9:-75b8','VDOC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-3291e393:18677e4c531:-7492','RACT-3291e393:18677e4c531:-776e','treasury.actions.AddSurchargeItem.billdate',NULL,NULL,NULL,NULL,'@DAYADD( DUEDATE, 1 )','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-3291e393:18677e4c531:-74cd','RACT-3291e393:18677e4c531:-776e','treasury.actions.AddSurchargeItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'PENALTY_LATE_RENEWAL','PENALTY LATE RENEWAL',NULL,NULL,NULL),('RULACT-3291e393:18677e4c531:-7729','RACT-3291e393:18677e4c531:-776e','treasury.actions.AddSurchargeItem.amount',NULL,NULL,NULL,NULL,'@ROUND( AMT * 0.50 )','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT-3291e393:18677e4c531:-7750','RACT-3291e393:18677e4c531:-776e','treasury.actions.AddSurchargeItem.billitem',NULL,NULL,'RCOND-3291e393:18677e4c531:-7db3','BILLITEM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT1dbf685:183ca5a944b:-6070','RA-2e4aa27:183cafd1647:-7fb4','treasury.actions.AddCashReceiptItem.groupid',NULL,NULL,NULL,NULL,'CODE','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT299990a3:186b5702e3c:-63e4','RA-64a7157b:186b57a138f:-7ff8','vrs.actions.AddVrsBillItem.year',NULL,NULL,'RCONST299990a3:186b5702e3c:-6654','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT299990a3:186b5702e3c:-6439','RA-64a7157b:186b57a138f:-7ff5','vrs.actions.AddVrsBillItem.year',NULL,NULL,'RCONST299990a3:186b5702e3c:-6654','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT299990a3:186b5702e3c:-6498','RA-64a7157b:186b57a138f:-7ff2','vrs.actions.AddVrsBillItem.year',NULL,NULL,'RCONST299990a3:186b5702e3c:-6654','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT299990a3:186b5702e3c:-64ed','RA-64a7157b:186b57a138f:-7fef','vrs.actions.AddVrsBillItem.year',NULL,NULL,'RCONST299990a3:186b5702e3c:-6654','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT299990a3:186b5702e3c:-6542','RA-64a7157b:186b57a138f:-7fec','vrs.actions.AddVrsBillItem.year',NULL,NULL,'RCONST299990a3:186b5702e3c:-6654','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT299990a3:186b5702e3c:-6597','RA-64a7157b:186b57a138f:-7fe9','vrs.actions.AddVrsBillItem.year',NULL,NULL,'RCONST299990a3:186b5702e3c:-6654','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT299990a3:186b5702e3c:-65ec','RA-64a7157b:186b57a138f:-7fe6','vrs.actions.AddVrsBillItem.year',NULL,NULL,'RCONST299990a3:186b5702e3c:-6654','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT299990a3:186b5702e3c:-6714','RA-64a7157b:186b57a138f:-7fe1','vrs.actions.AddVrsBillItem.year',NULL,NULL,'RCONST299990a3:186b5702e3c:-677c','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT4808e68a:18686912375:-76b5','RACT4808e68a:18686912375:-7846','treasury.actions.AddCashReceiptItem.sortorder',NULL,NULL,NULL,NULL,'200','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT4808e68a:18686912375:-779e','RACT4808e68a:18686912375:-7846','treasury.actions.AddCashReceiptItem.groupid',NULL,NULL,NULL,NULL,'BCODE','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT4808e68a:18686912375:-77da','RACT4808e68a:18686912375:-7846','treasury.actions.AddCashReceiptItem.amount',NULL,NULL,NULL,NULL,'AMT','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT4808e68a:18686912375:-7822','RACT4808e68a:18686912375:-7846','treasury.actions.AddCashReceiptItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ITMACCT-4ad97a99:183e41b37cb:-7a2f','MTOP PENALTY FEE',NULL,NULL,NULL),('RULACT51a47117:186ba0179c8:-743a','RACT51a47117:186ba0179c8:-74ec','vrs.actions.AddVrsBillItem.year',NULL,NULL,'RCONST51a47117:186ba0179c8:-7795','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT51a47117:186ba0179c8:-7478','RACT51a47117:186ba0179c8:-74ec','vrs.actions.AddVrsBillItem.amount',NULL,NULL,NULL,NULL,'300','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT51a47117:186ba0179c8:-74b4','RACT51a47117:186ba0179c8:-74ec','vrs.actions.AddVrsBillItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'LEGALIZATION_FEE','LEGALIZATION FEE',NULL,NULL,NULL),('RULACT664a91a3:1837d695764:-60a0','RACT664a91a3:1837d695764:-70a2','treasury.actions.SetBillValidityDate.bill',NULL,NULL,'RCOND6da9fa81:183789e12da:-795b','BILL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT664a91a3:1837d695764:-686a','RACT664a91a3:1837d695764:-68ab','treasury.actions.AddCreditBillItem.amount',NULL,NULL,NULL,NULL,'AMT','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT664a91a3:1837d695764:-6893','RACT664a91a3:1837d695764:-68ab','treasury.actions.AddCreditBillItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ADVANCE_PAYMENT','ADVANCE PAYMENT (MTOP)',NULL,NULL,NULL),('RULACT664a91a3:1837d695764:-69bd','RACT664a91a3:1837d695764:-69e7','treasury.actions.ApplyBillItemPayment.payment',NULL,NULL,'RCOND664a91a3:1837d695764:-6b22','PMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT664a91a3:1837d695764:-69cf','RACT664a91a3:1837d695764:-69e7','treasury.actions.ApplyBillItemPayment.billitem',NULL,NULL,'RCOND664a91a3:1837d695764:-6a9d','BILLITEM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT664a91a3:1837d695764:-708a','RACT664a91a3:1837d695764:-70a2','treasury.actions.SetBillValidityDate.date',NULL,NULL,NULL,NULL,'@IIF(  TDATE < VDATE ,  VDATE  ,   @DATE(  YR, 12 , 31 ) )','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT6da9fa81:183789e12da:-777a','RACT6da9fa81:183789e12da:-77b0','treasury.actions.SetBillDueDate.date',NULL,NULL,NULL,NULL,'VDATE','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT6da9fa81:183789e12da:-7792','RACT6da9fa81:183789e12da:-77b0','treasury.actions.SetBillDueDate.bill',NULL,NULL,'RCOND6da9fa81:183789e12da:-795b','BILL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-28f1','RACT765b50be:1966169b2e1:-297e','treasury.actions.AddCashReceiptItem.groupid',NULL,NULL,NULL,NULL,'CODE','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-292c','RACT765b50be:1966169b2e1:-297e','treasury.actions.AddCashReceiptItem.amount',NULL,NULL,NULL,NULL,'AMT','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-2961','RACT765b50be:1966169b2e1:-297e','treasury.actions.AddCashReceiptItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ITMACCTca225b4:196602da772:-7910','MTOP FILING FEE (RENEWAL)',NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-33ce','RACT765b50be:1966169b2e1:-3452','treasury.actions.AddCashReceiptItem.groupid',NULL,NULL,NULL,NULL,'CODE','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-3402','RACT765b50be:1966169b2e1:-3452','treasury.actions.AddCashReceiptItem.amount',NULL,NULL,NULL,NULL,'AMT','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-3436','RACT765b50be:1966169b2e1:-3452','treasury.actions.AddCashReceiptItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ITMACCT-285dc6bf:1628891736b:-7de1','DOC. STAMP',NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-3a5c','RACT765b50be:1966169b2e1:-3b04','treasury.actions.AddCashReceiptItem.groupid',NULL,NULL,NULL,NULL,'CODE','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-3a8f','RACT765b50be:1966169b2e1:-3b04','treasury.actions.AddCashReceiptItem.amount',NULL,NULL,NULL,NULL,'AMT','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-3ae8','RACT765b50be:1966169b2e1:-3b04','treasury.actions.AddCashReceiptItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ITMACCTca225b4:196602da772:-73a2','CERTIFICATION FEE (MTOP)',NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-3dd8','RACT765b50be:1966169b2e1:-3ea6','treasury.actions.AddCashReceiptItem.groupid',NULL,NULL,NULL,NULL,'CODE','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-3e12','RACT765b50be:1966169b2e1:-3ea6','treasury.actions.AddCashReceiptItem.amount',NULL,NULL,NULL,NULL,'AMT','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-3e89','RACT765b50be:1966169b2e1:-3ea6','treasury.actions.AddCashReceiptItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ITMACCT7afb2ac7:15b40de16e4:-6983','SUP. & REG. FEE',NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-4ae0','RACT765b50be:1966169b2e1:-4b81','treasury.actions.AddCashReceiptItem.groupid',NULL,NULL,NULL,NULL,'CODE','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-4b14','RACT765b50be:1966169b2e1:-4b81','treasury.actions.AddCashReceiptItem.amount',NULL,NULL,NULL,NULL,'AMT','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-4b4f','RACT765b50be:1966169b2e1:-4b81','treasury.actions.AddCashReceiptItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ITMACCTca225b4:196602da772:-7910','MTOP FILING FEE (RENEWAL)',NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-5368','RACT765b50be:1966169b2e1:-53f8','treasury.actions.AddCashReceiptItem.groupid',NULL,NULL,NULL,NULL,'CODE','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-539c','RACT765b50be:1966169b2e1:-53f8','treasury.actions.AddCashReceiptItem.amount',NULL,NULL,NULL,NULL,'AMT','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-53d9','RACT765b50be:1966169b2e1:-53f8','treasury.actions.AddCashReceiptItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ITMACCTca225b4:196602da772:-79b4','ROADWORTHY (MTOP)',NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-6601','RACT765b50be:1966169b2e1:-66a3','treasury.actions.AddCashReceiptItem.groupid',NULL,NULL,NULL,NULL,'CODE','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-664a','RACT765b50be:1966169b2e1:-66a3','treasury.actions.AddCashReceiptItem.amount',NULL,NULL,NULL,NULL,'AMT','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-6686','RACT765b50be:1966169b2e1:-66a3','treasury.actions.AddCashReceiptItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'ITMACCTca225b4:196602da772:-7a9b','STICKER (MTOP)',NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-719e','RACT765b50be:1966169b2e1:-724a','vrs.actions.AddVrsBillItem.year',NULL,NULL,'RCONST765b50be:1966169b2e1:-77b1','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-71ef','RACT765b50be:1966169b2e1:-724a','vrs.actions.AddVrsBillItem.amount',NULL,NULL,NULL,NULL,'30','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-722e','RACT765b50be:1966169b2e1:-724a','vrs.actions.AddVrsBillItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'DOCUMENTARY_STAMP_(MTOP)','DOCUMENTARY STAMP',NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-72a4','RACT765b50be:1966169b2e1:-732a','vrs.actions.AddVrsBillItem.year',NULL,NULL,'RCONST765b50be:1966169b2e1:-77b1','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-72da','RACT765b50be:1966169b2e1:-732a','vrs.actions.AddVrsBillItem.amount',NULL,NULL,NULL,NULL,'200','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-730e','RACT765b50be:1966169b2e1:-732a','vrs.actions.AddVrsBillItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MAYORS_PERMIT_FEE','MAYORS PERMIT FEE',NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-7385','RACT765b50be:1966169b2e1:-742e','vrs.actions.AddVrsBillItem.year',NULL,NULL,'RCONST765b50be:1966169b2e1:-77b1','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-73d5','RACT765b50be:1966169b2e1:-742e','vrs.actions.AddVrsBillItem.amount',NULL,NULL,NULL,NULL,'75','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-7412','RACT765b50be:1966169b2e1:-742e','vrs.actions.AddVrsBillItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SUP._&_REF._FEE','SUP. & REG. FEE',NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-74cf','RACT765b50be:1966169b2e1:-7558','vrs.actions.AddVrsBillItem.year',NULL,NULL,'RCONST765b50be:1966169b2e1:-77b1','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-7505','RACT765b50be:1966169b2e1:-7558','vrs.actions.AddVrsBillItem.amount',NULL,NULL,NULL,NULL,'120','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-753c','RACT765b50be:1966169b2e1:-7558','vrs.actions.AddVrsBillItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'MTOP_FILING_FEE_(RENEWAL)','MTOP FILING FEE (RENEWAL)',NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-7695','RACT765b50be:1966169b2e1:-773c','vrs.actions.AddVrsBillItem.year',NULL,NULL,'RCONST765b50be:1966169b2e1:-77b1','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-76e6','RACT765b50be:1966169b2e1:-773c','vrs.actions.AddVrsBillItem.amount',NULL,NULL,NULL,NULL,'40','expression',NULL,NULL,NULL,NULL,NULL,NULL),('RULACT765b50be:1966169b2e1:-7720','RACT765b50be:1966169b2e1:-773c','vrs.actions.AddVrsBillItem.account',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'STICKER_(MTOP)','STICKER (MTOP)',NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_rule_action_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_actiondef`
--

DROP TABLE IF EXISTS `sys_rule_actiondef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_actiondef` (
  `objid` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `actionname` varchar(50) DEFAULT NULL,
  `domain` varchar(50) DEFAULT NULL,
  `actionclass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_actiondef`
--

LOCK TABLES `sys_rule_actiondef` WRITE;
/*!40000 ALTER TABLE `sys_rule_actiondef` DISABLE KEYS */;
INSERT INTO `sys_rule_actiondef` VALUES ('enterprise.actions.AddRequirement','add-requirement','Add Requirement',2,'add-requirement','ENTERPRISE','enterprise.actions.AddRequirement'),('enterprise.actions.PrintTest','print-test','Print Test',1,'print-test','ENTERPRISE','enterprise.actions.PrintTest'),('enterprise.actions.ThrowException','throw-exeception','Throw Exception',1,'throw-exeception','ENTERPRISE','enterprise.actions.ThrowException'),('treasury.actions.AddCashReceiptItem','add-cashreceipt-item','Add Cash Receipt Item',1,'add-cashreceipt-item','TREASURY','treasury.actions.AddCashReceiptItem'),('treasury.actions.AddCreditBillItem','add-credit-billitem','Add Credit Bill Item',2,'add-credit-billitem','TREASURY','treasury.actions.AddCreditBillItem'),('treasury.actions.AddDiscountItem','add-discount-item','Add Discount',3,'add-discount-item','TREASURY','treasury.actions.AddDiscountItem'),('treasury.actions.AddInterestItem','add-interest-item','Add Interest',3,'add-interest-item','TREASURY','treasury.actions.AddInterestItem'),('treasury.actions.AddQtrBillItem','add-qtr-billitem','Add Qtr Bill Item',2,'add-qtr-billitem','TREASURY','treasury.actions.AddQtrBillItem'),('treasury.actions.AddSurchargeItem','add-surcharge-item','Add Surcharge',3,'add-surcharge-item','TREASURY','treasury.actions.AddSurchargeItem'),('treasury.actions.AddVarInteger','add-var-integer','Add Var Integer',1,'add-var-integer','TREASURY','treasury.actions.AddVarInteger'),('treasury.actions.ApplyBillItemCredit','apply-billitem-credit','Apply Credit Payment',1,'apply-billitem-credit','TREASURY','treasury.actions.ApplyBillItemCredit'),('treasury.actions.ApplyBillItemPayment','apply-billitem-payment','Apply Bill Item Payment',1,'apply-billitem-payment','TREASURY','treasury.actions.ApplyBillItemPayment'),('treasury.actions.ApplyPayment','apply-payment','Apply Payment',5,'apply-payment','TREASURY','treasury.actions.ApplyPayment'),('treasury.actions.AssertVarDate','assert-var-date','Assert Var Date',1,'assert-var-date','TREASURY','treasury.actions.AssertVarDate'),('treasury.actions.RemoveBillItem','remove-billitem','Remove Bill Item',10,'remove-billitem','TREASURY','treasury.actions.RemoveBillItem'),('treasury.actions.SetBillDueDate','set-bill-due-date','Set Bill Due date',1,'set-bill-due-date','TREASURY','treasury.actions.SetBillDueDate'),('treasury.actions.SetBillItemAccount','set-billitem-account','Set Bill Item Account',4,'set-billitem-account','TREASURY','treasury.actions.SetBillItemAccount'),('treasury.actions.SetBillItemDueDate','set-billitem-duedate','Set Bill Item Due date',1,'set-billitem-duedate','TREASURY','treasury.actions.SetBillItemDueDate'),('treasury.actions.SetBillItemProperty','set-billitem-property','Set BillItem Property Value',10,'set-billitem-property','TREASURY','treasury.actions.SetBillItemProperty'),('treasury.actions.SetBillValidityDate','set-bill-validity-date','Set Bill Validity date',1,'set-bill-validity-date','TREASURY','treasury.actions.SetBillValidityDate'),('treasury.actions.SetCashReceiptItemRemarks','set-cashreceipt-item-remarks','Set Cash Receipt Item Remarks',1,'set-cashreceipt-item-remarks','TREASURY','treasury.actions.SetCashReceiptItemRemarks'),('treasury.actions.SupersedeBillItem','supersede-billitem','Supersede Bill Item',1,'supersede-billitem','TREASURY','treasury.actions.SupersedeBillItem'),('treasury.actions.UpdateBillItemAmount','update-billitem-amount','Update Bill Item Amount',1,'update-billitem-amount','TREASURY','treasury.actions.UpdateBillItemAmount'),('vrs.actions.AddVrsBillItem','add-vrs-billitem','Add VRS Bill Item',1,'add-vrs-billitem','VRS','vrs.actions.AddVrsBillItem'),('vrs.actions.AddVrsDoc','add-vrs-doc','Add Vehicle Doc',1,'add-vrs-doc','VRS','vrs.actions.AddVrsDoc'),('vrs.actions.UpdateVrsDoc','update-vrs-doc','Update VRS Doc',1,'update-vrs-doc','VRS','vrs.actions.UpdateVrsDoc');
/*!40000 ALTER TABLE `sys_rule_actiondef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_actiondef_param`
--

DROP TABLE IF EXISTS `sys_rule_actiondef_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_actiondef_param` (
  `objid` varchar(100) NOT NULL DEFAULT '',
  `parentid` varchar(50) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `datatype` varchar(50) DEFAULT NULL,
  `handler` varchar(50) DEFAULT NULL,
  `lookuphandler` varchar(50) DEFAULT NULL,
  `lookupkey` varchar(50) DEFAULT NULL,
  `lookupvalue` varchar(50) DEFAULT NULL,
  `vardatatype` varchar(50) DEFAULT NULL,
  `lovname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `parentid` (`parentid`),
  CONSTRAINT `sys_rule_actiondef_param_ibfk_1` FOREIGN KEY (`parentid`) REFERENCES `sys_rule_actiondef` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_actiondef_param`
--

LOCK TABLES `sys_rule_actiondef_param` WRITE;
/*!40000 ALTER TABLE `sys_rule_actiondef_param` DISABLE KEYS */;
INSERT INTO `sys_rule_actiondef_param` VALUES ('enterprise.actions.AddRequirement.message','enterprise.actions.AddRequirement','message',2,'Message',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('enterprise.actions.AddRequirement.reqtype','enterprise.actions.AddRequirement','reqtype',1,'Requirement Type',NULL,'lookup','sys_requirement_type:lookup','code','title','string',NULL),('enterprise.actions.AddRequirement.required','enterprise.actions.AddRequirement','required',4,'Required','boolean','boolean',NULL,NULL,NULL,'boolean',NULL),('enterprise.actions.AddRequirement.sortorder','enterprise.actions.AddRequirement','sortorder',3,'Sort Order','string','string',NULL,NULL,NULL,'string',NULL),('enterprise.actions.PrintTest.message','enterprise.actions.PrintTest','message',1,'Message',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('enterprise.actions.ThrowException.msg','enterprise.actions.ThrowException','msg',1,'Message',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddCashReceiptItem.account','treasury.actions.AddCashReceiptItem','account',1,'Receipt Account',NULL,'lookup','revenueitem:lookup','objid','title',NULL,NULL),('treasury.actions.AddCashReceiptItem.amount','treasury.actions.AddCashReceiptItem','amount',2,'Amount',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddCashReceiptItem.groupid','treasury.actions.AddCashReceiptItem','groupid',3,'Group ID',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddCashReceiptItem.remarks','treasury.actions.AddCashReceiptItem','remarks',4,'Remarks',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddCashReceiptItem.sortorder','treasury.actions.AddCashReceiptItem','sortorder',5,'Sort Order',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddCreditBillItem.account','treasury.actions.AddCreditBillItem','account',1,'Account',NULL,'lookup','itemaccount:credit:lookup','objid','title',NULL,NULL),('treasury.actions.AddCreditBillItem.amount','treasury.actions.AddCreditBillItem','amount',2,'Amount',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddCreditBillItem.billitem','treasury.actions.AddCreditBillItem','billitem',3,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.AddDiscountItem.account','treasury.actions.AddDiscountItem','account',4,'Account',NULL,'lookup','revenueitem:lookup','objid','title',NULL,NULL),('treasury.actions.AddDiscountItem.amount','treasury.actions.AddDiscountItem','amount',2,'Amount',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddDiscountItem.billcode','treasury.actions.AddDiscountItem','billcode',3,'Billcode',NULL,'lookup','market_itemaccount:lookup','objid','title','string',NULL),('treasury.actions.AddDiscountItem.billitem','treasury.actions.AddDiscountItem','billitem',1,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.AddInterestItem.account','treasury.actions.AddInterestItem','account',3,'Account',NULL,'lookup','itemaccount:interest:lookup','objid','title',NULL,NULL),('treasury.actions.AddInterestItem.amount','treasury.actions.AddInterestItem','amount',2,'Amount',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddInterestItem.billdate','treasury.actions.AddInterestItem','billdate',4,'Bill Date',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddInterestItem.billitem','treasury.actions.AddInterestItem','billitem',1,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.AddQtrBillItem.billitem','treasury.actions.AddQtrBillItem','billitem',1,'Bill Item',NULL,'var',NULL,NULL,NULL,'eboss.facts.BusinessBillItem',NULL),('treasury.actions.AddQtrBillItem.duedate','treasury.actions.AddQtrBillItem','duedate',4,'Due Date',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddQtrBillItem.qtr','treasury.actions.AddQtrBillItem','qtr',2,'Qtr',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddQtrBillItem.startdate','treasury.actions.AddQtrBillItem','startdate',3,'Start Date',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddSurchargeItem.account','treasury.actions.AddSurchargeItem','account',3,'Account',NULL,'lookup','itemaccount:surcharge:lookup','objid','title',NULL,NULL),('treasury.actions.AddSurchargeItem.amount','treasury.actions.AddSurchargeItem','amount',2,'Amount',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddSurchargeItem.billdate','treasury.actions.AddSurchargeItem','billdate',4,'Bill Date',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AddSurchargeItem.billitem','treasury.actions.AddSurchargeItem','billitem',1,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.AddVarInteger.tag','treasury.actions.AddVarInteger','tag',2,'Tag','string','string',NULL,NULL,NULL,'string',NULL),('treasury.actions.AddVarInteger.value','treasury.actions.AddVarInteger','value',1,'Value',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.ApplyBillItemCredit.billitem','treasury.actions.ApplyBillItemCredit','billitem',2,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.ApplyBillItemCredit.creditbillitem','treasury.actions.ApplyBillItemCredit','creditbillitem',1,'Credit Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.CreditBillItem',NULL),('treasury.actions.ApplyBillItemPayment.billitem','treasury.actions.ApplyBillItemPayment','billitem',2,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.ApplyBillItemPayment.payment','treasury.actions.ApplyBillItemPayment','payment',1,'Payment',NULL,'var',NULL,NULL,NULL,'treasury.facts.Payment',NULL),('treasury.actions.ApplyPayment.payment','treasury.actions.ApplyPayment','payment',1,'Payment',NULL,'var',NULL,NULL,NULL,'treasury.facts.Payment',NULL),('treasury.actions.AssertVarDate.date','treasury.actions.AssertVarDate','date',1,'Date',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.AssertVarDate.tag','treasury.actions.AssertVarDate','tag',2,'Tag',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.RemoveBillItem.billitem','treasury.actions.RemoveBillItem','billitem',1,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.SetBillDueDate.bill','treasury.actions.SetBillDueDate','bill',1,'Bill',NULL,'var',NULL,NULL,NULL,'treasury.facts.Bill',NULL),('treasury.actions.SetBillDueDate.date','treasury.actions.SetBillDueDate','date',2,'Due Date',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.SetBillItemAccount.account','treasury.actions.SetBillItemAccount','account',2,'Account',NULL,'lookup','itemaccount:lookup','objid','title',NULL,NULL),('treasury.actions.SetBillItemAccount.billcode','treasury.actions.SetBillItemAccount','billcode',3,'Billcode',NULL,'lookup','waterworks_itemaccount:lookup','objid','title','string',NULL),('treasury.actions.SetBillItemAccount.billitem','treasury.actions.SetBillItemAccount','billitem',1,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.SetBillItemDueDate.billitem','treasury.actions.SetBillItemDueDate','billitem',1,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.SetBillItemDueDate.duedate','treasury.actions.SetBillItemDueDate','duedate',2,'Due Date',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.SetBillItemProperty.billitem','treasury.actions.SetBillItemProperty','billitem',1,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.BillItem',NULL),('treasury.actions.SetBillItemProperty.fieldname','treasury.actions.SetBillItemProperty','fieldname',2,'Property Field Name',NULL,'fieldlist',NULL,'billitem',NULL,NULL,NULL),('treasury.actions.SetBillItemProperty.value','treasury.actions.SetBillItemProperty','value',3,'Value',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.SetBillValidityDate.bill','treasury.actions.SetBillValidityDate','bill',1,'Bill',NULL,'var',NULL,NULL,NULL,'treasury.facts.Bill',NULL),('treasury.actions.SetBillValidityDate.date','treasury.actions.SetBillValidityDate','date',2,'Validity Date',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.SetCashReceiptItemRemarks.receiptitem','treasury.actions.SetCashReceiptItemRemarks','receiptitem',1,'Receipt Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.CashReceiptItem',NULL),('treasury.actions.SetCashReceiptItemRemarks.remarks','treasury.actions.SetCashReceiptItemRemarks','remarks',2,'Remarks',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.SetCashReceiptItemRemarks.type','treasury.actions.SetCashReceiptItemRemarks','type',3,'Type',NULL,'lov',NULL,NULL,NULL,NULL,'UPDATE_BILLITEM_TYPE'),('treasury.actions.SupersedeBillItem.billitem','treasury.actions.SupersedeBillItem','billitem',1,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.SupersedeBillItem.supersederitem','treasury.actions.SupersedeBillItem','supersederitem',2,'Superseder BillItem',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.UpdateBillItemAmount.amount','treasury.actions.UpdateBillItemAmount','amount',3,'Amount',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('treasury.actions.UpdateBillItemAmount.billitem','treasury.actions.UpdateBillItemAmount','billitem',1,'Bill Item',NULL,'var',NULL,NULL,NULL,'treasury.facts.AbstractBillItem',NULL),('treasury.actions.UpdateBillItemAmount.type','treasury.actions.UpdateBillItemAmount','type',2,'Type',NULL,'lov',NULL,NULL,NULL,NULL,'UPDATE_BILLITEM_TYPE'),('vrs.actions.AddVrsBillItem.account','vrs.actions.AddVrsBillItem','account',1,'Account',NULL,'lookup','itemaccount:lookup','objid','title','string',NULL),('vrs.actions.AddVrsBillItem.amount','vrs.actions.AddVrsBillItem','amount',2,'Amount',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('vrs.actions.AddVrsBillItem.duedate','vrs.actions.AddVrsBillItem','duedate',5,'Due Date',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('vrs.actions.AddVrsBillItem.remarks','vrs.actions.AddVrsBillItem','remarks',3,'Remarks',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('vrs.actions.AddVrsBillItem.year','vrs.actions.AddVrsBillItem','year',4,'Year',NULL,'var',NULL,NULL,NULL,'integer',NULL),('vrs.actions.AddVrsDoc.doctypeid','vrs.actions.AddVrsDoc','doctypeid',1,'Doc Type',NULL,'lookup','vrs_doctype:all:lookup','objid','title','string',NULL),('vrs.actions.UpdateVrsDoc.controlnopattern','vrs.actions.UpdateVrsDoc','controlnopattern',3,'Control No Pattern',NULL,'expression',NULL,NULL,NULL,NULL,NULL),('vrs.actions.UpdateVrsDoc.document','vrs.actions.UpdateVrsDoc','document',1,'Document',NULL,'var',NULL,NULL,NULL,'vrs.facts.VrsDoc',NULL),('vrs.actions.UpdateVrsDoc.expirydate','vrs.actions.UpdateVrsDoc','expirydate',2,'Expiry Date',NULL,'expression',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sys_rule_actiondef_param` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_condition`
--

DROP TABLE IF EXISTS `sys_rule_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_condition` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `fact_name` varchar(50) DEFAULT NULL,
  `fact_objid` varchar(50) DEFAULT NULL,
  `varname` varchar(50) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  `ruletext` longtext,
  `displaytext` longtext,
  `dynamic_datatype` varchar(50) DEFAULT NULL,
  `dynamic_key` varchar(50) DEFAULT NULL,
  `dynamic_value` varchar(50) DEFAULT NULL,
  `notexist` int(11) NOT NULL,
  PRIMARY KEY (`objid`),
  KEY `fact_objid` (`fact_objid`),
  KEY `parentid` (`parentid`),
  CONSTRAINT `sys_rule_condition_fact` FOREIGN KEY (`fact_objid`) REFERENCES `sys_rule_fact` (`objid`),
  CONSTRAINT `sys_rule_condition_ibfk_1` FOREIGN KEY (`fact_objid`) REFERENCES `sys_rule_fact` (`objid`),
  CONSTRAINT `sys_rule_condition_ibfk_2` FOREIGN KEY (`parentid`) REFERENCES `sys_rule` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_condition`
--

LOCK TABLES `sys_rule_condition` WRITE;
/*!40000 ALTER TABLE `sys_rule_condition` DISABLE KEYS */;
INSERT INTO `sys_rule_condition` VALUES ('RC-1259d1cf:186c6483b89:-8000','RUL5ab947a6:186c6423c21:-7bde','vrs.facts.VrsTxn','vrs.facts.VrsTxn',NULL,0,NULL,NULL,NULL,NULL,NULL,0),('RC-1fdb3a47:186b49d951b:-7ffd','RUL-2c08c905:186b4861e0a:-7af2','vrs.facts.VrsDoc','vrs.facts.VrsDoc','VDOC',1,NULL,NULL,NULL,NULL,NULL,0),('RC-2e4aa27:183cafd1647:-7fb7','RUL1dbf685:183ca5a944b:-6116','vrs.facts.VrsBillItem','vrs.facts.VrsBillItem','BILLITEM',0,NULL,NULL,NULL,NULL,NULL,0),('RC-64a7157b:186b57a138f:-7fe3','RUL299990a3:186b5702e3c:-68f2','vrs.facts.VrsTxn','vrs.facts.VrsTxn',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RC-64a7157b:186b57a138f:-7ffd','RUL299990a3:186b5702e3c:-6bd1','vrs.facts.VrsTxn','vrs.facts.VrsTxn',NULL,0,NULL,NULL,NULL,NULL,NULL,0),('RC-da3b6bf:18676bfe78e:-7ffa','RUL66efd98c:18676a8376d:-7296','treasury.facts.VarDate','treasury.facts.VarDate',NULL,0,NULL,NULL,NULL,NULL,NULL,0),('RC-da3b6bf:18676bfe78e:-7ffc','RUL66efd98c:18676a8376d:-7296','treasury.facts.TransactionDate','treasury.facts.TransactionDate',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RC1448e246:186ba1ffea1:-7f4f','RUL-45e8bc36:186ba1dc867:-7094','treasury.facts.PaymentItem','treasury.facts.PaymentItem',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RC1448e246:186ba1ffea1:-7f53','RUL-45e8bc36:186ba1dc867:-7094','vrs.facts.VrsBillItem','vrs.facts.VrsBillItem','BILLITEM',0,NULL,NULL,NULL,NULL,NULL,0),('RC1448e246:186ba1ffea1:-7f5b','RUL-45e8bc36:186ba1dc867:-7199','vrs.facts.VrsBillItem','vrs.facts.VrsBillItem','BILLITEM',0,NULL,NULL,NULL,NULL,NULL,0),('RC1448e246:186ba1ffea1:-7f5e','RUL-45e8bc36:186ba1dc867:-7199','treasury.facts.PaymentItem','treasury.facts.PaymentItem',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RC1448e246:186ba1ffea1:-7f65','RUL-45e8bc36:186ba1dc867:-7297','treasury.facts.PaymentItem','treasury.facts.PaymentItem',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RC1448e246:186ba1ffea1:-7f69','RUL-45e8bc36:186ba1dc867:-7297','vrs.facts.VrsBillItem','vrs.facts.VrsBillItem','BILLITEM',0,NULL,NULL,NULL,NULL,NULL,0),('RC1448e246:186ba1ffea1:-7f71','RUL-45e8bc36:186ba1dc867:-7399','vrs.facts.VrsBillItem','vrs.facts.VrsBillItem','BILLITEM',0,NULL,NULL,NULL,NULL,NULL,0),('RC1448e246:186ba1ffea1:-7f74','RUL-45e8bc36:186ba1dc867:-7399','treasury.facts.PaymentItem','treasury.facts.PaymentItem',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RC1448e246:186ba1ffea1:-7f7b','RUL-45e8bc36:186ba1dc867:-74ea','treasury.facts.PaymentItem','treasury.facts.PaymentItem',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RC1448e246:186ba1ffea1:-7f7f','RUL-45e8bc36:186ba1dc867:-74ea','vrs.facts.VrsBillItem','vrs.facts.VrsBillItem','BILLITEM',0,NULL,NULL,NULL,NULL,NULL,0),('RC1448e246:186ba1ffea1:-7f87','RUL-45e8bc36:186ba1dc867:-75e8','vrs.facts.VrsBillItem','vrs.facts.VrsBillItem','BILLITEM',0,NULL,NULL,NULL,NULL,NULL,0),('RC1448e246:186ba1ffea1:-7f8a','RUL-45e8bc36:186ba1dc867:-75e8','treasury.facts.PaymentItem','treasury.facts.PaymentItem',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RC1448e246:186ba1ffea1:-7f91','RUL-45e8bc36:186ba1dc867:-77bb','treasury.facts.PaymentItem','treasury.facts.PaymentItem',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RC1448e246:186ba1ffea1:-7f95','RUL-45e8bc36:186ba1dc867:-77bb','vrs.facts.VrsBillItem','vrs.facts.VrsBillItem','BILLITEM',0,NULL,NULL,NULL,NULL,NULL,0),('RC1448e246:186ba1ffea1:-7fed','RUL-45e8bc36:186ba1dc867:-7ced','vrs.facts.VrsTxn','vrs.facts.VrsTxn',NULL,0,NULL,NULL,NULL,NULL,NULL,0),('RC1448e246:186ba1ffea1:-7fef','RUL-45e8bc36:186ba1dc867:-7ced','vrs.facts.VrsFranchise','vrs.facts.VrsFranchise','',1,NULL,NULL,NULL,NULL,NULL,1),('RCOND-16f4340b:183cf6cd6d6:-758c','RUL-16f4340b:183cf6cd6d6:-7989','vrs.facts.VrsAccount','vrs.facts.VrsAccount',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RCOND-16f4340b:183cf6cd6d6:-7842','RUL-16f4340b:183cf6cd6d6:-7989','treasury.facts.VarDate','treasury.facts.VarDate','',0,NULL,NULL,NULL,NULL,NULL,1),('RCOND-181455fd:183df531a10:-78ca','RUL6da9fa81:183789e12da:-79b1','vrs.facts.VrsAccount','vrs.facts.VrsAccount',NULL,3,NULL,NULL,NULL,NULL,NULL,0),('RCOND-181455fd:183df531a10:-7d8d','RUL6da9fa81:183789e12da:-79b1','treasury.facts.TransactionDate','treasury.facts.TransactionDate',NULL,3,NULL,NULL,NULL,NULL,NULL,0),('RCOND-181455fd:183df531a10:-7eb7','RUL6da9fa81:183789e12da:-79b1','treasury.facts.VarDate','treasury.facts.VarDate',NULL,2,NULL,NULL,NULL,NULL,NULL,0),('RCOND-2c08c905:186b4861e0a:-7a06','RUL-2c08c905:186b4861e0a:-7af2','vrs.facts.VrsTxn','vrs.facts.VrsTxn',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RCOND-31609ab4:186abb24eb9:-75b8','RUL-31609ab4:186abb24eb9:-79c0','vrs.facts.VrsDoc','vrs.facts.VrsDoc','VDOC',1,NULL,NULL,NULL,NULL,NULL,0),('RCOND-3291e393:18677e4c531:-7db3','RUL66efd98c:18676a8376d:-7296','vrs.facts.VrsBillItem','vrs.facts.VrsBillItem','BILLITEM',3,NULL,NULL,NULL,NULL,NULL,0),('RCOND-3291e393:18677e4c531:-7e80','RUL66efd98c:18676a8376d:-7296','vrs.facts.VrsAccount','vrs.facts.VrsAccount',NULL,2,NULL,NULL,NULL,NULL,NULL,0),('RCOND299990a3:186b5702e3c:-5b7f','RUL66efd98c:18676a8376d:-7296','vrs.facts.VrsTxn','vrs.facts.VrsTxn',NULL,4,NULL,NULL,NULL,NULL,NULL,0),('RCOND299990a3:186b5702e3c:-6664','RUL299990a3:186b5702e3c:-6bd1','treasury.facts.TransactionYear','treasury.facts.TransactionYear',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RCOND299990a3:186b5702e3c:-678c','RUL299990a3:186b5702e3c:-68f2','treasury.facts.TransactionYear','treasury.facts.TransactionYear',NULL,0,NULL,NULL,NULL,NULL,NULL,0),('RCOND4808e68a:18686912375:-7484','RUL1dbf685:183ca5a944b:-6116','treasury.facts.PaymentItem','treasury.facts.PaymentItem',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RCOND4808e68a:18686912375:-79c8','RUL4808e68a:18686912375:-7b4b','treasury.facts.PaymentItem','treasury.facts.PaymentItem',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RCOND4808e68a:18686912375:-7a61','RUL4808e68a:18686912375:-7b4b','treasury.facts.SurchargeItem','treasury.facts.SurchargeItem','SURITM',0,NULL,NULL,NULL,NULL,NULL,0),('RCOND51a47117:186ba0179c8:-7584','RUL51a47117:186ba0179c8:-78c8','vrs.facts.VrsFranchise','vrs.facts.VrsFranchise',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RCOND51a47117:186ba0179c8:-7842','RUL51a47117:186ba0179c8:-78c8','vrs.facts.VrsTxn','vrs.facts.VrsTxn',NULL,0,NULL,NULL,NULL,NULL,NULL,0),('RCOND664a91a3:1837d695764:-691f','RUL664a91a3:1837d695764:-6973','treasury.facts.Payment','treasury.facts.Payment','PMT',0,NULL,NULL,NULL,NULL,NULL,0),('RCOND664a91a3:1837d695764:-6a9d','RUL664a91a3:1837d695764:-6dd4','vrs.facts.VrsBillItem','vrs.facts.VrsBillItem','BILLITEM',1,NULL,NULL,NULL,NULL,NULL,0),('RCOND664a91a3:1837d695764:-6b22','RUL664a91a3:1837d695764:-6dd4','treasury.facts.Payment','treasury.facts.Payment','PMT',0,NULL,NULL,NULL,NULL,NULL,0),('RCOND6da9fa81:183789e12da:-795b','RUL6da9fa81:183789e12da:-79b1','treasury.facts.Bill','treasury.facts.Bill','BILL',0,NULL,NULL,NULL,NULL,NULL,0),('RCOND765b50be:1966169b2e1:-2a21','RUL765b50be:1966169b2e1:-2c5e','treasury.facts.PaymentItem','treasury.facts.PaymentItem',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RCOND765b50be:1966169b2e1:-2c10','RUL765b50be:1966169b2e1:-2c5e','vrs.facts.VrsBillItem','vrs.facts.VrsBillItem','BILLITEM',0,NULL,NULL,NULL,NULL,NULL,0),('RCOND765b50be:1966169b2e1:-34f4','RUL765b50be:1966169b2e1:-37d3','treasury.facts.PaymentItem','treasury.facts.PaymentItem',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RCOND765b50be:1966169b2e1:-3795','RUL765b50be:1966169b2e1:-37d3','vrs.facts.VrsBillItem','vrs.facts.VrsBillItem','BILLITEM',0,NULL,NULL,NULL,NULL,NULL,0),('RCOND765b50be:1966169b2e1:-3869','RUL765b50be:1966169b2e1:-3da2','treasury.facts.PaymentItem','treasury.facts.PaymentItem',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RCOND765b50be:1966169b2e1:-3d53','RUL765b50be:1966169b2e1:-3da2','vrs.facts.VrsBillItem','vrs.facts.VrsBillItem','BILLITEM',0,NULL,NULL,NULL,NULL,NULL,0),('RCOND765b50be:1966169b2e1:-4294','RUL765b50be:1966169b2e1:-42d2','vrs.facts.VrsBillItem','vrs.facts.VrsBillItem','BILLITEM',0,NULL,NULL,NULL,NULL,NULL,0),('RCOND765b50be:1966169b2e1:-4c8c','RUL765b50be:1966169b2e1:-5327','treasury.facts.PaymentItem','treasury.facts.PaymentItem',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RCOND765b50be:1966169b2e1:-529f','RUL765b50be:1966169b2e1:-5327','vrs.facts.VrsBillItem','vrs.facts.VrsBillItem','BILLITEM',0,NULL,NULL,NULL,NULL,NULL,0),('RCOND765b50be:1966169b2e1:-549a','RUL765b50be:1966169b2e1:-5a53','treasury.facts.PaymentItem','treasury.facts.PaymentItem',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RCOND765b50be:1966169b2e1:-5a15','RUL765b50be:1966169b2e1:-5a53','vrs.facts.VrsBillItem','vrs.facts.VrsBillItem','BILLITEM',0,NULL,NULL,NULL,NULL,NULL,0),('RCOND765b50be:1966169b2e1:-63f6','RUL765b50be:1966169b2e1:-6adb','treasury.facts.PaymentItem','treasury.facts.PaymentItem',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RCOND765b50be:1966169b2e1:-6a7d','RUL765b50be:1966169b2e1:-6adb','vrs.facts.VrsBillItem','vrs.facts.VrsBillItem','BILLITEM',0,NULL,NULL,NULL,NULL,NULL,0),('RCOND765b50be:1966169b2e1:-77c1','RUL765b50be:1966169b2e1:-7a6b','treasury.facts.TransactionYear','treasury.facts.TransactionYear',NULL,1,NULL,NULL,NULL,NULL,NULL,0),('RCOND765b50be:1966169b2e1:-7882','RUL765b50be:1966169b2e1:-7a6b','vrs.facts.VrsTxn','vrs.facts.VrsTxn',NULL,0,NULL,NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `sys_rule_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_condition_constraint`
--

DROP TABLE IF EXISTS `sys_rule_condition_constraint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_condition_constraint` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `field_objid` varchar(100) DEFAULT NULL,
  `fieldname` varchar(50) DEFAULT NULL,
  `varname` varchar(50) DEFAULT NULL,
  `operator_caption` varchar(50) DEFAULT NULL,
  `operator_symbol` varchar(50) DEFAULT NULL,
  `usevar` int(11) DEFAULT NULL,
  `var_objid` varchar(50) DEFAULT NULL,
  `var_name` varchar(50) DEFAULT NULL,
  `decimalvalue` decimal(16,2) DEFAULT NULL,
  `intvalue` int(11) DEFAULT NULL,
  `stringvalue` varchar(255) DEFAULT NULL,
  `listvalue` longtext,
  `datevalue` date DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `parentid` (`parentid`),
  KEY `var_objid` (`var_objid`),
  KEY `sys_rule_condition_constraint_fact_field` (`field_objid`),
  CONSTRAINT `sys_rule_condition_constraint_fact_field` FOREIGN KEY (`field_objid`) REFERENCES `sys_rule_fact_field` (`objid`),
  CONSTRAINT `sys_rule_condition_constraint_ibfk_1` FOREIGN KEY (`parentid`) REFERENCES `sys_rule_condition` (`objid`),
  CONSTRAINT `sys_rule_condition_constraint_ibfk_2` FOREIGN KEY (`var_objid`) REFERENCES `sys_rule_condition_var` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_condition_constraint`
--

LOCK TABLES `sys_rule_condition_constraint` WRITE;
/*!40000 ALTER TABLE `sys_rule_condition_constraint` DISABLE KEYS */;
INSERT INTO `sys_rule_condition_constraint` VALUES ('RCC-1259d1cf:186c6483b89:-7fff','RC-1259d1cf:186c6483b89:-8000','vrs.facts.VrsTxn.txntypeid','txntypeid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"TRIMOBILE_NEW\",value:\"TRIMOBILE_NEW\"],[key:\"TRIMOBILE_RENEWAL\",value:\"TRIMOBILE_RENEWAL\"]]',NULL,0),('RCC-1fdb3a47:186b49d951b:-7ffa','RC-1fdb3a47:186b49d951b:-7ffd','vrs.facts.VrsDoc.doctypeid','doctypeid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"MTOP_PERMIT\",value:\"MTOP PERMIT\"]]',NULL,0),('RCC-2e4aa27:183cafd1647:-7fb5','RC-2e4aa27:183cafd1647:-7fb7','vrs.facts.VrsBillItem.acctid','acctid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"MAYORS_PERMIT_FEE\",value:\"MAYORS PERMIT FEE\"]]',NULL,0),('RCC-64a7157b:186b57a138f:-7fe2','RC-64a7157b:186b57a138f:-7fe3','vrs.facts.VrsTxn.txntypeid','txntypeid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"TRIMOBILE_NEW\",value:\"TRIMOBILE_NEW\"],[key:\"TRIMOBILE_CHANGE_UNIT\",value:\"TRIMOBILE_CHANGE_UNIT\"]]',NULL,0),('RCC-64a7157b:186b57a138f:-7ffc','RC-64a7157b:186b57a138f:-7ffd','vrs.facts.VrsTxn.txntypeid','txntypeid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"TRIMOBILE_NEW\",value:\"TRIMOBILE_NEW\"],[key:\"TRIMOBILE_RENEWAL\",value:\"TRIMOBILE_RENEWAL\"]]',NULL,0),('RCC-da3b6bf:18676bfe78e:-7ff8','RC-da3b6bf:18676bfe78e:-7ffa','treasury.facts.VarDate.tag','tag',NULL,'equal to','==',NULL,NULL,NULL,NULL,NULL,'duedate',NULL,NULL,0),('RCC-da3b6bf:18676bfe78e:-7ff9','RC-da3b6bf:18676bfe78e:-7ffa','treasury.facts.VarDate.date','date','DUEDATE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCC-da3b6bf:18676bfe78e:-7ffb','RC-da3b6bf:18676bfe78e:-7ffc','treasury.facts.TransactionDate.date','date',NULL,'after','>',1,NULL,'DUEDATE',NULL,NULL,NULL,NULL,NULL,0),('RCC1448e246:186ba1ffea1:-7f4d','RC1448e246:186ba1ffea1:-7f4f','treasury.facts.PaymentItem.billitemrefid','billitemrefid',NULL,'equals','==',NULL,'RCC1448e246:186ba1ffea1:-7f50','REFID',NULL,NULL,NULL,NULL,NULL,0),('RCC1448e246:186ba1ffea1:-7f4e','RC1448e246:186ba1ffea1:-7f4f','treasury.facts.PaymentItem.amount','amount','AMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCC1448e246:186ba1ffea1:-7f50','RC1448e246:186ba1ffea1:-7f53','vrs.facts.VrsBillItem.objid','objid','REFID',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3),('RCC1448e246:186ba1ffea1:-7f51','RC1448e246:186ba1ffea1:-7f53','vrs.facts.VrsBillItem.billcode','billcode','CODE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),('RCC1448e246:186ba1ffea1:-7f52','RC1448e246:186ba1ffea1:-7f53','vrs.facts.VrsBillItem.acctid','acctid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"SUPERVISION_FEE\",value:\"SUPERVISION FEE\"]]',NULL,0),('RCC1448e246:186ba1ffea1:-7f58','RC1448e246:186ba1ffea1:-7f5b','vrs.facts.VrsBillItem.acctid','acctid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"LEGAL_RESEARCH_FEE\",value:\"LEGAL RESEARCH FEE\"]]',NULL,0),('RCC1448e246:186ba1ffea1:-7f59','RC1448e246:186ba1ffea1:-7f5b','vrs.facts.VrsBillItem.billcode','billcode','CODE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),('RCC1448e246:186ba1ffea1:-7f5a','RC1448e246:186ba1ffea1:-7f5b','vrs.facts.VrsBillItem.objid','objid','REFID',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3),('RCC1448e246:186ba1ffea1:-7f5c','RC1448e246:186ba1ffea1:-7f5e','treasury.facts.PaymentItem.amount','amount','AMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCC1448e246:186ba1ffea1:-7f5d','RC1448e246:186ba1ffea1:-7f5e','treasury.facts.PaymentItem.billitemrefid','billitemrefid',NULL,'equals','==',NULL,NULL,'REFID',NULL,NULL,NULL,NULL,NULL,0),('RCC1448e246:186ba1ffea1:-7f63','RC1448e246:186ba1ffea1:-7f65','treasury.facts.PaymentItem.billitemrefid','billitemrefid',NULL,'equals','==',NULL,'RCC1448e246:186ba1ffea1:-7f66','REFID',NULL,NULL,NULL,NULL,NULL,0),('RCC1448e246:186ba1ffea1:-7f64','RC1448e246:186ba1ffea1:-7f65','treasury.facts.PaymentItem.amount','amount','AMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCC1448e246:186ba1ffea1:-7f66','RC1448e246:186ba1ffea1:-7f69','vrs.facts.VrsBillItem.objid','objid','REFID',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3),('RCC1448e246:186ba1ffea1:-7f67','RC1448e246:186ba1ffea1:-7f69','vrs.facts.VrsBillItem.billcode','billcode','CODE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),('RCC1448e246:186ba1ffea1:-7f68','RC1448e246:186ba1ffea1:-7f69','vrs.facts.VrsBillItem.acctid','acctid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"LEGALIZATION_FEE\",value:\"LEGALIZATION FEE\"]]',NULL,0),('RCC1448e246:186ba1ffea1:-7f6e','RC1448e246:186ba1ffea1:-7f71','vrs.facts.VrsBillItem.acctid','acctid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"FILING_FEE\",value:\"FILING FEE\"]]',NULL,0),('RCC1448e246:186ba1ffea1:-7f6f','RC1448e246:186ba1ffea1:-7f71','vrs.facts.VrsBillItem.billcode','billcode','CODE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),('RCC1448e246:186ba1ffea1:-7f70','RC1448e246:186ba1ffea1:-7f71','vrs.facts.VrsBillItem.objid','objid','REFID',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3),('RCC1448e246:186ba1ffea1:-7f72','RC1448e246:186ba1ffea1:-7f74','treasury.facts.PaymentItem.amount','amount','AMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCC1448e246:186ba1ffea1:-7f73','RC1448e246:186ba1ffea1:-7f74','treasury.facts.PaymentItem.billitemrefid','billitemrefid',NULL,'equals','==',NULL,NULL,'REFID',NULL,NULL,NULL,NULL,NULL,0),('RCC1448e246:186ba1ffea1:-7f79','RC1448e246:186ba1ffea1:-7f7b','treasury.facts.PaymentItem.billitemrefid','billitemrefid',NULL,'equals','==',NULL,'RCC1448e246:186ba1ffea1:-7f7c','REFID',NULL,NULL,NULL,NULL,NULL,0),('RCC1448e246:186ba1ffea1:-7f7a','RC1448e246:186ba1ffea1:-7f7b','treasury.facts.PaymentItem.amount','amount','AMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCC1448e246:186ba1ffea1:-7f7c','RC1448e246:186ba1ffea1:-7f7f','vrs.facts.VrsBillItem.objid','objid','REFID',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3),('RCC1448e246:186ba1ffea1:-7f7d','RC1448e246:186ba1ffea1:-7f7f','vrs.facts.VrsBillItem.billcode','billcode','CODE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),('RCC1448e246:186ba1ffea1:-7f7e','RC1448e246:186ba1ffea1:-7f7f','vrs.facts.VrsBillItem.acctid','acctid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"BODY_NO_FEE\",value:\"BODY NO FEE\"]]',NULL,0),('RCC1448e246:186ba1ffea1:-7f84','RC1448e246:186ba1ffea1:-7f87','vrs.facts.VrsBillItem.acctid','acctid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"FRANCHISE_FEE\",value:\"FRANCHISE FEE\"]]',NULL,0),('RCC1448e246:186ba1ffea1:-7f85','RC1448e246:186ba1ffea1:-7f87','vrs.facts.VrsBillItem.billcode','billcode','CODE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),('RCC1448e246:186ba1ffea1:-7f86','RC1448e246:186ba1ffea1:-7f87','vrs.facts.VrsBillItem.objid','objid','REFID',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3),('RCC1448e246:186ba1ffea1:-7f88','RC1448e246:186ba1ffea1:-7f8a','treasury.facts.PaymentItem.amount','amount','AMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCC1448e246:186ba1ffea1:-7f89','RC1448e246:186ba1ffea1:-7f8a','treasury.facts.PaymentItem.billitemrefid','billitemrefid',NULL,'equals','==',NULL,NULL,'REFID',NULL,NULL,NULL,NULL,NULL,0),('RCC1448e246:186ba1ffea1:-7f8f','RC1448e246:186ba1ffea1:-7f91','treasury.facts.PaymentItem.billitemrefid','billitemrefid',NULL,'equals','==',NULL,'RCC1448e246:186ba1ffea1:-7f92','REFID',NULL,NULL,NULL,NULL,NULL,0),('RCC1448e246:186ba1ffea1:-7f90','RC1448e246:186ba1ffea1:-7f91','treasury.facts.PaymentItem.amount','amount','AMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCC1448e246:186ba1ffea1:-7f92','RC1448e246:186ba1ffea1:-7f95','vrs.facts.VrsBillItem.objid','objid','REFID',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3),('RCC1448e246:186ba1ffea1:-7f93','RC1448e246:186ba1ffea1:-7f95','vrs.facts.VrsBillItem.billcode','billcode','CODE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),('RCC1448e246:186ba1ffea1:-7f94','RC1448e246:186ba1ffea1:-7f95','vrs.facts.VrsBillItem.acctid','acctid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"CERTIFICATION_FEE\",value:\"CERTIFICATION FEE\"]]',NULL,0),('RCC1448e246:186ba1ffea1:-7feb','RC1448e246:186ba1ffea1:-7fed','vrs.facts.VrsTxn.txntypeid','txntypeid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"TRIMOBILE_RENEWAL\",value:\"TRIMOBILE_RENEWAL\"]]',NULL,0),('RCC1448e246:186ba1ffea1:-7fec','RC1448e246:186ba1ffea1:-7fed','vrs.facts.VrsTxn.activeyear','activeyear','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCONST-16f4340b:183cf6cd6d6:-754d','RCOND-16f4340b:183cf6cd6d6:-758c','vrs.facts.VrsAccount.year','year','YEAR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST-16f4340b:183cf6cd6d6:-77bc','RCOND-16f4340b:183cf6cd6d6:-7842','treasury.facts.VarDate.tag','tag',NULL,'equal to','==',NULL,NULL,NULL,NULL,NULL,'duedate',NULL,NULL,0),('RCONST-181455fd:183df531a10:-788c','RCOND-181455fd:183df531a10:-78ca','vrs.facts.VrsAccount.year','year','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST-181455fd:183df531a10:-7d5f','RCOND-181455fd:183df531a10:-7d8d','treasury.facts.TransactionDate.date','date','TDATE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST-181455fd:183df531a10:-7e70','RCOND-181455fd:183df531a10:-7eb7','treasury.facts.VarDate.tag','tag',NULL,'equal to','==',NULL,NULL,NULL,NULL,NULL,'duedate',NULL,NULL,1),('RCONST-181455fd:183df531a10:-7ea1','RCOND-181455fd:183df531a10:-7eb7','treasury.facts.VarDate.date','date','VDATE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST-2c08c905:186b4861e0a:-79d8','RCOND-2c08c905:186b4861e0a:-7a06','vrs.facts.VrsTxn.activeyear','activeyear','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST-31609ab4:186abb24eb9:-7441','RCOND-31609ab4:186abb24eb9:-75b8','vrs.facts.VrsDoc.prevexpirydate','prevexpirydate','PEXPIRYDATE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),('RCONST-31609ab4:186abb24eb9:-7546','RCOND-31609ab4:186abb24eb9:-75b8','vrs.facts.VrsDoc.dtissued','dtissued','DTISSUED',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCONST-31609ab4:186abb24eb9:-7596','RCOND-31609ab4:186abb24eb9:-75b8','vrs.facts.VrsDoc.doctypeid','doctypeid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"MTOP_FRANCHISE_PERMIT\",value:\"MTOP FRANCHISE PERMIT\"]]',NULL,0),('RCONST-3291e393:18677e4c531:-7842','RCOND-3291e393:18677e4c531:-7db3','vrs.facts.VrsBillItem.year','year',NULL,'less than or equal to','<=',1,'RCONST-3291e393:18677e4c531:-7e42','YR',NULL,NULL,NULL,NULL,NULL,2),('RCONST-3291e393:18677e4c531:-7913','RCOND-3291e393:18677e4c531:-7db3','vrs.facts.VrsBillItem.surcharge','surcharge',NULL,'equal to','==',NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,1),('RCONST-3291e393:18677e4c531:-7bc1','RCOND-3291e393:18677e4c531:-7db3','vrs.facts.VrsBillItem.amount','amount','AMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST-3291e393:18677e4c531:-7e42','RCOND-3291e393:18677e4c531:-7e80','vrs.facts.VrsAccount.year','year','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST-37f036c9:183eec06ab9:-77ed','RC-2e4aa27:183cafd1647:-7fb7','vrs.facts.VrsBillItem.billcode','billcode','CODE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),('RCONST-62218cb0:186c977f520:-7c04','RC-64a7157b:186b57a138f:-7fe3','vrs.facts.VrsTxn.activeyear','activeyear',NULL,'equal to','==',1,'RCONST299990a3:186b5702e3c:-677c','YR',NULL,NULL,NULL,NULL,NULL,1),('RCONST299990a3:186b5702e3c:-5b5d','RCOND299990a3:186b5702e3c:-5b7f','vrs.facts.VrsTxn.txntypeid','txntypeid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"MTOP_RENEWAL\",value:\"MTOP Renewal\"]]',NULL,0),('RCONST299990a3:186b5702e3c:-6654','RCOND299990a3:186b5702e3c:-6664','treasury.facts.TransactionYear.year','year','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST299990a3:186b5702e3c:-677c','RCOND299990a3:186b5702e3c:-678c','treasury.facts.TransactionYear.year','year','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST4808e68a:18686912375:-743f','RCOND4808e68a:18686912375:-7484','treasury.facts.PaymentItem.amount','amount','AMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCONST4808e68a:18686912375:-746e','RCOND4808e68a:18686912375:-7484','treasury.facts.PaymentItem.billitemrefid','billitemrefid',NULL,'equals','==',NULL,'RCONST4808e68a:18686912375:-75ee','REFID',NULL,NULL,NULL,NULL,NULL,0),('RCONST4808e68a:18686912375:-75ee','RC-2e4aa27:183cafd1647:-7fb7','vrs.facts.VrsBillItem.objid','objid','REFID',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3),('RCONST4808e68a:18686912375:-78f1','RCOND4808e68a:18686912375:-7a61','treasury.facts.SurchargeItem.billcode','billcode','BCODE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCONST4808e68a:18686912375:-7986','RCOND4808e68a:18686912375:-79c8','treasury.facts.PaymentItem.amount','amount','AMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCONST4808e68a:18686912375:-79b2','RCOND4808e68a:18686912375:-79c8','treasury.facts.PaymentItem.billitemrefid','billitemrefid',NULL,'equals','==',NULL,'RCONST4808e68a:18686912375:-7a2d','REFID',NULL,NULL,NULL,NULL,NULL,0),('RCONST4808e68a:18686912375:-7a2d','RCOND4808e68a:18686912375:-7a61','treasury.facts.SurchargeItem.objid','objid','REFID',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST51a47117:186ba0179c8:-755f','RCOND51a47117:186ba0179c8:-7584','vrs.facts.VrsFranchise.expired','expired',NULL,'is true','== true',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST51a47117:186ba0179c8:-7795','RCOND51a47117:186ba0179c8:-7842','vrs.facts.VrsTxn.activeyear','activeyear','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCONST51a47117:186ba0179c8:-7820','RCOND51a47117:186ba0179c8:-7842','vrs.facts.VrsTxn.txntypeid','txntypeid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"TRIMOBILE_RENEWAL\",value:\"TRIMOBILE_RENEWAL\"]]',NULL,0),('RCONST664a91a3:1837d695764:-6909','RCOND664a91a3:1837d695764:-691f','treasury.facts.Payment.amount','amount','AMT','greater than','>',NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,0),('RCONST664a91a3:1837d695764:-6a31','RCOND664a91a3:1837d695764:-6a9d','vrs.facts.VrsBillItem.paid','paid',NULL,'not true','== false',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST664a91a3:1837d695764:-6b0c','RCOND664a91a3:1837d695764:-6b22','treasury.facts.Payment.amount','amount',NULL,'greater than','>',NULL,NULL,NULL,0.00,NULL,NULL,NULL,NULL,0),('RCONST765b50be:1966169b2e1:-29e0','RCOND765b50be:1966169b2e1:-2a21','treasury.facts.PaymentItem.amount','amount','AMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCONST765b50be:1966169b2e1:-2a0d','RCOND765b50be:1966169b2e1:-2a21','treasury.facts.PaymentItem.billitemrefid','billitemrefid',NULL,'equals','==',NULL,'RCONST765b50be:1966169b2e1:-2ad0','REFID',NULL,NULL,NULL,NULL,NULL,0),('RCONST765b50be:1966169b2e1:-2ad0','RCOND765b50be:1966169b2e1:-2c10','vrs.facts.VrsBillItem.objid','objid','REFID',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),('RCONST765b50be:1966169b2e1:-2b42','RCOND765b50be:1966169b2e1:-2c10','vrs.facts.VrsBillItem.billcode','billcode','CODE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCONST765b50be:1966169b2e1:-2bc3','RCOND765b50be:1966169b2e1:-2c10','vrs.facts.VrsBillItem.acctid','acctid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"MTOP_FILING_FEE_(RENEWED_FRANCHISE)\",value:\"MTOP FILING FEE (RENEWED FRANCHISE)\"],[key:\"MTOP_FILING_FEE_(RENEWAL)\",value:\"MTOP FILING FEE (RENEWAL)\"]]',NULL,0),('RCONST765b50be:1966169b2e1:-34b3','RCOND765b50be:1966169b2e1:-34f4','treasury.facts.PaymentItem.amount','amount','AMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCONST765b50be:1966169b2e1:-34e0','RCOND765b50be:1966169b2e1:-34f4','treasury.facts.PaymentItem.billitemrefid','billitemrefid',NULL,'equals','==',NULL,'RCONST765b50be:1966169b2e1:-35f5','REFID',NULL,NULL,NULL,NULL,NULL,0),('RCONST765b50be:1966169b2e1:-35f5','RCOND765b50be:1966169b2e1:-3795','vrs.facts.VrsBillItem.objid','objid','REFID',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),('RCONST765b50be:1966169b2e1:-3666','RCOND765b50be:1966169b2e1:-3795','vrs.facts.VrsBillItem.billcode','billcode','CODE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCONST765b50be:1966169b2e1:-36e6','RCOND765b50be:1966169b2e1:-3795','vrs.facts.VrsBillItem.acctid','acctid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"DOCUMENTARY_STAMP_(MTOP)\",value:\"DOCUMENTARY STAMP\"]]',NULL,0),('RCONST765b50be:1966169b2e1:-3828','RCOND765b50be:1966169b2e1:-3869','treasury.facts.PaymentItem.amount','amount','AMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCONST765b50be:1966169b2e1:-3855','RCOND765b50be:1966169b2e1:-3869','treasury.facts.PaymentItem.billitemrefid','billitemrefid',NULL,'equals','==',NULL,'RCONST765b50be:1966169b2e1:-3bf0','REFID',NULL,NULL,NULL,NULL,NULL,0),('RCONST765b50be:1966169b2e1:-3bf0','RCOND765b50be:1966169b2e1:-3d53','vrs.facts.VrsBillItem.objid','objid','REFID',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),('RCONST765b50be:1966169b2e1:-3c5d','RCOND765b50be:1966169b2e1:-3d53','vrs.facts.VrsBillItem.billcode','billcode','CODE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCONST765b50be:1966169b2e1:-3d05','RCOND765b50be:1966169b2e1:-3d53','vrs.facts.VrsBillItem.acctid','acctid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"CERTIFICATION_FEE\",value:\"CERTIFICATION FEE\"]]',NULL,0),('RCONST765b50be:1966169b2e1:-3f8c','RCOND765b50be:1966169b2e1:-4294','vrs.facts.VrsBillItem.objid','objid','REFID',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),('RCONST765b50be:1966169b2e1:-3ffc','RCOND765b50be:1966169b2e1:-4294','vrs.facts.VrsBillItem.billcode','billcode','CODE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCONST765b50be:1966169b2e1:-4092','RCOND765b50be:1966169b2e1:-4294','vrs.facts.VrsBillItem.acctid','acctid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"SUP._&_REF._FEE\",value:\"SUP. & REG. FEE\"]]',NULL,0),('RCONST765b50be:1966169b2e1:-4c23','RCOND765b50be:1966169b2e1:-4c8c','treasury.facts.PaymentItem.amount','amount','AMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCONST765b50be:1966169b2e1:-4c78','RCOND765b50be:1966169b2e1:-4c8c','treasury.facts.PaymentItem.billitemrefid','billitemrefid',NULL,'equals','==',NULL,'RCONST765b50be:1966169b2e1:-4e53','REFID',NULL,NULL,NULL,NULL,NULL,0),('RCONST765b50be:1966169b2e1:-4e53','RCOND765b50be:1966169b2e1:-529f','vrs.facts.VrsBillItem.objid','objid','REFID',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),('RCONST765b50be:1966169b2e1:-4efe','RCOND765b50be:1966169b2e1:-529f','vrs.facts.VrsBillItem.billcode','billcode','CODE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCONST765b50be:1966169b2e1:-5014','RCOND765b50be:1966169b2e1:-529f','vrs.facts.VrsBillItem.acctid','acctid',NULL,'is any of the ff.','matches',0,NULL,NULL,NULL,NULL,NULL,'[[key:\"MTOP_FILING_FEE_(RENEWAL)\",value:\"MTOP FILING FEE (RENEWAL)\"],[key:\"MTOP_FILING_FEE_(MTOP_NEW_FRANCHISE)\",value:\"MTOP FILING FEE (MTOP NEW FRANCHISE)\"]]',NULL,2),('RCONST765b50be:1966169b2e1:-5459','RCOND765b50be:1966169b2e1:-549a','treasury.facts.PaymentItem.amount','amount','AMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCONST765b50be:1966169b2e1:-5486','RCOND765b50be:1966169b2e1:-549a','treasury.facts.PaymentItem.billitemrefid','billitemrefid',NULL,'equals','==',NULL,'RCONST765b50be:1966169b2e1:-5732','REFID',NULL,NULL,NULL,NULL,NULL,0),('RCONST765b50be:1966169b2e1:-5732','RCOND765b50be:1966169b2e1:-5a15','vrs.facts.VrsBillItem.objid','objid','REFID',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),('RCONST765b50be:1966169b2e1:-5935','RCOND765b50be:1966169b2e1:-5a15','vrs.facts.VrsBillItem.billcode','billcode','CODE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCONST765b50be:1966169b2e1:-59c8','RCOND765b50be:1966169b2e1:-5a15','vrs.facts.VrsBillItem.acctid','acctid',NULL,'is any of the ff.','matches',0,NULL,NULL,NULL,NULL,NULL,'[[key:\"ROADWORTHY_FEE_(MTOP)\",value:\"ROADWORTHY FEE (MTOP)\"]]',NULL,0),('RCONST765b50be:1966169b2e1:-63b5','RCOND765b50be:1966169b2e1:-63f6','treasury.facts.PaymentItem.amount','amount','AMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCONST765b50be:1966169b2e1:-63e2','RCOND765b50be:1966169b2e1:-63f6','treasury.facts.PaymentItem.billitemrefid','billitemrefid',NULL,'equals','==',NULL,'RCONST765b50be:1966169b2e1:-67bb','REFID',NULL,NULL,NULL,NULL,NULL,0),('RCONST765b50be:1966169b2e1:-67bb','RCOND765b50be:1966169b2e1:-6a7d','vrs.facts.VrsBillItem.objid','objid','REFID',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2),('RCONST765b50be:1966169b2e1:-6854','RCOND765b50be:1966169b2e1:-6a7d','vrs.facts.VrsBillItem.billcode','billcode','CODE',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1),('RCONST765b50be:1966169b2e1:-6a30','RCOND765b50be:1966169b2e1:-6a7d','vrs.facts.VrsBillItem.acctid','acctid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"STICKER_(MTOP)\",value:\"STICKER (MTOP)\"]]',NULL,0),('RCONST765b50be:1966169b2e1:-77b1','RCOND765b50be:1966169b2e1:-77c1','treasury.facts.TransactionYear.year','year','YR',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0),('RCONST765b50be:1966169b2e1:-7866','RCOND765b50be:1966169b2e1:-7882','vrs.facts.VrsTxn.txntypeid','txntypeid',NULL,'is any of the ff.','matches',NULL,NULL,NULL,NULL,NULL,NULL,'[[key:\"TRIMOBILE_NEW\",value:\"TRIMOBILE_NEW\"],[key:\"TRIMOBILE_RENEWAL\",value:\"TRIMOBILE_RENEWAL\"]]',NULL,0);
/*!40000 ALTER TABLE `sys_rule_condition_constraint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_condition_var`
--

DROP TABLE IF EXISTS `sys_rule_condition_var`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_condition_var` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `ruleid` varchar(50) DEFAULT NULL,
  `varname` varchar(50) DEFAULT NULL,
  `datatype` varchar(50) DEFAULT NULL,
  `pos` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `parentid` (`parentid`),
  CONSTRAINT `sys_rule_condition_var_ibfk_1` FOREIGN KEY (`parentid`) REFERENCES `sys_rule_condition` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_condition_var`
--

LOCK TABLES `sys_rule_condition_var` WRITE;
/*!40000 ALTER TABLE `sys_rule_condition_var` DISABLE KEYS */;
INSERT INTO `sys_rule_condition_var` VALUES ('RC-1fdb3a47:186b49d951b:-7ffd','RC-1fdb3a47:186b49d951b:-7ffd','RUL-2c08c905:186b4861e0a:-7af2','VDOC','vrs.facts.VrsDoc',1),('RC-2e4aa27:183cafd1647:-7fb7','RC-2e4aa27:183cafd1647:-7fb7','RUL1dbf685:183ca5a944b:-6116','BILLITEM','vrs.facts.VrsBillItem',0),('RC1448e246:186ba1ffea1:-7f53','RC1448e246:186ba1ffea1:-7f53','RUL-45e8bc36:186ba1dc867:-7094','BILLITEM','vrs.facts.VrsBillItem',0),('RC1448e246:186ba1ffea1:-7f5b','RC1448e246:186ba1ffea1:-7f5b','RUL-45e8bc36:186ba1dc867:-7199','BILLITEM','vrs.facts.VrsBillItem',0),('RC1448e246:186ba1ffea1:-7f69','RC1448e246:186ba1ffea1:-7f69','RUL-45e8bc36:186ba1dc867:-7297','BILLITEM','vrs.facts.VrsBillItem',0),('RC1448e246:186ba1ffea1:-7f71','RC1448e246:186ba1ffea1:-7f71','RUL-45e8bc36:186ba1dc867:-7399','BILLITEM','vrs.facts.VrsBillItem',0),('RC1448e246:186ba1ffea1:-7f7f','RC1448e246:186ba1ffea1:-7f7f','RUL-45e8bc36:186ba1dc867:-74ea','BILLITEM','vrs.facts.VrsBillItem',0),('RC1448e246:186ba1ffea1:-7f87','RC1448e246:186ba1ffea1:-7f87','RUL-45e8bc36:186ba1dc867:-75e8','BILLITEM','vrs.facts.VrsBillItem',0),('RC1448e246:186ba1ffea1:-7f95','RC1448e246:186ba1ffea1:-7f95','RUL-45e8bc36:186ba1dc867:-77bb','BILLITEM','vrs.facts.VrsBillItem',0),('RCC-da3b6bf:18676bfe78e:-7ff9','RC-da3b6bf:18676bfe78e:-7ffa','RUL66efd98c:18676a8376d:-7296','DUEDATE','date',1),('RCC1448e246:186ba1ffea1:-7f4e','RC1448e246:186ba1ffea1:-7f4f','RUL-45e8bc36:186ba1dc867:-7094','AMT','decimal',1),('RCC1448e246:186ba1ffea1:-7f50','RC1448e246:186ba1ffea1:-7f53','RUL-45e8bc36:186ba1dc867:-7094','REFID','string',3),('RCC1448e246:186ba1ffea1:-7f51','RC1448e246:186ba1ffea1:-7f53','RUL-45e8bc36:186ba1dc867:-7094','CODE','string',2),('RCC1448e246:186ba1ffea1:-7f59','RC1448e246:186ba1ffea1:-7f5b','RUL-45e8bc36:186ba1dc867:-7199','CODE','string',2),('RCC1448e246:186ba1ffea1:-7f5a','RC1448e246:186ba1ffea1:-7f5b','RUL-45e8bc36:186ba1dc867:-7199','REFID','string',3),('RCC1448e246:186ba1ffea1:-7f5c','RC1448e246:186ba1ffea1:-7f5e','RUL-45e8bc36:186ba1dc867:-7199','AMT','decimal',1),('RCC1448e246:186ba1ffea1:-7f64','RC1448e246:186ba1ffea1:-7f65','RUL-45e8bc36:186ba1dc867:-7297','AMT','decimal',1),('RCC1448e246:186ba1ffea1:-7f66','RC1448e246:186ba1ffea1:-7f69','RUL-45e8bc36:186ba1dc867:-7297','REFID','string',3),('RCC1448e246:186ba1ffea1:-7f67','RC1448e246:186ba1ffea1:-7f69','RUL-45e8bc36:186ba1dc867:-7297','CODE','string',2),('RCC1448e246:186ba1ffea1:-7f6f','RC1448e246:186ba1ffea1:-7f71','RUL-45e8bc36:186ba1dc867:-7399','CODE','string',2),('RCC1448e246:186ba1ffea1:-7f70','RC1448e246:186ba1ffea1:-7f71','RUL-45e8bc36:186ba1dc867:-7399','REFID','string',3),('RCC1448e246:186ba1ffea1:-7f72','RC1448e246:186ba1ffea1:-7f74','RUL-45e8bc36:186ba1dc867:-7399','AMT','decimal',1),('RCC1448e246:186ba1ffea1:-7f7a','RC1448e246:186ba1ffea1:-7f7b','RUL-45e8bc36:186ba1dc867:-74ea','AMT','decimal',1),('RCC1448e246:186ba1ffea1:-7f7c','RC1448e246:186ba1ffea1:-7f7f','RUL-45e8bc36:186ba1dc867:-74ea','REFID','string',3),('RCC1448e246:186ba1ffea1:-7f7d','RC1448e246:186ba1ffea1:-7f7f','RUL-45e8bc36:186ba1dc867:-74ea','CODE','string',2),('RCC1448e246:186ba1ffea1:-7f85','RC1448e246:186ba1ffea1:-7f87','RUL-45e8bc36:186ba1dc867:-75e8','CODE','string',2),('RCC1448e246:186ba1ffea1:-7f86','RC1448e246:186ba1ffea1:-7f87','RUL-45e8bc36:186ba1dc867:-75e8','REFID','string',3),('RCC1448e246:186ba1ffea1:-7f88','RC1448e246:186ba1ffea1:-7f8a','RUL-45e8bc36:186ba1dc867:-75e8','AMT','decimal',1),('RCC1448e246:186ba1ffea1:-7f90','RC1448e246:186ba1ffea1:-7f91','RUL-45e8bc36:186ba1dc867:-77bb','AMT','decimal',1),('RCC1448e246:186ba1ffea1:-7f92','RC1448e246:186ba1ffea1:-7f95','RUL-45e8bc36:186ba1dc867:-77bb','REFID','string',3),('RCC1448e246:186ba1ffea1:-7f93','RC1448e246:186ba1ffea1:-7f95','RUL-45e8bc36:186ba1dc867:-77bb','CODE','string',2),('RCC1448e246:186ba1ffea1:-7fec','RC1448e246:186ba1ffea1:-7fed','RUL-45e8bc36:186ba1dc867:-7ced','YR','integer',1),('RCOND-31609ab4:186abb24eb9:-75b8','RCOND-31609ab4:186abb24eb9:-75b8','RUL-31609ab4:186abb24eb9:-79c0','VDOC','vrs.facts.VrsDoc',1),('RCOND-3291e393:18677e4c531:-7db3','RCOND-3291e393:18677e4c531:-7db3','RUL66efd98c:18676a8376d:-7296','BILLITEM','vrs.facts.VrsBillItem',3),('RCOND4808e68a:18686912375:-7a61','RCOND4808e68a:18686912375:-7a61','RUL4808e68a:18686912375:-7b4b','SURITM','treasury.facts.SurchargeItem',0),('RCOND664a91a3:1837d695764:-691f','RCOND664a91a3:1837d695764:-691f','RUL664a91a3:1837d695764:-6973','PMT','treasury.facts.Payment',0),('RCOND664a91a3:1837d695764:-6a9d','RCOND664a91a3:1837d695764:-6a9d','RUL664a91a3:1837d695764:-6dd4','BILLITEM','vrs.facts.VrsBillItem',1),('RCOND664a91a3:1837d695764:-6b22','RCOND664a91a3:1837d695764:-6b22','RUL664a91a3:1837d695764:-6dd4','PMT','treasury.facts.Payment',0),('RCOND6da9fa81:183789e12da:-795b','RCOND6da9fa81:183789e12da:-795b','RUL6da9fa81:183789e12da:-79b1','BILL','treasury.facts.Bill',0),('RCOND765b50be:1966169b2e1:-2c10','RCOND765b50be:1966169b2e1:-2c10','RUL765b50be:1966169b2e1:-2c5e','BILLITEM','vrs.facts.VrsBillItem',0),('RCOND765b50be:1966169b2e1:-3795','RCOND765b50be:1966169b2e1:-3795','RUL765b50be:1966169b2e1:-37d3','BILLITEM','vrs.facts.VrsBillItem',0),('RCOND765b50be:1966169b2e1:-3d53','RCOND765b50be:1966169b2e1:-3d53','RUL765b50be:1966169b2e1:-3da2','BILLITEM','vrs.facts.VrsBillItem',0),('RCOND765b50be:1966169b2e1:-4294','RCOND765b50be:1966169b2e1:-4294','RUL765b50be:1966169b2e1:-42d2','BILLITEM','vrs.facts.VrsBillItem',0),('RCOND765b50be:1966169b2e1:-529f','RCOND765b50be:1966169b2e1:-529f','RUL765b50be:1966169b2e1:-5327','BILLITEM','vrs.facts.VrsBillItem',0),('RCOND765b50be:1966169b2e1:-5a15','RCOND765b50be:1966169b2e1:-5a15','RUL765b50be:1966169b2e1:-5a53','BILLITEM','vrs.facts.VrsBillItem',0),('RCOND765b50be:1966169b2e1:-6a7d','RCOND765b50be:1966169b2e1:-6a7d','RUL765b50be:1966169b2e1:-6adb','BILLITEM','vrs.facts.VrsBillItem',0),('RCONST-16f4340b:183cf6cd6d6:-754d','RCOND-16f4340b:183cf6cd6d6:-758c','RUL-16f4340b:183cf6cd6d6:-7989','YEAR','integer',0),('RCONST-181455fd:183df531a10:-788c','RCOND-181455fd:183df531a10:-78ca','RUL6da9fa81:183789e12da:-79b1','YR','integer',0),('RCONST-181455fd:183df531a10:-7d5f','RCOND-181455fd:183df531a10:-7d8d','RUL6da9fa81:183789e12da:-79b1','TDATE','date',0),('RCONST-181455fd:183df531a10:-7ea1','RCOND-181455fd:183df531a10:-7eb7','RUL6da9fa81:183789e12da:-79b1','VDATE','date',0),('RCONST-2c08c905:186b4861e0a:-79d8','RCOND-2c08c905:186b4861e0a:-7a06','RUL-2c08c905:186b4861e0a:-7af2','YR','integer',0),('RCONST-31609ab4:186abb24eb9:-7441','RCOND-31609ab4:186abb24eb9:-75b8','RUL-31609ab4:186abb24eb9:-79c0','PEXPIRYDATE','date',2),('RCONST-31609ab4:186abb24eb9:-7546','RCOND-31609ab4:186abb24eb9:-75b8','RUL-31609ab4:186abb24eb9:-79c0','DTISSUED','date',1),('RCONST-3291e393:18677e4c531:-7bc1','RCOND-3291e393:18677e4c531:-7db3','RUL66efd98c:18676a8376d:-7296','AMT','decimal',0),('RCONST-3291e393:18677e4c531:-7e42','RCOND-3291e393:18677e4c531:-7e80','RUL66efd98c:18676a8376d:-7296','YR','integer',0),('RCONST-37f036c9:183eec06ab9:-77ed','RC-2e4aa27:183cafd1647:-7fb7','RUL1dbf685:183ca5a944b:-6116','CODE','string',2),('RCONST299990a3:186b5702e3c:-6654','RCOND299990a3:186b5702e3c:-6664','RUL299990a3:186b5702e3c:-6bd1','YR','integer',0),('RCONST299990a3:186b5702e3c:-677c','RCOND299990a3:186b5702e3c:-678c','RUL299990a3:186b5702e3c:-68f2','YR','integer',0),('RCONST4808e68a:18686912375:-743f','RCOND4808e68a:18686912375:-7484','RUL1dbf685:183ca5a944b:-6116','AMT','decimal',1),('RCONST4808e68a:18686912375:-75ee','RC-2e4aa27:183cafd1647:-7fb7','RUL1dbf685:183ca5a944b:-6116','REFID','string',3),('RCONST4808e68a:18686912375:-78f1','RCOND4808e68a:18686912375:-7a61','RUL4808e68a:18686912375:-7b4b','BCODE','string',1),('RCONST4808e68a:18686912375:-7986','RCOND4808e68a:18686912375:-79c8','RUL4808e68a:18686912375:-7b4b','AMT','decimal',1),('RCONST4808e68a:18686912375:-7a2d','RCOND4808e68a:18686912375:-7a61','RUL4808e68a:18686912375:-7b4b','REFID','string',0),('RCONST51a47117:186ba0179c8:-7795','RCOND51a47117:186ba0179c8:-7842','RUL51a47117:186ba0179c8:-78c8','YR','integer',1),('RCONST664a91a3:1837d695764:-6909','RCOND664a91a3:1837d695764:-691f','RUL664a91a3:1837d695764:-6973','AMT','decimal',0),('RCONST765b50be:1966169b2e1:-29e0','RCOND765b50be:1966169b2e1:-2a21','RUL765b50be:1966169b2e1:-2c5e','AMT','decimal',1),('RCONST765b50be:1966169b2e1:-2ad0','RCOND765b50be:1966169b2e1:-2c10','RUL765b50be:1966169b2e1:-2c5e','REFID','string',2),('RCONST765b50be:1966169b2e1:-2b42','RCOND765b50be:1966169b2e1:-2c10','RUL765b50be:1966169b2e1:-2c5e','CODE','string',1),('RCONST765b50be:1966169b2e1:-34b3','RCOND765b50be:1966169b2e1:-34f4','RUL765b50be:1966169b2e1:-37d3','AMT','decimal',1),('RCONST765b50be:1966169b2e1:-35f5','RCOND765b50be:1966169b2e1:-3795','RUL765b50be:1966169b2e1:-37d3','REFID','string',2),('RCONST765b50be:1966169b2e1:-3666','RCOND765b50be:1966169b2e1:-3795','RUL765b50be:1966169b2e1:-37d3','CODE','string',1),('RCONST765b50be:1966169b2e1:-3828','RCOND765b50be:1966169b2e1:-3869','RUL765b50be:1966169b2e1:-3da2','AMT','decimal',1),('RCONST765b50be:1966169b2e1:-3bf0','RCOND765b50be:1966169b2e1:-3d53','RUL765b50be:1966169b2e1:-3da2','REFID','string',2),('RCONST765b50be:1966169b2e1:-3c5d','RCOND765b50be:1966169b2e1:-3d53','RUL765b50be:1966169b2e1:-3da2','CODE','string',1),('RCONST765b50be:1966169b2e1:-3f8c','RCOND765b50be:1966169b2e1:-4294','RUL765b50be:1966169b2e1:-42d2','REFID','string',2),('RCONST765b50be:1966169b2e1:-3ffc','RCOND765b50be:1966169b2e1:-4294','RUL765b50be:1966169b2e1:-42d2','CODE','string',1),('RCONST765b50be:1966169b2e1:-4c23','RCOND765b50be:1966169b2e1:-4c8c','RUL765b50be:1966169b2e1:-5327','AMT','decimal',1),('RCONST765b50be:1966169b2e1:-4e53','RCOND765b50be:1966169b2e1:-529f','RUL765b50be:1966169b2e1:-5327','REFID','string',2),('RCONST765b50be:1966169b2e1:-4efe','RCOND765b50be:1966169b2e1:-529f','RUL765b50be:1966169b2e1:-5327','CODE','string',1),('RCONST765b50be:1966169b2e1:-5459','RCOND765b50be:1966169b2e1:-549a','RUL765b50be:1966169b2e1:-5a53','AMT','decimal',1),('RCONST765b50be:1966169b2e1:-5732','RCOND765b50be:1966169b2e1:-5a15','RUL765b50be:1966169b2e1:-5a53','REFID','string',2),('RCONST765b50be:1966169b2e1:-5935','RCOND765b50be:1966169b2e1:-5a15','RUL765b50be:1966169b2e1:-5a53','CODE','string',1),('RCONST765b50be:1966169b2e1:-63b5','RCOND765b50be:1966169b2e1:-63f6','RUL765b50be:1966169b2e1:-6adb','AMT','decimal',1),('RCONST765b50be:1966169b2e1:-67bb','RCOND765b50be:1966169b2e1:-6a7d','RUL765b50be:1966169b2e1:-6adb','REFID','string',2),('RCONST765b50be:1966169b2e1:-6854','RCOND765b50be:1966169b2e1:-6a7d','RUL765b50be:1966169b2e1:-6adb','CODE','string',1),('RCONST765b50be:1966169b2e1:-77b1','RCOND765b50be:1966169b2e1:-77c1','RUL765b50be:1966169b2e1:-7a6b','YR','integer',0);
/*!40000 ALTER TABLE `sys_rule_condition_var` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_deployed`
--

DROP TABLE IF EXISTS `sys_rule_deployed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_deployed` (
  `objid` varchar(50) NOT NULL,
  `ruletext` longtext,
  PRIMARY KEY (`objid`),
  CONSTRAINT `sys_rule_deployed_ibfk_1` FOREIGN KEY (`objid`) REFERENCES `sys_rule` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_deployed`
--

LOCK TABLES `sys_rule_deployed` WRITE;
/*!40000 ALTER TABLE `sys_rule_deployed` DISABLE KEYS */;
INSERT INTO `sys_rule_deployed` VALUES ('RUL-16f4340b:183cf6cd6d6:-7989','\npackage vrsbilling.ASSERT_DUE_DATE;\nimport vrsbilling.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"ASSERT_DUE_DATE\"\n	agenda-group \"initial\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		not ( treasury.facts.VarDate (  tag == \"duedate\" ) )\n		\n		 vrs.facts.VrsAccount (  YEAR:year ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"YEAR\", YEAR );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"date\", (new ActionExpression(\"@DATE( YEAR , 1,  20 )\", bindings)) );\n_p0.put( \"tag\", (new ActionExpression(\"\'duedate\'\", bindings)) );\naction.execute( \"assert-var-date\",_p0,drools);\n\nend\n\n\n	'),('RUL-2c08c905:186b4861e0a:-7af2','\npackage vrsdoc.SET_PERMIT_EXPIRYDATE;\nimport vrsdoc.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"SET_PERMIT_EXPIRYDATE\"\n	agenda-group \"issuance\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		VDOC: vrs.facts.VrsDoc (  doctypeid matches \"MTOP_PERMIT\" ) \n		\n		 vrs.facts.VrsTxn (  YR:activeyear ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"YR\", YR );\n		\n		bindings.put(\"VDOC\", VDOC );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"document\", VDOC );\n_p0.put( \"expirydate\", (new ActionExpression(\"@DATE(  YR, 12,  31)\", bindings)) );\naction.execute( \"update-vrs-doc\",_p0,drools);\n\nend\n\n\n	'),('RUL-31609ab4:186abb24eb9:-79c0','\npackage vrsdoc.SET_FRANCHISE_EXPIRY_DATE;\nimport vrsdoc.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"SET_FRANCHISE_EXPIRY_DATE\"\n	agenda-group \"issuance\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		VDOC: vrs.facts.VrsDoc (  doctypeid matches \"MTOP_FRANCHISE_PERMIT\",DTISSUED:dtissued,PEXPIRYDATE:prevexpirydate ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"VDOC\", VDOC );\n		\n		bindings.put(\"DTISSUED\", DTISSUED );\n		\n		bindings.put(\"PEXPIRYDATE\", PEXPIRYDATE );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"document\", VDOC );\n_p0.put( \"expirydate\", (new ActionExpression(\"def dt = ( PEXPIRYDATE == null ) ? DTISSUED : PEXPIRYDATE;  def mon = @MONTH( dt ); def day = @DAY( dt  ); def yr = @YEAR( dt  );  return @DATE( yr + 3 , mon ,  day );  \", bindings)) );\naction.execute( \"update-vrs-doc\",_p0,drools);\n\nend\n\n\n	'),('RUL5ab947a6:186c6423c21:-7bde','\npackage vrsdoc.ADD_TRIMOBILE_PERMIT;\nimport vrsdoc.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"ADD_TRIMOBILE_PERMIT\"\n	agenda-group \"initial\"\n	salience 1000\n	no-loop\n	when\n		\n		\n		 vrs.facts.VrsTxn (  txntypeid matches \"TRIMOBILE_NEW|TRIMOBILE_RENEWAL\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n	Map _p0 = new HashMap();\n_p0.put( \"doctypeid\", new KeyValue(\"MTOP_PERMIT\", \"MTOP PERMIT\") );\naction.execute( \"add-vrs-doc\",_p0,drools);\n\nend\n\n\n	'),('RUL664a91a3:1837d695764:-6973','\npackage vrspayment.CREDIT_EXCESS_PAYMENT;\nimport vrspayment.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"CREDIT_EXCESS_PAYMENT\"\n	agenda-group \"apply-payment\"\n	salience 1000\n	no-loop\n	when\n		\n		\n		PMT: treasury.facts.Payment (  AMT:amount > 0.00 ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"PMT\", PMT );\n		\n		bindings.put(\"AMT\", AMT );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"account\", new KeyValue(\"ADVANCE_PAYMENT\", \"ADVANCE PAYMENT (MTOP)\") );\n_p0.put( \"amount\", (new ActionExpression(\"AMT\", bindings)) );\naction.execute( \"add-credit-billitem\",_p0,drools);\n\nend\n\n\n	'),('RUL664a91a3:1837d695764:-6dd4','\npackage vrspayment.APPLY_BILLITEM_PAYMENT;\nimport vrspayment.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"APPLY_BILLITEM_PAYMENT\"\n	agenda-group \"apply-payment\"\n	salience 50000\n	\n	when\n		\n		\n		PMT: treasury.facts.Payment (  amount > 0.00 ) \n		\n		BILLITEM: vrs.facts.VrsBillItem (  paid == false  ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"PMT\", PMT );\n		\n		bindings.put(\"BILLITEM\", BILLITEM );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"payment\", PMT );\n_p0.put( \"billitem\", BILLITEM );\naction.execute( \"apply-billitem-payment\",_p0,drools);\n\nend\n\n\n	'),('RUL66efd98c:18676a8376d:-7296','\npackage vrsbilling.CALC_CURRENT_SURCHARGE;\nimport vrsbilling.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"CALC_CURRENT_SURCHARGE\"\n	agenda-group \"compute-surcharge\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		 treasury.facts.VarDate (  tag == \"duedate\",DUEDATE:date ) \n		\n		 treasury.facts.TransactionDate (  date > DUEDATE ) \n		\n		 vrs.facts.VrsAccount (  YR:year ) \n		\n		BILLITEM: vrs.facts.VrsBillItem (  AMT:amount,surcharge == 0.00,year <= YR ) \n		\n		 vrs.facts.VrsTxn (  txntypeid matches \"MTOP_RENEWAL\" ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"AMT\", AMT );\n		\n		bindings.put(\"YR\", YR );\n		\n		bindings.put(\"DUEDATE\", DUEDATE );\n		\n		bindings.put(\"BILLITEM\", BILLITEM );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"billitem\", BILLITEM );\n_p0.put( \"amount\", (new ActionExpression(\"@ROUND( AMT * 0.50 )\", bindings)) );\n_p0.put( \"account\", new KeyValue(\"PENALTY_LATE_RENEWAL\", \"PENALTY LATE RENEWAL\") );\n_p0.put( \"billdate\", (new ActionExpression(\"@DAYADD( DUEDATE, 1 )\", bindings)) );\naction.execute( \"add-surcharge-item\",_p0,drools);\n\nend\n\n\n	'),('RUL6da9fa81:183789e12da:-79b1','\npackage vrsbilling.SET_BILL_DUE_DATE;\nimport vrsbilling.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"SET_BILL_DUE_DATE\"\n	agenda-group \"summary\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		BILL: treasury.facts.Bill (   ) \n		\n		 treasury.facts.VarDate (  VDATE:date,tag == \"duedate\" ) \n		\n		 vrs.facts.VrsAccount (  YR:year ) \n		\n		 treasury.facts.TransactionDate (  TDATE:date ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"BILL\", BILL );\n		\n		bindings.put(\"YR\", YR );\n		\n		bindings.put(\"TDATE\", TDATE );\n		\n		bindings.put(\"VDATE\", VDATE );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"bill\", BILL );\n_p0.put( \"date\", (new ActionExpression(\"@IIF(  TDATE < VDATE ,  VDATE  ,   @DATE(  YR, 12 , 31 ) )\", bindings)) );\naction.execute( \"set-bill-validity-date\",_p0,drools);\nMap _p1 = new HashMap();\n_p1.put( \"bill\", BILL );\n_p1.put( \"date\", (new ActionExpression(\"VDATE\", bindings)) );\naction.execute( \"set-bill-due-date\",_p1,drools);\n\nend\n\n\n	'),('RUL765b50be:1966169b2e1:-2c5e','\npackage vrspayment.MTOP.FILING.FEE.RENEWAL;\nimport vrspayment.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"MTOP.FILING.FEE.RENEWAL\"\n	agenda-group \"map-account\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		BILLITEM: vrs.facts.VrsBillItem (  acctid matches \"MTOP_FILING_FEE_(RENEWED_FRANCHISE)|MTOP_FILING_FEE_(RENEWAL)\",CODE:billcode,REFID:objid ) \n		\n		 treasury.facts.PaymentItem (  billitemrefid == REFID,AMT:amount ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"BILLITEM\", BILLITEM );\n		\n		bindings.put(\"AMT\", AMT );\n		\n		bindings.put(\"CODE\", CODE );\n		\n		bindings.put(\"REFID\", REFID );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"account\", new KeyValue(\"ITMACCTca225b4:196602da772:-7910\", \"MTOP FILING FEE (RENEWAL)\") );\n_p0.put( \"amount\", (new ActionExpression(\"AMT\", bindings)) );\n_p0.put( \"groupid\", (new ActionExpression(\"CODE\", bindings)) );\naction.execute( \"add-cashreceipt-item\",_p0,drools);\n\nend\n\n\n	'),('RUL765b50be:1966169b2e1:-37d3','\npackage vrspayment.DOC.STAMP;\nimport vrspayment.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"DOC.STAMP\"\n	agenda-group \"map-account\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		BILLITEM: vrs.facts.VrsBillItem (  acctid matches \"DOCUMENTARY_STAMP_(MTOP)\",CODE:billcode,REFID:objid ) \n		\n		 treasury.facts.PaymentItem (  billitemrefid == REFID,AMT:amount ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"BILLITEM\", BILLITEM );\n		\n		bindings.put(\"AMT\", AMT );\n		\n		bindings.put(\"CODE\", CODE );\n		\n		bindings.put(\"REFID\", REFID );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"account\", new KeyValue(\"ITMACCT-285dc6bf:1628891736b:-7de1\", \"DOC. STAMP\") );\n_p0.put( \"amount\", (new ActionExpression(\"AMT\", bindings)) );\n_p0.put( \"groupid\", (new ActionExpression(\"CODE\", bindings)) );\naction.execute( \"add-cashreceipt-item\",_p0,drools);\n\nend\n\n\n	'),('RUL765b50be:1966169b2e1:-3da2','\npackage vrspayment.CERTIFICATION_FEE;\nimport vrspayment.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"CERTIFICATION_FEE\"\n	agenda-group \"map-account\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		BILLITEM: vrs.facts.VrsBillItem (  acctid matches \"CERTIFICATION_FEE\",CODE:billcode,REFID:objid ) \n		\n		 treasury.facts.PaymentItem (  billitemrefid == REFID,AMT:amount ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"BILLITEM\", BILLITEM );\n		\n		bindings.put(\"AMT\", AMT );\n		\n		bindings.put(\"CODE\", CODE );\n		\n		bindings.put(\"REFID\", REFID );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"account\", new KeyValue(\"ITMACCTca225b4:196602da772:-73a2\", \"CERTIFICATION FEE (MTOP)\") );\n_p0.put( \"amount\", (new ActionExpression(\"AMT\", bindings)) );\n_p0.put( \"groupid\", (new ActionExpression(\"CODE\", bindings)) );\naction.execute( \"add-cashreceipt-item\",_p0,drools);\n\nend\n\n\n	'),('RUL765b50be:1966169b2e1:-42d2','\npackage vrspayment.SUP.AND_REG.FEE;\nimport vrspayment.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"SUP.AND_REG.FEE\"\n	agenda-group \"map-account\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		BILLITEM: vrs.facts.VrsBillItem (  acctid matches \"SUP._&_REF._FEE\",CODE:billcode,REFID:objid ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"BILLITEM\", BILLITEM );\n		\n		bindings.put(\"CODE\", CODE );\n		\n		bindings.put(\"REFID\", REFID );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"account\", new KeyValue(\"ITMACCT7afb2ac7:15b40de16e4:-6983\", \"SUP. & REG. FEE\") );\n_p0.put( \"amount\", (new ActionExpression(\"AMT\", bindings)) );\n_p0.put( \"groupid\", (new ActionExpression(\"CODE\", bindings)) );\naction.execute( \"add-cashreceipt-item\",_p0,drools);\n\nend\n\n\n	'),('RUL765b50be:1966169b2e1:-5a53','\npackage vrspayment.ROAD_WORTHY;\nimport vrspayment.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"ROAD_WORTHY\"\n	agenda-group \"map-account\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		BILLITEM: vrs.facts.VrsBillItem (  acctid matches \"ROADWORTHY_FEE_(MTOP)\",CODE:billcode,REFID:objid ) \n		\n		 treasury.facts.PaymentItem (  billitemrefid == REFID,AMT:amount ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"BILLITEM\", BILLITEM );\n		\n		bindings.put(\"AMT\", AMT );\n		\n		bindings.put(\"CODE\", CODE );\n		\n		bindings.put(\"REFID\", REFID );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"account\", new KeyValue(\"ITMACCTca225b4:196602da772:-79b4\", \"ROADWORTHY (MTOP)\") );\n_p0.put( \"amount\", (new ActionExpression(\"AMT\", bindings)) );\n_p0.put( \"groupid\", (new ActionExpression(\"CODE\", bindings)) );\naction.execute( \"add-cashreceipt-item\",_p0,drools);\n\nend\n\n\n	'),('RUL765b50be:1966169b2e1:-6adb','\npackage vrspayment.STICKER;\nimport vrspayment.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"STICKER\"\n	agenda-group \"map-account\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		BILLITEM: vrs.facts.VrsBillItem (  acctid matches \"STICKER_(MTOP)\",CODE:billcode,REFID:objid ) \n		\n		 treasury.facts.PaymentItem (  billitemrefid == REFID,AMT:amount ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"BILLITEM\", BILLITEM );\n		\n		bindings.put(\"AMT\", AMT );\n		\n		bindings.put(\"CODE\", CODE );\n		\n		bindings.put(\"REFID\", REFID );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"account\", new KeyValue(\"ITMACCTca225b4:196602da772:-7a9b\", \"STICKER (MTOP)\") );\n_p0.put( \"amount\", (new ActionExpression(\"AMT\", bindings)) );\n_p0.put( \"groupid\", (new ActionExpression(\"CODE\", bindings)) );\naction.execute( \"add-cashreceipt-item\",_p0,drools);\n\nend\n\n\n	'),('RUL765b50be:1966169b2e1:-7a6b','\npackage vrsbilling.MTOP_NEW_AND_RENEW;\nimport vrsbilling.*;\nimport java.util.*;\nimport com.rameses.rules.common.*;\n\nglobal RuleAction action;\n\nrule \"MTOP_NEW_AND_RENEW\"\n	agenda-group \"compute-fees\"\n	salience 50000\n	no-loop\n	when\n		\n		\n		 vrs.facts.VrsTxn (  txntypeid matches \"TRIMOBILE_NEW|TRIMOBILE_RENEWAL\" ) \n		\n		 treasury.facts.TransactionYear (  YR:year ) \n		\n	then\n		Map bindings = new HashMap();\n		\n		bindings.put(\"YR\", YR );\n		\n	Map _p0 = new HashMap();\n_p0.put( \"account\", new KeyValue(\"DOCUMENTARY_STAMP_(MTOP)\", \"DOCUMENTARY STAMP\") );\n_p0.put( \"amount\", (new ActionExpression(\"30\", bindings)) );\n_p0.put( \"year\", YR );\naction.execute( \"add-vrs-billitem\",_p0,drools);\nMap _p1 = new HashMap();\n_p1.put( \"account\", new KeyValue(\"MAYORS_PERMIT_FEE\", \"MAYORS PERMIT FEE\") );\n_p1.put( \"amount\", (new ActionExpression(\"200\", bindings)) );\n_p1.put( \"year\", YR );\naction.execute( \"add-vrs-billitem\",_p1,drools);\nMap _p2 = new HashMap();\n_p2.put( \"account\", new KeyValue(\"SUP._&_REF._FEE\", \"SUP. & REG. FEE\") );\n_p2.put( \"amount\", (new ActionExpression(\"75\", bindings)) );\n_p2.put( \"year\", YR );\naction.execute( \"add-vrs-billitem\",_p2,drools);\nMap _p3 = new HashMap();\n_p3.put( \"account\", new KeyValue(\"MTOP_FILING_FEE_(RENEWAL)\", \"MTOP FILING FEE (RENEWAL)\") );\n_p3.put( \"amount\", (new ActionExpression(\"120\", bindings)) );\n_p3.put( \"year\", YR );\naction.execute( \"add-vrs-billitem\",_p3,drools);\nMap _p4 = new HashMap();\n_p4.put( \"account\", new KeyValue(\"STICKER_(MTOP)\", \"STICKER (MTOP)\") );\n_p4.put( \"amount\", (new ActionExpression(\"40\", bindings)) );\n_p4.put( \"year\", YR );\naction.execute( \"add-vrs-billitem\",_p4,drools);\n\nend\n\n\n	');
/*!40000 ALTER TABLE `sys_rule_deployed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_fact`
--

DROP TABLE IF EXISTS `sys_rule_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_fact` (
  `objid` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(160) DEFAULT NULL,
  `factclass` varchar(50) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `handler` varchar(50) DEFAULT NULL,
  `defaultvarname` varchar(25) DEFAULT NULL,
  `dynamic` int(11) DEFAULT NULL,
  `lookuphandler` varchar(50) DEFAULT NULL,
  `lookupkey` varchar(50) DEFAULT NULL,
  `lookupvalue` varchar(50) DEFAULT NULL,
  `lookupdatatype` varchar(50) DEFAULT NULL,
  `dynamicfieldname` varchar(50) DEFAULT NULL,
  `builtinconstraints` varchar(50) DEFAULT NULL,
  `domain` varchar(50) DEFAULT NULL,
  `factsuperclass` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_fact`
--

LOCK TABLES `sys_rule_fact` WRITE;
/*!40000 ALTER TABLE `sys_rule_fact` DISABLE KEYS */;
INSERT INTO `sys_rule_fact` VALUES ('com.rameses.rules.common.CurrentDate','com.rameses.rules.common.CurrentDate','Current Date','com.rameses.rules.common.CurrentDate',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'SYSTEM',NULL),('treasury.facts.AbstractBillItem','treasury.facts.AbstractBillItem','Abstract Bill Item','treasury.facts.AbstractBillItem',1,NULL,'ABILLITEM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.Bill','treasury.facts.Bill','Bill','treasury.facts.Bill',1,NULL,'BILL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.BillSubItem','treasury.facts.BillSubItem','Bill Sub Item','treasury.facts.BillSubItem',1,NULL,'SUBITM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY','treasury.facts.AbstractBillItem'),('treasury.facts.BooleanInfo','treasury.facts.BooleanInfo','Boolean Info','treasury.facts.BooleanInfo',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.CashReceipt','treasury.facts.CashReceipt','Cash Receipt','treasury.facts.CashReceipt',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.CashReceiptItem','treasury.facts.CashReceiptItem','Cash Receipt Item','treasury.facts.CashReceiptItem',1,NULL,'CRI',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.CreditBillItem','treasury.facts.CreditBillItem','Credit Bill Item','treasury.facts.CreditBillItem',1,NULL,'CRBILL',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY','treasury.facts.AbstractBillItem'),('treasury.facts.DateInfo','treasury.facts.DateInfo','Date Info','treasury.facts.DateInfo',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.DecimalInfo','treasury.facts.DecimalInfo','Decimal Info','treasury.facts.DecimalInfo',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.Deposit','treasury.facts.Deposit','Deposit','treasury.facts.Deposit',5,NULL,'PMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.HolidayFact','treasury.facts.HolidayFact','Holidays','treasury.facts.HolidayFact',1,NULL,'HOLIDAYS',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.IntegerInfo','treasury.facts.IntegerInfo','Integer Info','treasury.facts.IntegerInfo',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.InterestItem','treasury.facts.InterestItem','Interest Item','treasury.facts.InterestItem',1,NULL,'INT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY','treasury.facts.AbstractBillItem'),('treasury.facts.Payment','treasury.facts.Payment','Payment','treasury.facts.Payment',5,NULL,'PMT',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.PaymentItem','treasury.facts.PaymentItem','Payment Item','treasury.facts.PaymentItem',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.Requirement','treasury.facts.Requirement','Requirement','treasury.facts.Requirement',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.StringInfo','treasury.facts.StringInfo','String Info','treasury.facts.StringInfo',3,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.SurchargeItem','treasury.facts.SurchargeItem','Surcharge Item','treasury.facts.SurchargeItem',1,NULL,'SURITM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY','treasury.facts.AbstractBillItem'),('treasury.facts.TransactionDate','treasury.facts.TransactionDate','Transaction Date','treasury.facts.TransactionDate',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.TransactionYear','treasury.facts.TransactionYear','Transaction Year','treasury.facts.TransactionYear',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('treasury.facts.VarDate','treasury.facts.VarDate','Variable Date','treasury.facts.VarDate',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'TREASURY',NULL),('vrs.facts.VrsAccount','vrs.facts.VrsAccount','VRS Account','vrs.facts.VrsAccount',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'VRS',NULL),('vrs.facts.VrsBillItem','vrs.facts.VrsBillItem','VRS BillItem','vrs.facts.VrsBillItem',1,NULL,'BILLITEM',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'VRS','treasury.facts.AbstractBillItem'),('vrs.facts.VrsDoc','vrs.facts.VrsDoc','VRS Doc','vrs.facts.VrsDoc',1,NULL,'VDOC',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'VRS',NULL),('vrs.facts.VrsFranchise','vrs.facts.VrsFranchise','VRS Franchise','vrs.facts.VrsFranchise',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'VRS',NULL),('vrs.facts.VrsTxn','vrs.facts.VrsTxn','VRS Transaction','vrs.facts.VrsTxn',2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'VRS',NULL);
/*!40000 ALTER TABLE `sys_rule_fact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rule_fact_field`
--

DROP TABLE IF EXISTS `sys_rule_fact_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rule_fact_field` (
  `objid` varchar(100) NOT NULL DEFAULT '',
  `parentid` varchar(50) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `title` varchar(160) DEFAULT NULL,
  `datatype` varchar(50) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `handler` varchar(50) DEFAULT NULL,
  `lookuphandler` varchar(50) DEFAULT NULL,
  `lookupkey` varchar(50) DEFAULT NULL,
  `lookupvalue` varchar(50) DEFAULT NULL,
  `lookupdatatype` varchar(50) DEFAULT NULL,
  `multivalued` int(11) DEFAULT NULL,
  `required` int(11) DEFAULT NULL,
  `vardatatype` varchar(50) DEFAULT NULL,
  `lovname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `parentid` (`parentid`),
  CONSTRAINT `sys_rule_fact_field_ibfk_1` FOREIGN KEY (`parentid`) REFERENCES `sys_rule_fact` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rule_fact_field`
--

LOCK TABLES `sys_rule_fact_field` WRITE;
/*!40000 ALTER TABLE `sys_rule_fact_field` DISABLE KEYS */;
INSERT INTO `sys_rule_fact_field` VALUES ('com.rameses.rules.common.CurrentDate.date','com.rameses.rules.common.CurrentDate','date','Date','date',4,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('com.rameses.rules.common.CurrentDate.day','com.rameses.rules.common.CurrentDate','day','Day','integer',5,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('com.rameses.rules.common.CurrentDate.month','com.rameses.rules.common.CurrentDate','month','Month','integer',3,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('com.rameses.rules.common.CurrentDate.qtr','com.rameses.rules.common.CurrentDate','qtr','Qtr','integer',1,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('com.rameses.rules.common.CurrentDate.year','com.rameses.rules.common.CurrentDate','year','Year','integer',2,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.AbstractBillItem.acctid','treasury.facts.AbstractBillItem','acctid','Account','string',2,'lookup','itemaccount:lookup','objid','title',NULL,NULL,NULL,'string',NULL),('treasury.facts.AbstractBillItem.amount','treasury.facts.AbstractBillItem','amount','Amount','decimal',3,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.AbstractBillItem.objid','treasury.facts.AbstractBillItem','objid','ObjID','string',1,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.Bill.amount','treasury.facts.Bill','amount','Amount','decimal',6,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.Bill.balance','treasury.facts.Bill','balance','Balance','decimal',8,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.Bill.balanceforward','treasury.facts.Bill','balanceforward','Balance Forward','decimal',4,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.Bill.billdate','treasury.facts.Bill','billdate','Bill Date','date',5,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('treasury.facts.Bill.duedate','treasury.facts.Bill','duedate','Due Date','date',9,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('treasury.facts.Bill.expirydate','treasury.facts.Bill','expirydate','Expiry Date','date',3,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('treasury.facts.Bill.objid','treasury.facts.Bill','objid','ObjID',NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('treasury.facts.Bill.state','treasury.facts.Bill','state','State','string',7,'lov',NULL,NULL,NULL,NULL,NULL,NULL,'string','MARKET_BILL_STATE'),('treasury.facts.Bill.validitydate','treasury.facts.Bill','validitydate','Validity Date','date',2,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('treasury.facts.BillSubItem.acctid','treasury.facts.BillSubItem','acctid','Account','string',2,'lookup','itemaccount:lookup','objid','title',NULL,NULL,NULL,'string',NULL),('treasury.facts.BillSubItem.amount','treasury.facts.BillSubItem','amount','Amount','decimal',3,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.BillSubItem.billitemrefid','treasury.facts.BillSubItem','billitemrefid','Bill Item Refid','string',5,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.BillSubItem.objid','treasury.facts.BillSubItem','objid','ObjID','string',1,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.BillSubItem.type','treasury.facts.BillSubItem','type','Type','string',4,'lov',NULL,NULL,NULL,NULL,NULL,NULL,'string','SUB_BILLITEM_TYPE'),('treasury.facts.BooleanInfo.name','treasury.facts.BooleanInfo','name','Name','string',1,'lookup','variable:boolean:lookup','objid','caption',NULL,NULL,NULL,'string',NULL),('treasury.facts.BooleanInfo.value','treasury.facts.BooleanInfo','value','Value','boolean',2,'boolean',NULL,NULL,NULL,NULL,NULL,NULL,'boolean',NULL),('treasury.facts.CashReceipt.receiptdate','treasury.facts.CashReceipt','receiptdate','Receipt Date','date',2,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('treasury.facts.CashReceipt.txnmode','treasury.facts.CashReceipt','txnmode','Txn Mode','string',1,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.CashReceiptItem.account','treasury.facts.CashReceiptItem','account','Account','string',1,'lookup','itemaccount:lookup','objid','title',NULL,NULL,NULL,'string',NULL),('treasury.facts.CashReceiptItem.amount','treasury.facts.CashReceiptItem','amount','Amount','decimal',2,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.CashReceiptItem.remarks','treasury.facts.CashReceiptItem','remarks','Remarks','string',3,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.CashReceiptItem.sortorder','treasury.facts.CashReceiptItem','sortorder','Sort Order','integer',4,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.CreditBillItem.acctid','treasury.facts.CreditBillItem','acctid','Account','string',3,'lookup','itemaccount:credit:lookup','objid','title',NULL,NULL,NULL,'string',NULL),('treasury.facts.CreditBillItem.billcode','treasury.facts.CreditBillItem','billcode','Bill code','string',1,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.CreditBillItem.unusedbalance','treasury.facts.CreditBillItem','unusedbalance','Unused Balance','decimal',2,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.DateInfo.month','treasury.facts.DateInfo','month','Month','integer',5,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.DateInfo.name','treasury.facts.DateInfo','name','Name','string',1,'lookup','variable:date:lookup','objid','caption',NULL,NULL,NULL,'string',NULL),('treasury.facts.DateInfo.qtr','treasury.facts.DateInfo','qtr','Qtr','integer',3,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.DateInfo.value','treasury.facts.DateInfo','value','Value','date',2,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('treasury.facts.DateInfo.year','treasury.facts.DateInfo','year','Year','integer',4,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.DecimalInfo.name','treasury.facts.DecimalInfo','name','Name','string',1,'lookup','variable:decimal:lookup','objid','caption',NULL,NULL,NULL,'string',NULL),('treasury.facts.DecimalInfo.value','treasury.facts.DecimalInfo','value','Value','decimal',2,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.Deposit.amount','treasury.facts.Deposit','amount','Amount','decimal',1,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.HolidayFact.id','treasury.facts.HolidayFact','id','ID','string',1,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.IntegerInfo.name','treasury.facts.IntegerInfo','name','Name','string',1,'lookup','variable:integer:lookup','objid','caption',NULL,NULL,NULL,'string',NULL),('treasury.facts.IntegerInfo.value','treasury.facts.IntegerInfo','value','Value','integer',2,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.InterestItem.acctid','treasury.facts.InterestItem','acctid','Account','string',2,'lookup','itemaccount:lookup','objid','title',NULL,NULL,NULL,'string',NULL),('treasury.facts.InterestItem.amount','treasury.facts.InterestItem','amount','Amount','decimal',3,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.InterestItem.billcode','treasury.facts.InterestItem','billcode','Bill code','string',6,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.InterestItem.billitemrefid','treasury.facts.InterestItem','billitemrefid','Bill Item Refid','string',5,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.InterestItem.forwarded','treasury.facts.InterestItem','forwarded','Forwarded','boolean',7,'boolean',NULL,NULL,NULL,NULL,NULL,NULL,'boolean',NULL),('treasury.facts.InterestItem.objid','treasury.facts.InterestItem','objid','ObjID','string',1,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.InterestItem.type','treasury.facts.InterestItem','type','Type','string',4,'lov',NULL,NULL,NULL,NULL,NULL,NULL,'string','SUB_BILLITEM_TYPE'),('treasury.facts.Payment.amount','treasury.facts.Payment','amount','Amount','decimal',1,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.Payment.reftype','treasury.facts.Payment','reftype','Ref Type','string',2,'lov',NULL,NULL,NULL,NULL,NULL,NULL,'string','PAYMENT_REFTYPE'),('treasury.facts.PaymentItem.amount','treasury.facts.PaymentItem','amount','Amount','decimal',2,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.PaymentItem.billitemrefid','treasury.facts.PaymentItem','billitemrefid','Bill Item Ref ID','string',1,'var',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.Requirement.code','treasury.facts.Requirement','code','Code','string',1,'lookup','requirementtype:lookup','code','title',NULL,NULL,NULL,'string',NULL),('treasury.facts.Requirement.completed','treasury.facts.Requirement','completed','Completed','boolean',2,'boolean',NULL,NULL,NULL,NULL,NULL,NULL,'boolean',NULL),('treasury.facts.StringInfo.name','treasury.facts.StringInfo','name','Name','string',1,'lookup','variable:string:lookup','objid','caption',NULL,NULL,NULL,'string',NULL),('treasury.facts.StringInfo.value','treasury.facts.StringInfo','value','Value','string',2,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.SurchargeItem.acctid','treasury.facts.SurchargeItem','acctid','Account','string',2,'lookup','itemaccount:lookup','objid','title',NULL,NULL,NULL,'string',NULL),('treasury.facts.SurchargeItem.amount','treasury.facts.SurchargeItem','amount','Amount','decimal',3,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('treasury.facts.SurchargeItem.billcode','treasury.facts.SurchargeItem','billcode','Bill code','string',6,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.SurchargeItem.billitemrefid','treasury.facts.SurchargeItem','billitemrefid','Bill Item Refid','string',5,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.SurchargeItem.forwarded','treasury.facts.SurchargeItem','forwarded','Forwarded','boolean',7,'boolean',NULL,NULL,NULL,NULL,NULL,NULL,'boolean',NULL),('treasury.facts.SurchargeItem.objid','treasury.facts.SurchargeItem','objid','ObjID','string',1,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.SurchargeItem.type','treasury.facts.SurchargeItem','type','Type','string',4,'lov',NULL,NULL,NULL,NULL,NULL,NULL,'string','SUB_BILLITEM_TYPE'),('treasury.facts.TransactionDate.date','treasury.facts.TransactionDate','date','Date','date',1,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('treasury.facts.TransactionDate.day','treasury.facts.TransactionDate','day','Day','integer',4,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.TransactionDate.month','treasury.facts.TransactionDate','month','Month','integer',3,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.TransactionDate.qtr','treasury.facts.TransactionDate','qtr','Qtr','integer',5,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.TransactionDate.tag','treasury.facts.TransactionDate','tag','Tag','string',6,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('treasury.facts.TransactionDate.year','treasury.facts.TransactionDate','year','Year','integer',2,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.TransactionYear.year','treasury.facts.TransactionYear','year','Year','integer',1,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('treasury.facts.VarDate.date','treasury.facts.VarDate','date','Date','date',1,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('treasury.facts.VarDate.tag','treasury.facts.VarDate','tag','Tag','string',2,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('vrs.facts.VrsAccount.acctno','vrs.facts.VrsAccount','acctno','Acct No','string',1,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('vrs.facts.VrsAccount.apptype','vrs.facts.VrsAccount','apptype','App Type','string',6,'lov',NULL,NULL,NULL,NULL,NULL,NULL,'string','VRS_APP_TYPE'),('vrs.facts.VrsAccount.franchiseno','vrs.facts.VrsAccount','franchiseno','Franchise No','string',4,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('vrs.facts.VrsAccount.lastyearrenewed','vrs.facts.VrsAccount','lastyearrenewed','Last Year Renewed','integer',2,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('vrs.facts.VrsAccount.vehicletypeid','vrs.facts.VrsAccount','vehicletypeid','Vehicle Type','string',3,'lookup','vrs_vehicletype:lookup','objid','title',NULL,NULL,NULL,'string',NULL),('vrs.facts.VrsAccount.year','vrs.facts.VrsAccount','year','Year','integer',5,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('vrs.facts.VrsBillItem.acctid','vrs.facts.VrsBillItem','acctid','Account','string',2,'lookup','itemaccount:lookup','objid','title',NULL,NULL,NULL,'string',NULL),('vrs.facts.VrsBillItem.amount','vrs.facts.VrsBillItem','amount','Amount','decimal',3,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('vrs.facts.VrsBillItem.amtpaid','vrs.facts.VrsBillItem','amtpaid','Amt Paid','decimal',7,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('vrs.facts.VrsBillItem.balance','vrs.facts.VrsBillItem','balance','Balance','decimal',8,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('vrs.facts.VrsBillItem.billcode','vrs.facts.VrsBillItem','billcode','Bill code','string',6,'lookup','eboss_itemaccount:lookup','objid','title',NULL,NULL,NULL,'string',NULL),('vrs.facts.VrsBillItem.billid','vrs.facts.VrsBillItem','billid','Bill ID','string',11,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('vrs.facts.VrsBillItem.interest','vrs.facts.VrsBillItem','interest','Interest','decimal',10,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('vrs.facts.VrsBillItem.itemtype','vrs.facts.VrsBillItem','itemtype','Item Type','string',4,'lov',NULL,NULL,NULL,NULL,NULL,NULL,'string','BUSINESS_BILLITEM_TYPES'),('vrs.facts.VrsBillItem.objid','vrs.facts.VrsBillItem','objid','ObjID','string',1,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('vrs.facts.VrsBillItem.paid','vrs.facts.VrsBillItem','paid','Paid','boolean',5,'boolean',NULL,NULL,NULL,NULL,NULL,NULL,'boolean',NULL),('vrs.facts.VrsBillItem.previous','vrs.facts.VrsBillItem','previous','Previous','boolean',13,'boolean',NULL,NULL,NULL,NULL,NULL,NULL,'boolean',NULL),('vrs.facts.VrsBillItem.supersededid','vrs.facts.VrsBillItem','supersededid','Superseded ID','string',12,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('vrs.facts.VrsBillItem.surcharge','vrs.facts.VrsBillItem','surcharge','Surcharge','decimal',9,'decimal',NULL,NULL,NULL,NULL,NULL,NULL,'decimal',NULL),('vrs.facts.VrsBillItem.year','vrs.facts.VrsBillItem','year','Year','integer',14,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('vrs.facts.VrsDoc.doctypeid','vrs.facts.VrsDoc','doctypeid','Doc Type','string',1,'lookup','vrs_doctype:all:lookup','name','title',NULL,NULL,NULL,'string',NULL),('vrs.facts.VrsDoc.dtissued','vrs.facts.VrsDoc','dtissued','Date Issued','date',2,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('vrs.facts.VrsDoc.expirydate','vrs.facts.VrsDoc','expirydate','Expiry Date','date',4,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('vrs.facts.VrsDoc.issueno','vrs.facts.VrsDoc','issueno','Issue No','string',3,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('vrs.facts.VrsDoc.prevexpirydate','vrs.facts.VrsDoc','prevexpirydate','Prev Expiry Date','date',5,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('vrs.facts.VrsFranchise.expired','vrs.facts.VrsFranchise','expired','Is Expired','boolean',3,'boolean',NULL,NULL,NULL,NULL,NULL,NULL,'boolean',NULL),('vrs.facts.VrsFranchise.expirydate','vrs.facts.VrsFranchise','expirydate','Expiry Date','date',2,'date',NULL,NULL,NULL,NULL,NULL,NULL,'date',NULL),('vrs.facts.VrsFranchise.franchiseno','vrs.facts.VrsFranchise','franchiseno','Franchise No','string',1,'string',NULL,NULL,NULL,NULL,NULL,NULL,'string',NULL),('vrs.facts.VrsTxn.activeyear','vrs.facts.VrsTxn','activeyear','Active Year','integer',4,'integer',NULL,NULL,NULL,NULL,NULL,NULL,'integer',NULL),('vrs.facts.VrsTxn.txnmode','vrs.facts.VrsTxn','txnmode','Txn Mode','string',3,'lov',NULL,NULL,NULL,NULL,NULL,NULL,'string','TXNMODE'),('vrs.facts.VrsTxn.txntypeid','vrs.facts.VrsTxn','txntypeid','Txn Type','string',1,'lookup','vrs_txntype:lookup','objid','objid',NULL,NULL,NULL,'string',NULL),('vrs.facts.VrsTxn.vehicletypeid','vrs.facts.VrsTxn','vehicletypeid','Vehicle Type','string',2,'lookup','vrs_vehicletype:lookup','objid','title',NULL,NULL,NULL,'string',NULL);
/*!40000 ALTER TABLE `sys_rule_fact_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_rulegroup`
--

DROP TABLE IF EXISTS `sys_rulegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_rulegroup` (
  `name` varchar(50) NOT NULL,
  `ruleset` varchar(50) NOT NULL,
  `title` varchar(160) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`,`ruleset`),
  KEY `ruleset` (`ruleset`),
  CONSTRAINT `sys_rulegroup_ibfk_1` FOREIGN KEY (`ruleset`) REFERENCES `sys_ruleset` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_rulegroup`
--

LOCK TABLES `sys_rulegroup` WRITE;
/*!40000 ALTER TABLE `sys_rulegroup` DISABLE KEYS */;
INSERT INTO `sys_rulegroup` VALUES ('apply-credits','vrsbilling','Apply Credits',4),('apply-payment','vrspayment','Apply Payment',1),('compute-fees','vrsbilling','Compute Fees',1),('compute-interest','vrsbilling','Compute Interest',3),('compute-surcharge','vrsbilling','Compute Surcharge',2),('initial','vrsbilling','Initial',0),('initial','vrsdoc','Initial',0),('initial','vrspayment','Initial',0),('issuance','vrsdoc','Issuance',1),('map-account','vrspayment','Map Account',3),('summary','vrsbilling','Summary',5),('summary','vrspayment','Summary',4);
/*!40000 ALTER TABLE `sys_rulegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_ruleset`
--

DROP TABLE IF EXISTS `sys_ruleset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_ruleset` (
  `name` varchar(50) NOT NULL,
  `title` varchar(160) DEFAULT NULL,
  `packagename` varchar(50) DEFAULT NULL,
  `domain` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `permission` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_ruleset`
--

LOCK TABLES `sys_ruleset` WRITE;
/*!40000 ALTER TABLE `sys_ruleset` DISABLE KEYS */;
INSERT INTO `sys_ruleset` VALUES ('vrsbilling','VRS Billing','vrsbilling','VRS','RULE_AUTHOR',NULL),('vrsdoc','VRS Document Rules','vrsdoc','VRS','RULE_AUTHOR',NULL),('vrspayment','VRS Payment','vrspayment','VRS','RULE_AUTHOR',NULL);
/*!40000 ALTER TABLE `sys_ruleset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_ruleset_actiondef`
--

DROP TABLE IF EXISTS `sys_ruleset_actiondef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_ruleset_actiondef` (
  `ruleset` varchar(50) NOT NULL,
  `actiondef` varchar(50) NOT NULL,
  PRIMARY KEY (`ruleset`,`actiondef`),
  KEY `actiondef` (`actiondef`),
  CONSTRAINT `fk_sys_ruleset_actiondef_actiondef` FOREIGN KEY (`actiondef`) REFERENCES `sys_rule_actiondef` (`objid`),
  CONSTRAINT `sys_ruleset_actiondef_ibfk_2` FOREIGN KEY (`ruleset`) REFERENCES `sys_ruleset` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_ruleset_actiondef`
--

LOCK TABLES `sys_ruleset_actiondef` WRITE;
/*!40000 ALTER TABLE `sys_ruleset_actiondef` DISABLE KEYS */;
INSERT INTO `sys_ruleset_actiondef` VALUES ('vrsbilling','enterprise.actions.PrintTest'),('vrsdoc','enterprise.actions.PrintTest'),('vrspayment','enterprise.actions.PrintTest'),('vrsbilling','enterprise.actions.ThrowException'),('vrsdoc','enterprise.actions.ThrowException'),('vrspayment','enterprise.actions.ThrowException'),('vrspayment','treasury.actions.AddCashReceiptItem'),('vrspayment','treasury.actions.AddCreditBillItem'),('vrsbilling','treasury.actions.AddDiscountItem'),('vrspayment','treasury.actions.AddDiscountItem'),('vrsbilling','treasury.actions.AddSurchargeItem'),('vrsbilling','treasury.actions.ApplyBillItemCredit'),('vrspayment','treasury.actions.ApplyBillItemPayment'),('vrsbilling','treasury.actions.AssertVarDate'),('vrsbilling','treasury.actions.SetBillDueDate'),('vrsbilling','treasury.actions.SetBillValidityDate'),('vrsbilling','treasury.actions.UpdateBillItemAmount'),('vrsbilling','vrs.actions.AddVrsBillItem'),('vrsdoc','vrs.actions.AddVrsDoc'),('vrsdoc','vrs.actions.UpdateVrsDoc');
/*!40000 ALTER TABLE `sys_ruleset_actiondef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_ruleset_fact`
--

DROP TABLE IF EXISTS `sys_ruleset_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_ruleset_fact` (
  `ruleset` varchar(50) NOT NULL,
  `rulefact` varchar(50) NOT NULL,
  PRIMARY KEY (`ruleset`,`rulefact`),
  KEY `rulefact` (`rulefact`),
  CONSTRAINT `fk_sys_ruleset_fact_rulefact` FOREIGN KEY (`rulefact`) REFERENCES `sys_rule_fact` (`objid`),
  CONSTRAINT `sys_ruleset_fact_ibfk_2` FOREIGN KEY (`ruleset`) REFERENCES `sys_ruleset` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_ruleset_fact`
--

LOCK TABLES `sys_ruleset_fact` WRITE;
/*!40000 ALTER TABLE `sys_ruleset_fact` DISABLE KEYS */;
INSERT INTO `sys_ruleset_fact` VALUES ('vrsbilling','treasury.facts.Bill'),('vrspayment','treasury.facts.BillSubItem'),('vrspayment','treasury.facts.CashReceiptItem'),('vrsbilling','treasury.facts.CreditBillItem'),('vrspayment','treasury.facts.CreditBillItem'),('vrsbilling','treasury.facts.DecimalInfo'),('vrsbilling','treasury.facts.IntegerInfo'),('vrspayment','treasury.facts.Payment'),('vrspayment','treasury.facts.PaymentItem'),('vrsbilling','treasury.facts.StringInfo'),('vrspayment','treasury.facts.SurchargeItem'),('vrsbilling','treasury.facts.TransactionDate'),('vrsbilling','treasury.facts.TransactionYear'),('vrsbilling','treasury.facts.VarDate'),('vrsbilling','vrs.facts.VrsAccount'),('vrsbilling','vrs.facts.VrsBillItem'),('vrspayment','vrs.facts.VrsBillItem'),('vrsdoc','vrs.facts.VrsDoc'),('vrsbilling','vrs.facts.VrsFranchise'),('vrsdoc','vrs.facts.VrsFranchise'),('vrspayment','vrs.facts.VrsFranchise'),('vrsbilling','vrs.facts.VrsTxn'),('vrsdoc','vrs.facts.VrsTxn');
/*!40000 ALTER TABLE `sys_ruleset_fact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_sequence`
--

DROP TABLE IF EXISTS `sys_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_sequence` (
  `objid` varchar(100) NOT NULL,
  `nextSeries` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_sequence`
--

LOCK TABLES `sys_sequence` WRITE;
/*!40000 ALTER TABLE `sys_sequence` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_signature`
--

DROP TABLE IF EXISTS `sys_signature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_signature` (
  `objid` varchar(50) NOT NULL,
  `userid` varchar(50) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `displayname` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `signature` mediumblob,
  `tag` varchar(50) DEFAULT NULL,
  `system` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_signature`
--

LOCK TABLES `sys_signature` WRITE;
/*!40000 ALTER TABLE `sys_signature` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_signature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `objid` varchar(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `jobtitle` varchar(50) DEFAULT NULL,
  `txncode` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `uix_username` (`username`),
  KEY `ix_lastname_firstname` (`lastname`,`firstname`),
  KEY `ix_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `objid` varchar(50) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `userid` varchar(50) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `org_objid` varchar(50) DEFAULT NULL,
  `org_name` varchar(50) DEFAULT NULL,
  `securitygroup_objid` varchar(50) DEFAULT NULL,
  `exclude` varchar(255) DEFAULT NULL,
  `uid` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `uix_sys_user_role_uid` (`uid`),
  KEY `fk_sys_user_role_role` (`role`),
  KEY `fk_sys_user_role_userid` (`userid`),
  CONSTRAINT `fk_sys_user_role_role` FOREIGN KEY (`role`) REFERENCES `sys_role` (`name`),
  CONSTRAINT `fk_sys_user_role_userid` FOREIGN KEY (`userid`) REFERENCES `sys_user` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_var`
--

DROP TABLE IF EXISTS `sys_var`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_var` (
  `name` varchar(50) NOT NULL,
  `value` longtext,
  `description` varchar(255) DEFAULT NULL,
  `datatype` varchar(15) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_var`
--

LOCK TABLES `sys_var` WRITE;
/*!40000 ALTER TABLE `sys_var` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_var` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_wf`
--

DROP TABLE IF EXISTS `sys_wf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_wf` (
  `name` varchar(50) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `domain` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_wf`
--

LOCK TABLES `sys_wf` WRITE;
/*!40000 ALTER TABLE `sys_wf` DISABLE KEYS */;
INSERT INTO `sys_wf` VALUES ('vrsbasic','Vehicle Basic Workflow','VRS'),('vrs_change_info','Vehicle Change Info','VRS'),('vrs_change_info_with_payment','Vehicle Change Info with Payment Workflow','VRS'),('vrs_close_account','Vehicle Close Account Workflow','VRS'),('vrs_with_franchise','Vehicle With Franchise Workflow','VRS');
/*!40000 ALTER TABLE `sys_wf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_wf_eventaction`
--

DROP TABLE IF EXISTS `sys_wf_eventaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_wf_eventaction` (
  `processname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `eventtype` varchar(10) DEFAULT NULL,
  `index` int(11) DEFAULT NULL,
  `nodename` varchar(50) DEFAULT NULL,
  `transitionto` varchar(50) DEFAULT NULL,
  `scriptname` varchar(255) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `params` varchar(255) DEFAULT NULL,
  `retval` varchar(255) DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  PRIMARY KEY (`processname`,`name`),
  KEY `fk_sys_wf_eventaction_transition` (`processname`,`nodename`,`transitionto`),
  CONSTRAINT `fk_sys_wf_eventaction_node` FOREIGN KEY (`processname`, `nodename`) REFERENCES `sys_wf_node` (`processname`, `name`),
  CONSTRAINT `fk_sys_wf_eventaction_transition` FOREIGN KEY (`processname`, `nodename`, `transitionto`) REFERENCES `sys_wf_transition` (`processname`, `parentid`, `to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_wf_eventaction`
--

LOCK TABLES `sys_wf_eventaction` WRITE;
/*!40000 ALTER TABLE `sys_wf_eventaction` DISABLE KEYS */;
INSERT INTO `sys_wf_eventaction` VALUES ('vrsbasic','check-payment','before',1,'evaluate-payment',NULL,'VrsTxnWfUtilService','checkPaymentMade','[ refid: refid ]',NULL,1),('vrsbasic','update-permit-issued','before',1,'releasing','end','VrsTxnWfUtilService','updateVehiclePermitIssued','[refid: refid ]',NULL,1),('vrsbasic','validate-bill','before',1,'assessment','approval','VrsTxnWfUtilService','validateBill','[ refid: refid ] ',NULL,1),('vrs_change_info','updateInfo','before',1,'approval','end','VrsTxnWfUtilService','updateHeaderInfo','[ refid : refid ]',NULL,1),('vrs_change_info_with_payment','check-has-bill','before',1,'assessment','approval','VrsTxnWfUtilService','checkHasBill','[ refid: refid ]',NULL,1),('vrs_change_info_with_payment','check-payment','before',1,'evaluate-payment',NULL,'VrsTxnWfUtilService','checkPaymentMade','[ refid: refid ]',NULL,1),('vrs_close_account','close-account','before',1,'releasing','end','VrsTxnWfUtilService','closeAccount','[ refid: refid ]',NULL,1),('vrs_with_franchise','check-has-bill','before',1,'assessment','approval','VrsTxnWfUtilService','checkHasBill','[ refid: refid ]',NULL,1),('vrs_with_franchise','check-has-franchise','before',1,'check-has-franchise','assessment','VrsTxnWfUtilService','checkHasFranchise','[ refid: refid ]',NULL,1),('vrs_with_franchise','check-if-has-franchise','before',1,'check-has-franchise',NULL,'VrsTxnWfUtilService','checkHasFranchise','[ refid: refid ]',NULL,1),('vrs_with_franchise','check-payment','before',1,'evaluate-payment',NULL,'VrsTxnWfUtilService','checkPaymentMade','[ refid: refid ]',NULL,1),('vrs_with_franchise','update-permit-issued','after',1,'releasing','end','VrsTxnWfUtilService','updatePermitIssued','[refid: refid ]',NULL,1),('vrs_with_franchise','verify-franchise','before',1,'releasing','end','VrsTxnWfUtilService','verifyHasFranchise','[ refid: refid ]',NULL,1);
/*!40000 ALTER TABLE `sys_wf_eventaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_wf_node`
--

DROP TABLE IF EXISTS `sys_wf_node`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_wf_node` (
  `name` varchar(50) NOT NULL,
  `processname` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(100) DEFAULT NULL,
  `nodetype` varchar(10) DEFAULT NULL,
  `idx` int(11) DEFAULT NULL,
  `salience` int(11) DEFAULT NULL,
  `domain` varchar(50) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `ui` text,
  `properties` text,
  `tracktime` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`,`processname`),
  KEY `fk_sys_wf_node_role` (`role`),
  KEY `fk_syw_wf_node_processname` (`processname`),
  KEY `name` (`name`),
  CONSTRAINT `fk_sys_wf_node_role` FOREIGN KEY (`role`) REFERENCES `sys_role` (`name`),
  CONSTRAINT `fk_syw_wf_node_processname` FOREIGN KEY (`processname`) REFERENCES `sys_wf` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_wf_node`
--

LOCK TABLES `sys_wf_node` WRITE;
/*!40000 ALTER TABLE `sys_wf_node` DISABLE KEYS */;
INSERT INTO `sys_wf_node` VALUES ('approval','vrsbasic','Approval','state',2,0,NULL,NULL,'[type:\"state\",fillColor:\"#c0c0c0\",pos:[251,172],size:[110,62]]','[:]',1),('approval','vrs_change_info','Approval','state',2,0,NULL,NULL,'[type:\"state\",fillColor:\"#c0c0c0\",pos:[368,79],size:[110,62]]','[:]',1),('approval','vrs_change_info_with_payment','Approval','state',2,0,'VRS','APPROVER','[type:\"state\",fillColor:\"#c0c0c0\",pos:[270,261],size:[110,62]]','[:]',1),('approval','vrs_close_account','Approval','state',2,0,NULL,NULL,'[type:\"state\",fillColor:\"#c0c0c0\",pos:[409,93],size:[110,62]]','[:]',1),('approval','vrs_with_franchise','Approval','state',2,0,'VRS','APPROVER','[type:\"state\",fillColor:\"#c0c0c0\",pos:[270,261],size:[110,62]]','[:]',1),('assessment','vrsbasic','Assessment','state',1,0,NULL,NULL,'[type:\"state\",fillColor:\"#c0c0c0\",pos:[386,81],size:[106,59]]','[:]',1),('assessment','vrs_change_info_with_payment','Assessment','state',1,0,'VRS','ASSESSOR','[type:\"state\",fillColor:\"#c0c0c0\",pos:[254,147],size:[106,59]]','[:]',1),('assessment','vrs_with_franchise','Assessment','state',1,0,'VRS','ASSESSOR','[type:\"state\",fillColor:\"#c0c0c0\",pos:[254,147],size:[106,59]]','[:]',1),('check-has-franchise','vrs_with_franchise','Check Has Franchise','decision',0,0,NULL,NULL,'[type:\"decision\",fillColor:\"#c0c0c0\",pos:[73,72],size:[106,50]]','[:]',NULL),('end','vrsbasic','Completed','end',5,NULL,NULL,NULL,'[type:\"end\",fillColor:\"#ff0000\",pos:[1043,249],size:[32,32]]','[:]',NULL),('end','vrs_change_info','Completed','end',4,NULL,NULL,NULL,'[type:\"end\",fillColor:\"#ff0000\",pos:[625,148],size:[32,32]]','[:]',NULL),('end','vrs_change_info_with_payment','Completed','end',5,NULL,NULL,NULL,'[type:\"end\",fillColor:\"#ff0000\",pos:[1043,249],size:[32,32]]','[:]',NULL),('end','vrs_close_account','Completed','end',4,NULL,NULL,NULL,'[type:\"end\",fillColor:\"#ff0000\",pos:[784,190],size:[32,32]]','[:]',NULL),('end','vrs_with_franchise','Completed','end',5,NULL,NULL,NULL,'[type:\"end\",fillColor:\"#ff0000\",pos:[1043,249],size:[32,32]]','[:]',NULL),('evaluate-payment','vrsbasic','Evaluate Payment','decision',4,0,NULL,NULL,'[type:\"decision\",fillColor:\"#c0c0c0\",pos:[606,235],size:[111,56]]','[:]',NULL),('evaluate-payment','vrs_change_info_with_payment','Evaluate Payment','decision',4,0,NULL,NULL,'[type:\"decision\",fillColor:\"#c0c0c0\",pos:[627,267],size:[111,56]]','[:]',NULL),('evaluate-payment','vrs_with_franchise','Evaluate Payment','decision',4,0,NULL,NULL,'[type:\"decision\",fillColor:\"#c0c0c0\",pos:[627,267],size:[111,56]]','[:]',NULL),('payment','vrsbasic','Payment','state',3,0,'VRS','SYSTEM','[type:\"state\",fillColor:\"#c0c0c0\",pos:[434,178],size:[113,54]]','[:]',NULL),('payment','vrs_change_info_with_payment','Payment','state',3,0,'VRS','SYSTEM','[type:\"state\",fillColor:\"#c0c0c0\",pos:[427,241],size:[113,54]]','[:]',NULL),('payment','vrs_with_franchise','Payment','state',3,0,'VRS','SYSTEM','[type:\"state\",fillColor:\"#c0c0c0\",pos:[427,241],size:[113,54]]','[:]',NULL),('receiving','vrsbasic','Receiving','state',0,0,NULL,NULL,'[type:\"state\",fillColor:\"#c0c0c0\",pos:[220,63],size:[96,58]]','[:]',1),('receiving','vrs_close_account','Receiving','state',1,0,NULL,NULL,'[type:\"state\",fillColor:\"#c0c0c0\",pos:[220,63],size:[96,58]]','[:]',1),('receiving','vrs_with_franchise','Assign Franchise','state',0,0,'VRS','PROCESSOR','[type:\"state\",fillColor:\"#c0c0c0\",pos:[259,30],size:[96,58]]','[:]',1),('releasing','vrsbasic','Releasing','state',4,0,NULL,NULL,'[type:\"state\",fillColor:\"#c0c0c0\",pos:[863,238],size:[102,53]]','[:]',1),('releasing','vrs_change_info_with_payment','Releasing','state',4,0,'VRS','RELEASER','[type:\"state\",fillColor:\"#c0c0c0\",pos:[863,238],size:[102,53]]','[:]',1),('releasing','vrs_close_account','Releasing','state',3,0,NULL,NULL,'[type:\"state\",fillColor:\"#c0c0c0\",pos:[609,186],size:[102,53]]','[:]',1),('releasing','vrs_with_franchise','Releasing','state',4,0,'VRS','RELEASER','[type:\"state\",fillColor:\"#c0c0c0\",pos:[863,238],size:[102,53]]','[:]',1),('start','vrsbasic','start','start',0,NULL,NULL,NULL,'[type:\"start\",fillColor:\"#00ff00\",pos:[100,29],size:[32,32]]','[:]',NULL),('start','vrs_change_info','start','start',0,NULL,NULL,NULL,'[type:\"start\",fillColor:\"#00ff00\",pos:[100,29],size:[32,32]]','[:]',NULL),('start','vrs_change_info_with_payment','start','start',0,NULL,NULL,NULL,'[type:\"start\",fillColor:\"#00ff00\",pos:[138,87],size:[32,32]]','[:]',NULL),('start','vrs_close_account','start','start',0,NULL,NULL,NULL,'[type:\"start\",fillColor:\"#00ff00\",pos:[100,29],size:[32,32]]','[:]',NULL),('start','vrs_with_franchise','start','start',0,NULL,NULL,NULL,'[type:\"start\",fillColor:\"#00ff00\",pos:[38,22],size:[32,32]]','[:]',NULL);
/*!40000 ALTER TABLE `sys_wf_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_wf_transition`
--

DROP TABLE IF EXISTS `sys_wf_transition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_wf_transition` (
  `parentid` varchar(50) NOT NULL DEFAULT '',
  `processname` varchar(50) NOT NULL DEFAULT '',
  `action` varchar(50) NOT NULL,
  `to` varchar(50) NOT NULL,
  `idx` int(11) DEFAULT NULL,
  `eval` mediumtext,
  `properties` varchar(255) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `ui` text,
  PRIMARY KEY (`parentid`,`processname`,`to`,`action`),
  UNIQUE KEY `uix_sys_wf_transition_uix` (`processname`,`parentid`,`to`),
  KEY `fk_sys_wf_transition_processname_parentid` (`processname`,`parentid`),
  KEY `processname` (`processname`,`parentid`,`to`),
  KEY `fk_sys_wf_transition_processname_to` (`processname`,`to`),
  CONSTRAINT `fk_sys_wf_transition_processname_parentid` FOREIGN KEY (`processname`, `parentid`) REFERENCES `sys_wf_node` (`processname`, `name`),
  CONSTRAINT `fk_sys_wf_transition_processname_to` FOREIGN KEY (`processname`, `to`) REFERENCES `sys_wf_node` (`processname`, `name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_wf_transition`
--

LOCK TABLES `sys_wf_transition` WRITE;
/*!40000 ALTER TABLE `sys_wf_transition` DISABLE KEYS */;
INSERT INTO `sys_wf_transition` VALUES ('approval','vrsbasic','approve','payment',0,NULL,'[:]',NULL,'Approve','[points:[361,203,434,201],type:\"arrow\",pos:[361,201],size:[73,2]]'),('approval','vrs_change_info','approve','end',0,NULL,'[showConfirm:true,confirmMessage:\"You are about to approve these changes. Proceed?\"]',NULL,'Approve','[points:[478,123,625,158],type:\"arrow\",pos:[478,123],size:[147,35]]'),('approval','vrs_change_info_with_payment','return-assessment','assessment',0,NULL,'[:]',NULL,'Return for Assessment','[points:[270,266,211,240,262,206],type:\"arrow\",pos:[211,206],size:[59,60]]'),('approval','vrs_change_info_with_payment','approve','payment',0,NULL,'[:]',NULL,'Approve','[points:[380,292,427,264],type:\"arrow\",pos:[380,264],size:[47,28]]'),('approval','vrs_close_account','approve','releasing',0,NULL,'[showConfirm:true,confirmMessage:\"You are about to approve this transaction. Continue?\"]',NULL,'Approve','[points:[519,148,609,189],type:\"arrow\",pos:[519,148],size:[90,41]]'),('approval','vrs_with_franchise','return-assessment','assessment',0,NULL,'[:]',NULL,'Return for Assessment','[points:[270,266,211,240,262,206],type:\"arrow\",pos:[211,206],size:[59,60]]'),('approval','vrs_with_franchise','approve','payment',0,NULL,'[:]',NULL,'Approve','[points:[380,292,427,264],type:\"arrow\",pos:[380,264],size:[47,28]]'),('assessment','vrsbasic','submit','approval',0,NULL,'[:]',NULL,'Submit for Approval','[points:[395,140,350,172],type:\"arrow\",pos:[350,140],size:[45,32]]'),('assessment','vrs_change_info_with_payment','submit','approval',0,NULL,'[:]',NULL,'Submit for Approval','[points:[309,207,309,264],type:\"arrow\",pos:[309,207],size:[0,57]]'),('assessment','vrs_with_franchise','submit','approval',0,NULL,'[:]',NULL,'Submit for Approval','[points:[309,207,309,264],type:\"arrow\",pos:[309,207],size:[0,57]]'),('check-has-franchise','vrs_with_franchise','has-franchise','assessment',0,'info.has_franchise == true','[:]',NULL,'Has Franchise','[points:[166,122,254,150],type:\"arrow\",pos:[166,122],size:[88,28]]'),('check-has-franchise','vrs_with_franchise','has-no-franchise','receiving',0,'info.has_franchise == false ','[:]',NULL,'Has No Franchise','[points:[179,81,259,71],type:\"arrow\",pos:[179,71],size:[80,10]]'),('evaluate-payment','vrsbasic','payment-incomplete','payment',0,'info.paymentcomplete == false','[:]',NULL,'Payment Incomplete','[points:[661,291,648,377,510,370,493,232],type:\"arrow\",pos:[493,232],size:[168,145]]'),('evaluate-payment','vrsbasic','payment-complete','releasing',0,'info.paymentcomplete == true','[:]',NULL,'Payment success','[points:[717,260,863,263],type:\"arrow\",pos:[717,260],size:[146,3]]'),('evaluate-payment','vrs_change_info_with_payment','payment-incomplete','payment',0,'info.paymentcomplete == false','[:]',NULL,'Payment Incomplete','[points:[682,323,648,377,510,370,486,295],type:\"arrow\",pos:[486,295],size:[196,82]]'),('evaluate-payment','vrs_change_info_with_payment','payment-complete','releasing',0,'info.paymentcomplete == true','[:]',NULL,'Payment success','[points:[738,292,863,263],type:\"arrow\",pos:[738,263],size:[125,29]]'),('evaluate-payment','vrs_with_franchise','payment-incomplete','payment',0,'info.paymentcomplete == false','[:]',NULL,'Payment Incomplete','[points:[682,323,648,377,510,370,486,295],type:\"arrow\",pos:[486,295],size:[196,82]]'),('evaluate-payment','vrs_with_franchise','payment-complete','releasing',0,'info.paymentcomplete == true','[:]',NULL,'Payment success','[points:[738,292,863,263],type:\"arrow\",pos:[738,263],size:[125,29]]'),('payment','vrsbasic','post-payment','evaluate-payment',0,NULL,'[:]',NULL,'Post Payment','[points:[543,232,549,260,610,264],type:\"arrow\",pos:[543,232],size:[67,32]]'),('payment','vrs_change_info_with_payment','post-payment','evaluate-payment',0,NULL,'[:]',NULL,'Post Payment','[points:[535,282,562,286,631,296],type:\"arrow\",pos:[535,282],size:[96,14]]'),('payment','vrs_with_franchise','post-payment','evaluate-payment',0,NULL,'[:]',NULL,'Post Payment','[points:[535,282,562,286,631,296],type:\"arrow\",pos:[535,282],size:[96,14]]'),('receiving','vrsbasic','submit','assessment',0,NULL,'[:]',NULL,'Submit for Assessment','[points:[316,96,386,104],type:\"arrow\",pos:[316,96],size:[70,8]]'),('receiving','vrs_close_account','submit','approval',0,NULL,'[:]',NULL,'Submit For Approval','[points:[316,98,409,110],type:\"arrow\",pos:[316,98],size:[93,12]]'),('receiving','vrs_with_franchise','submit','assessment',0,NULL,'[:]',NULL,'Submit for Assessment','[points:[310,86,296,152],type:\"arrow\",pos:[296,86],size:[14,66]]'),('releasing','vrsbasic','release','end',0,NULL,'[showConfirm:true,confirmMessage:\"Your are about to release this document. Continue?\"]',NULL,'Release','[points:[965,261,1043,265],type:\"arrow\",pos:[965,261],size:[78,4]]'),('releasing','vrsbasic','void-payment','payment',0,NULL,'[visibleWhen:\"#{ false }\"]',NULL,'Void Payment','[points:[904,238,885,181,547,201],type:\"arrow\",pos:[547,181],size:[357,57]]'),('releasing','vrs_change_info_with_payment','release','end',0,NULL,'[showConfirm:true,confirmMessage:\"Your are about to release this document. Continue?\"]',NULL,'Release','[points:[965,261,1043,265],type:\"arrow\",pos:[965,261],size:[78,4]]'),('releasing','vrs_change_info_with_payment','void-payment','payment',0,NULL,'[visibleWhen:\"#{ false }\"]',NULL,'Void Payment','[points:[904,238,730,204,540,264],type:\"arrow\",pos:[540,204],size:[364,60]]'),('releasing','vrs_close_account','release','end',0,NULL,'[showConfirm:true,confirmMessage:\"Your are about to release this document. Continue?\"]',NULL,'Release','[points:[711,209,784,206],type:\"arrow\",pos:[711,206],size:[73,3]]'),('releasing','vrs_with_franchise','release','end',0,NULL,'[showConfirm:true,confirmMessage:\"Your are about to release this document. Continue?\"]',NULL,'Release','[points:[965,261,1043,265],type:\"arrow\",pos:[965,261],size:[78,4]]'),('releasing','vrs_with_franchise','void-payment','payment',0,NULL,'[visibleWhen:\"#{ false }\"]',NULL,'Void Payment','[points:[904,238,730,204,540,264],type:\"arrow\",pos:[540,204],size:[364,60]]'),('start','vrsbasic','start','receiving',0,NULL,'[:]',NULL,'Start','[points:[132,49,220,76],type:\"arrow\",pos:[132,49],size:[88,27]]'),('start','vrs_change_info','start','approval',0,NULL,'[:]',NULL,'Start','[points:[132,48,170,59,368,98],type:\"arrow\",pos:[132,48],size:[236,50]]'),('start','vrs_change_info_with_payment','start','assessment',0,NULL,'[:]',NULL,'Start','[points:[170,110,254,150],type:\"arrow\",pos:[170,110],size:[84,40]]'),('start','vrs_close_account','start','receiving',0,NULL,'[:]',NULL,'Start','[points:[132,49,220,76],type:\"arrow\",pos:[132,49],size:[88,27]]'),('start','vrs_with_franchise','start','check-has-franchise',0,NULL,'[:]',NULL,'Start','[points:[70,51,95,72],type:\"arrow\",pos:[70,51],size:[25,21]]');
/*!40000 ALTER TABLE `sys_wf_transition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_abstract_billitem`
--

DROP TABLE IF EXISTS `vrs_abstract_billitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_abstract_billitem` (
  `objid` varchar(50) NOT NULL,
  `billid` varchar(50) DEFAULT NULL,
  `itemid` varchar(50) DEFAULT NULL,
  `amount` decimal(16,2) DEFAULT NULL,
  `amtpaid` decimal(16,2) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  `uid` varchar(200) DEFAULT NULL,
  `auto` int(11) DEFAULT '0',
  `forwarded` int(11) DEFAULT '0',
  `billdate` date DEFAULT NULL,
  `supersededid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `uix_market_billitem_billid_uid` (`billid`,`uid`),
  KEY `fk_market_billitem_itemid` (`itemid`),
  KEY `uix_market_bilitem_acctid_itemid_billscheduleid` (`billid`,`itemid`),
  CONSTRAINT `fk_vrs_billitem_billid` FOREIGN KEY (`billid`) REFERENCES `vrs_bill` (`objid`),
  CONSTRAINT `fk_vrs_billitem_itemid` FOREIGN KEY (`itemid`) REFERENCES `vrs_itemaccount` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_abstract_billitem`
--

LOCK TABLES `vrs_abstract_billitem` WRITE;
/*!40000 ALTER TABLE `vrs_abstract_billitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_abstract_billitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_account`
--

DROP TABLE IF EXISTS `vrs_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_account` (
  `objid` varchar(50) NOT NULL,
  `headerinfoid` varchar(50) DEFAULT NULL,
  `acctno` varchar(50) DEFAULT NULL,
  `acctyearid` varchar(50) DEFAULT NULL,
  `vehicletypeid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `uix_vrs_account_acctno` (`acctno`),
  KEY `fk_vrs_account_headerinfoid` (`headerinfoid`),
  KEY `fk_vrs_account_acctyearid` (`acctyearid`),
  KEY `fk_vrs_account_vehicletypeid` (`vehicletypeid`),
  CONSTRAINT `fk_vrs_account_acctyearid` FOREIGN KEY (`acctyearid`) REFERENCES `vrs_account_year` (`objid`),
  CONSTRAINT `fk_vrs_account_headerinfoid` FOREIGN KEY (`headerinfoid`) REFERENCES `vrs_header_info` (`objid`),
  CONSTRAINT `fk_vrs_account_vehicletypeid` FOREIGN KEY (`vehicletypeid`) REFERENCES `vrs_vehicletype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_account`
--

LOCK TABLES `vrs_account` WRITE;
/*!40000 ALTER TABLE `vrs_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_account_case`
--

DROP TABLE IF EXISTS `vrs_account_case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_account_case` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `acctid` varchar(50) DEFAULT NULL,
  `casetypeid` varchar(50) DEFAULT NULL,
  `particulars` text,
  `workgroupid` varchar(50) DEFAULT NULL,
  `supersededid` varchar(50) DEFAULT NULL,
  `dtissued` date DEFAULT NULL,
  `dtcreated` datetime DEFAULT NULL,
  `createdby_objid` varchar(50) DEFAULT NULL,
  `createdby_name` varchar(255) DEFAULT NULL,
  `refid` varchar(50) DEFAULT NULL,
  `refno` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `fk_vrs_account_case_acctid` (`acctid`),
  CONSTRAINT `fk_vrs_account_case_acctid` FOREIGN KEY (`acctid`) REFERENCES `vrs_account` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_account_case`
--

LOCK TABLES `vrs_account_case` WRITE;
/*!40000 ALTER TABLE `vrs_account_case` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_account_case` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_account_group`
--

DROP TABLE IF EXISTS `vrs_account_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_account_group` (
  `objid` varchar(50) NOT NULL,
  `vehicletypeid` varchar(50) DEFAULT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `leftindex` int(11) DEFAULT NULL,
  `rightindex` int(11) DEFAULT NULL,
  `fullpath` varchar(500) DEFAULT NULL,
  `uid` int(11) NOT NULL,
  `sortorder` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `objid` (`objid`),
  KEY `fk_vrs_account_group_vehicletypeid` (`vehicletypeid`),
  KEY `fk_vrs_account_group_parentid` (`parentid`),
  KEY `uix_vrs_account_group_uid` (`uid`),
  CONSTRAINT `fk_vrs_account_group_parentid` FOREIGN KEY (`parentid`) REFERENCES `vrs_account_group` (`objid`),
  CONSTRAINT `fk_vrs_account_group_vehicletypeid` FOREIGN KEY (`vehicletypeid`) REFERENCES `vrs_vehicletype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_account_group`
--

LOCK TABLES `vrs_account_group` WRITE;
/*!40000 ALTER TABLE `vrs_account_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_account_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_account_year`
--

DROP TABLE IF EXISTS `vrs_account_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_account_year` (
  `objid` varchar(50) NOT NULL,
  `acctid` varchar(50) DEFAULT NULL,
  `activeyear` int(11) DEFAULT NULL,
  `permitid` varchar(50) DEFAULT NULL,
  `franchiseid` varchar(50) DEFAULT NULL,
  `lastyearrenewed` int(11) DEFAULT NULL,
  `txnid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `uix_vrs_account_year_acctid_acctyear` (`acctid`,`activeyear`),
  KEY `fk_vrs_account_year_txnid` (`txnid`),
  KEY `fk_vrs_account_year_franchiseid` (`franchiseid`),
  KEY `fk_vrs_account_year_permitid` (`permitid`),
  CONSTRAINT `fk_vrs_account_year_acctid` FOREIGN KEY (`acctid`) REFERENCES `vrs_account` (`objid`),
  CONSTRAINT `fk_vrs_account_year_franchiseid` FOREIGN KEY (`franchiseid`) REFERENCES `vrs_franchise` (`objid`),
  CONSTRAINT `fk_vrs_account_year_permitid` FOREIGN KEY (`permitid`) REFERENCES `vrs_doc_issuance` (`objid`),
  CONSTRAINT `fk_vrs_account_year_txnid` FOREIGN KEY (`txnid`) REFERENCES `vrs_txn` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_account_year`
--

LOCK TABLES `vrs_account_year` WRITE;
/*!40000 ALTER TABLE `vrs_account_year` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_account_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_bill`
--

DROP TABLE IF EXISTS `vrs_bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_bill` (
  `objid` varchar(50) NOT NULL,
  `txnid` varchar(50) DEFAULT NULL,
  `billno` varchar(50) DEFAULT NULL,
  `billdate` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `validitydate` date DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `balanceforward` decimal(16,2) DEFAULT NULL,
  `totalpayment` decimal(16,2) DEFAULT NULL,
  `interest` decimal(16,2) DEFAULT NULL,
  `surcharge` decimal(16,2) DEFAULT NULL,
  `amount` decimal(16,2) DEFAULT NULL,
  `discount` decimal(16,2) DEFAULT NULL,
  `txnmode` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `uix_market_bill_billno` (`billno`),
  KEY `fk_vrs_bill_txnid` (`txnid`),
  CONSTRAINT `fk_vrs_bill_txnid` FOREIGN KEY (`txnid`) REFERENCES `vrs_txn` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_bill`
--

LOCK TABLES `vrs_bill` WRITE;
/*!40000 ALTER TABLE `vrs_bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_billitem`
--

DROP TABLE IF EXISTS `vrs_billitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_billitem` (
  `objid` varchar(50) NOT NULL,
  `year` int(11) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  PRIMARY KEY (`objid`),
  CONSTRAINT `fk_vrs_billitem_objid` FOREIGN KEY (`objid`) REFERENCES `vrs_abstract_billitem` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_billitem`
--

LOCK TABLES `vrs_billitem` WRITE;
/*!40000 ALTER TABLE `vrs_billitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_billitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_billitem_subitem`
--

DROP TABLE IF EXISTS `vrs_billitem_subitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_billitem_subitem` (
  `objid` varchar(50) NOT NULL,
  `billitemrefid` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `fk_market_penalty_billitem_billitemrefid` (`billitemrefid`),
  CONSTRAINT `fk_vrs_billitem_subitem_billitemrefid` FOREIGN KEY (`billitemrefid`) REFERENCES `vrs_abstract_billitem` (`objid`),
  CONSTRAINT `fk_vrs_billitem_subitem_objid` FOREIGN KEY (`objid`) REFERENCES `vrs_abstract_billitem` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_billitem_subitem`
--

LOCK TABLES `vrs_billitem_subitem` WRITE;
/*!40000 ALTER TABLE `vrs_billitem_subitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_billitem_subitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_credit_billitem`
--

DROP TABLE IF EXISTS `vrs_credit_billitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_credit_billitem` (
  `objid` varchar(50) NOT NULL,
  `paymentid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `fk_market_credit_billitem_paymentid` (`paymentid`),
  CONSTRAINT `fk_vrs_credit_billitem_objid` FOREIGN KEY (`objid`) REFERENCES `vrs_abstract_billitem` (`objid`),
  CONSTRAINT `fk_vrs_credit_billitem_paymentid` FOREIGN KEY (`paymentid`) REFERENCES `vrs_payment` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_credit_billitem`
--

LOCK TABLES `vrs_credit_billitem` WRITE;
/*!40000 ALTER TABLE `vrs_credit_billitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_credit_billitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_credit_paymentitem`
--

DROP TABLE IF EXISTS `vrs_credit_paymentitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_credit_paymentitem` (
  `objid` varchar(50) NOT NULL,
  `credititemid` varchar(50) DEFAULT NULL,
  `billitemrefid` varchar(50) DEFAULT NULL,
  `billid` varchar(50) DEFAULT NULL,
  `amount` decimal(16,2) DEFAULT NULL,
  `billdate` date DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `fk_eboss_credit_paymentitem_billitemrefid` (`billitemrefid`),
  KEY `fk_eboss_credit_paymentitem_billid` (`billid`),
  KEY `fk_market_credit_paymentitem_credititemid` (`credititemid`),
  CONSTRAINT `fk_vrs_credit_paymentitem_billid` FOREIGN KEY (`billid`) REFERENCES `vrs_bill` (`objid`),
  CONSTRAINT `fk_vrs_credit_paymentitem_billitemrefid` FOREIGN KEY (`billitemrefid`) REFERENCES `vrs_abstract_billitem` (`objid`),
  CONSTRAINT `fk_vrs_credit_paymentitem_credititemid` FOREIGN KEY (`credititemid`) REFERENCES `vrs_credit_billitem` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_credit_paymentitem`
--

LOCK TABLES `vrs_credit_paymentitem` WRITE;
/*!40000 ALTER TABLE `vrs_credit_paymentitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_credit_paymentitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_date_extension`
--

DROP TABLE IF EXISTS `vrs_date_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_date_extension` (
  `objid` varchar(50) NOT NULL,
  `vehicletypeid` varchar(50) DEFAULT NULL,
  `particulars` varchar(50) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `uix_vrs_date_extension_vehicletypeid_year` (`vehicletypeid`,`year`),
  CONSTRAINT `fk_vrs_date_extension_vehicletypeid` FOREIGN KEY (`vehicletypeid`) REFERENCES `vrs_vehicletype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_date_extension`
--

LOCK TABLES `vrs_date_extension` WRITE;
/*!40000 ALTER TABLE `vrs_date_extension` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_date_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_detail_info`
--

DROP TABLE IF EXISTS `vrs_detail_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_detail_info` (
  `objid` varchar(50) NOT NULL,
  `fieldid` varchar(50) DEFAULT NULL,
  `stringvalue` varchar(255) DEFAULT NULL,
  `decimalvalue` decimal(18,2) DEFAULT NULL,
  `intvalue` int(11) DEFAULT NULL,
  `datevalue` date DEFAULT NULL,
  `booleanvalue` int(11) DEFAULT NULL,
  `lov_objid` varchar(50) DEFAULT NULL,
  `lookup_objid` varchar(50) DEFAULT NULL,
  `lookup_title` varchar(50) DEFAULT NULL,
  `objvalue` mediumtext,
  `txnid` varchar(50) DEFAULT NULL,
  `supersededid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `fk_vrs_account_info_fieldid` (`fieldid`),
  KEY `fk_vrs_detail_info_txnid` (`txnid`),
  KEY `fk_vrs_detail_info_supersededid` (`supersededid`),
  CONSTRAINT `fk_vrs_detail_info_fieldid` FOREIGN KEY (`fieldid`) REFERENCES `vrs_vehicletype_field` (`objid`),
  CONSTRAINT `fk_vrs_detail_info_supersededid` FOREIGN KEY (`supersededid`) REFERENCES `vrs_detail_info` (`objid`),
  CONSTRAINT `fk_vrs_detail_info_txnid` FOREIGN KEY (`txnid`) REFERENCES `vrs_txn` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_detail_info`
--

LOCK TABLES `vrs_detail_info` WRITE;
/*!40000 ALTER TABLE `vrs_detail_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_detail_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_discountitem`
--

DROP TABLE IF EXISTS `vrs_discountitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_discountitem` (
  `objid` varchar(50) NOT NULL,
  `billitemrefid` varchar(50) DEFAULT NULL,
  `itemid` varchar(50) DEFAULT NULL,
  `amount` decimal(16,2) DEFAULT NULL,
  `paymentid` varchar(50) DEFAULT NULL,
  `voidamount` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `fk_vrs_discountitem_billitemrefid` (`billitemrefid`),
  KEY `vrs_discountitem_itemid` (`itemid`),
  KEY `vrs_discountitem_paymentid` (`paymentid`),
  CONSTRAINT `vrs_discountitem_billitemrefid` FOREIGN KEY (`billitemrefid`) REFERENCES `vrs_billitem` (`objid`),
  CONSTRAINT `vrs_discountitem_itemid` FOREIGN KEY (`itemid`) REFERENCES `vrs_itemaccount` (`objid`),
  CONSTRAINT `vrs_discountitem_paymentid` FOREIGN KEY (`paymentid`) REFERENCES `vrs_payment` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_discountitem`
--

LOCK TABLES `vrs_discountitem` WRITE;
/*!40000 ALTER TABLE `vrs_discountitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_discountitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_doc`
--

DROP TABLE IF EXISTS `vrs_doc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_doc` (
  `objid` varchar(50) NOT NULL,
  `txnid` varchar(50) DEFAULT NULL,
  `dtcreated` datetime DEFAULT NULL,
  `createdby_objid` varchar(50) DEFAULT NULL,
  `createdby_name` varchar(50) DEFAULT NULL,
  `doctypeid` varchar(50) DEFAULT NULL,
  `issuanceid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `uix_vrs_doc_txnid_doctypeid` (`txnid`,`doctypeid`),
  KEY `fk_vrs_doc_doctypeid` (`doctypeid`),
  CONSTRAINT `fk_vrs_doc_doctypeid` FOREIGN KEY (`doctypeid`) REFERENCES `vrs_doctype` (`objid`),
  CONSTRAINT `fk_vrs_doc_txnid` FOREIGN KEY (`txnid`) REFERENCES `vrs_txn` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_doc`
--

LOCK TABLES `vrs_doc` WRITE;
/*!40000 ALTER TABLE `vrs_doc` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_doc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_doc_issuance`
--

DROP TABLE IF EXISTS `vrs_doc_issuance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_doc_issuance` (
  `objid` varchar(50) NOT NULL,
  `issueno` varchar(50) DEFAULT NULL,
  `dtissued` date DEFAULT NULL,
  `issuer_objid` varchar(50) DEFAULT NULL,
  `issuer_name` varchar(255) DEFAULT NULL,
  `expirydate` date DEFAULT NULL,
  `docid` varchar(50) DEFAULT NULL,
  `doctypeid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `fk_vrs_doc_issuance_docid` (`docid`),
  CONSTRAINT `fk_vrs_doc_issuance_docid` FOREIGN KEY (`docid`) REFERENCES `vrs_doc` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_doc_issuance`
--

LOCK TABLES `vrs_doc_issuance` WRITE;
/*!40000 ALTER TABLE `vrs_doc_issuance` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_doc_issuance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_doctype`
--

DROP TABLE IF EXISTS `vrs_doctype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_doctype` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `docclass` varchar(255) DEFAULT NULL,
  `sortorder` smallint(6) DEFAULT NULL,
  `templateid` varchar(50) DEFAULT NULL,
  `controlnopattern` varchar(50) DEFAULT NULL,
  `system` int(11) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `endorserid` varchar(50) DEFAULT NULL,
  `approverid` varchar(50) DEFAULT NULL,
  `reportid` varchar(50) DEFAULT NULL,
  `supersededid` varchar(50) DEFAULT NULL,
  `uid` varchar(50) DEFAULT NULL,
  `vehicletypeid` varchar(50) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `issuetype` int(11) DEFAULT NULL,
  `autoemail` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `fk_vrs_doctype_supersededid` (`supersededid`),
  KEY `fk_vrs_doctype_endorserid` (`endorserid`),
  KEY `fk_vrs_doctype_approverid` (`approverid`),
  KEY `fk_vrs_doctype_role` (`role`),
  KEY `fk_vrs_doctype_template` (`templateid`),
  KEY `uix_vrs_doctype_uid` (`uid`),
  KEY `fk_vrs_doctype_vehicletypeid` (`vehicletypeid`),
  CONSTRAINT `fk_vrs_doctype_approverid` FOREIGN KEY (`approverid`) REFERENCES `sys_signature` (`objid`),
  CONSTRAINT `fk_vrs_doctype_endorserid` FOREIGN KEY (`endorserid`) REFERENCES `sys_signature` (`objid`),
  CONSTRAINT `fk_vrs_doctype_role` FOREIGN KEY (`role`) REFERENCES `sys_role` (`name`),
  CONSTRAINT `fk_vrs_doctype_supersededid` FOREIGN KEY (`supersededid`) REFERENCES `vrs_doctype` (`objid`),
  CONSTRAINT `fk_vrs_doctype_vehicletypeid` FOREIGN KEY (`vehicletypeid`) REFERENCES `vrs_vehicletype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_doctype`
--

LOCK TABLES `vrs_doctype` WRITE;
/*!40000 ALTER TABLE `vrs_doctype` DISABLE KEYS */;
INSERT INTO `vrs_doctype` VALUES ('MTOP_FRANCHISE_PERMIT','POSTED','MTOP_FRANCHISE_PERMIT','MTOP FRANCHISE PERMIT','OTHER',0,'mtop_permit',NULL,NULL,NULL,NULL,NULL,'vrs_doc_report',NULL,NULL,'trimobile',0,2,0),('MTOP_FRANCHISE_PERMIT:1','POSTED','MTOP_FRANCHISE_PERMIT','MTOP FRANCHISE PERMIT','OTHER',0,'mtop_permit',NULL,NULL,NULL,NULL,NULL,'vrs_doc_report','MTOP_FRANCHISE_PERMIT',NULL,'trimobile',1,1,0),('MTOP_PERMIT','DRAFT','MTOP_PERMIT','MTOP PERMIT','PRIMARY',0,'mtop_permit','MTOP[yyyyMM][%06d]',NULL,NULL,NULL,NULL,'vrs_doc_report',NULL,NULL,'trimobile',0,1,0),('PEDICAB_FRANCHISE_PERMIT','DRAFT','PEDICAB_FRANCHISE_PERMIT','FRANCHISE PERMIT (PEDICAB)','PRIMARY',0,NULL,NULL,NULL,NULL,NULL,NULL,'vrs_doc_report',NULL,NULL,'pedicab',0,0,NULL),('PEDICAB_VEHICLE_PERMIT','DRAFT','PEDICAB_VEHICLE_PERMIT','VEHICLE PERMIT (PEDICAB)','PRIMARY',0,NULL,NULL,NULL,NULL,NULL,NULL,'vrs_doc_report',NULL,NULL,'pedicab',0,0,NULL);
/*!40000 ALTER TABLE `vrs_doctype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_driver`
--

DROP TABLE IF EXISTS `vrs_driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_driver` (
  `objid` varchar(50) NOT NULL,
  `controlno` varchar(50) DEFAULT NULL,
  `vehicletypeid` varchar(50) DEFAULT NULL,
  `entity_objid` varchar(50) DEFAULT NULL,
  `entity_name` varchar(255) DEFAULT NULL,
  `entity_address_objid` varchar(50) DEFAULT NULL,
  `entity_address_text` varchar(255) DEFAULT NULL,
  `license_refno` varchar(50) DEFAULT NULL,
  `license_expirydate` date DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `uix_vehicle_driver_controlno` (`controlno`),
  UNIQUE KEY `uix_vehicle_driver_entityid_vehicletypeid` (`entity_objid`,`vehicletypeid`),
  KEY `vehicle_driver_vehicletypeid` (`vehicletypeid`),
  CONSTRAINT `vehicle_driver_vehicletypeid` FOREIGN KEY (`vehicletypeid`) REFERENCES `vrs_vehicletype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_driver`
--

LOCK TABLES `vrs_driver` WRITE;
/*!40000 ALTER TABLE `vrs_driver` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_franchise`
--

DROP TABLE IF EXISTS `vrs_franchise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_franchise` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `vehicletypeid` varchar(50) DEFAULT NULL,
  `franchiseno` varchar(50) DEFAULT NULL,
  `dtissued` date DEFAULT NULL,
  `expirydate` date DEFAULT NULL,
  `doctypeid` varchar(50) DEFAULT NULL,
  `supersededid` varchar(50) DEFAULT NULL,
  `particulars` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `fk_vrs_franchise_vehicletypeid` (`vehicletypeid`),
  KEY `fk_vrs_franchise_doctypeid` (`doctypeid`),
  KEY `fk_vrs_franchise_supersededid` (`supersededid`),
  CONSTRAINT `fk_vrs_franchise_doctypeid` FOREIGN KEY (`doctypeid`) REFERENCES `vrs_doctype` (`objid`),
  CONSTRAINT `fk_vrs_franchise_supersededid` FOREIGN KEY (`supersededid`) REFERENCES `vrs_franchise` (`objid`),
  CONSTRAINT `fk_vrs_franchise_vehicletypeid` FOREIGN KEY (`vehicletypeid`) REFERENCES `vrs_vehicletype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_franchise`
--

LOCK TABLES `vrs_franchise` WRITE;
/*!40000 ALTER TABLE `vrs_franchise` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_franchise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_header_info`
--

DROP TABLE IF EXISTS `vrs_header_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_header_info` (
  `objid` varchar(50) NOT NULL,
  `owner_objid` varchar(50) DEFAULT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `owner_address_text` varchar(255) DEFAULT NULL,
  `owner_entitytype` varchar(50) DEFAULT NULL,
  `owner_profileid` varchar(50) DEFAULT NULL,
  `owner_profileno` varchar(50) DEFAULT NULL,
  `owner_firstname` varchar(255) DEFAULT NULL,
  `owner_lastname` varchar(255) DEFAULT NULL,
  `owner_middlename` varchar(255) DEFAULT NULL,
  `owner_resident` smallint(6) DEFAULT NULL,
  `owner_address_objid` varchar(50) DEFAULT NULL,
  `owner_address_unitno` varchar(50) DEFAULT NULL,
  `owner_address_bldgno` varchar(50) DEFAULT NULL,
  `owner_address_bldgname` varchar(255) DEFAULT NULL,
  `owner_address_street` varchar(255) DEFAULT NULL,
  `owner_address_subdivision` varchar(255) DEFAULT NULL,
  `owner_address_barangay_objid` varchar(50) DEFAULT NULL,
  `owner_address_barangay_name` varchar(255) DEFAULT NULL,
  `owner_address_citymunicipality` varchar(255) DEFAULT NULL,
  `owner_address_province` varchar(255) DEFAULT NULL,
  `owner_tin` varchar(255) DEFAULT NULL,
  `owner_email` varchar(255) DEFAULT NULL,
  `owner_mobileno` varchar(50) DEFAULT NULL,
  `owner_phoneno` varchar(50) DEFAULT NULL,
  `owner_id_type_name` varchar(255) DEFAULT NULL,
  `owner_id_idno` varchar(50) DEFAULT NULL,
  `owner_id_placeissued` varchar(255) DEFAULT NULL,
  `owner_id_dtissued` date DEFAULT NULL,
  `address_text` varchar(255) DEFAULT NULL,
  `address_unitno` varchar(50) DEFAULT NULL,
  `address_bldgno` varchar(50) DEFAULT NULL,
  `address_bldgname` varchar(50) DEFAULT NULL,
  `address_street` varchar(50) DEFAULT NULL,
  `address_subdivision` varchar(50) DEFAULT NULL,
  `address_barangay_objid` varchar(50) DEFAULT NULL,
  `address_barangay_name` varchar(50) DEFAULT NULL,
  `acctgroupid` varchar(50) DEFAULT NULL,
  `contact_phoneno` varchar(50) DEFAULT NULL,
  `contact_mobileno` varchar(50) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `txnid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `fk_eboss_account_info_txnid` (`txnid`),
  KEY `fk_vrs_header_info_acctgroupid` (`acctgroupid`),
  CONSTRAINT `fk_vrs_header_info_acctgroupid` FOREIGN KEY (`acctgroupid`) REFERENCES `vrs_account_group` (`objid`),
  CONSTRAINT `fk_vrs_header_info_txnid` FOREIGN KEY (`txnid`) REFERENCES `vrs_txn` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_header_info`
--

LOCK TABLES `vrs_header_info` WRITE;
/*!40000 ALTER TABLE `vrs_header_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_header_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_itemaccount`
--

DROP TABLE IF EXISTS `vrs_itemaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_itemaccount` (
  `objid` varchar(50) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `item_objid` varchar(50) DEFAULT NULL,
  `item_code` varchar(50) DEFAULT NULL,
  `item_title` varchar(255) DEFAULT NULL,
  `item_fund_objid` varchar(50) DEFAULT NULL,
  `item_fund_title` varchar(50) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `itemtype` varchar(50) DEFAULT NULL,
  `tag` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_itemaccount`
--

LOCK TABLES `vrs_itemaccount` WRITE;
/*!40000 ALTER TABLE `vrs_itemaccount` DISABLE KEYS */;
INSERT INTO `vrs_itemaccount` VALUES ('BODY_NO_FEE','BODY NO FEE',NULL,NULL,NULL,NULL,NULL,1,'FEE',NULL),('BODY_PLATE_FEE','BODY PLATE FEE',NULL,NULL,NULL,NULL,NULL,1,'FEE',NULL),('BUSINESS_TAX','BUSINESS TAX (TRI MOBILE)',NULL,NULL,NULL,NULL,NULL,1,'FEE',NULL),('CERTIFICATION_FEE','CERTIFICATION FEE',NULL,NULL,NULL,NULL,NULL,1,'FEE',NULL),('COST_OF_STICKER','COST OF STICKER',NULL,NULL,NULL,NULL,NULL,1,'FEE',NULL),('DOCUMENTARY_STAMP_(MTOP)','DOCUMENTARY STAMP',NULL,NULL,NULL,NULL,NULL,1,'FEE',NULL),('FILING_FEE','FILING FEE',NULL,NULL,NULL,NULL,NULL,1,'FEE',NULL),('FRANCHISE_FEE','FRANCHISE FEE',NULL,NULL,NULL,NULL,NULL,1,'FEE',NULL),('LEGALIZATION_FEE','LEGALIZATION FEE',NULL,NULL,NULL,NULL,NULL,1,'FEE',NULL),('LEGAL_RESEARCH_FEE','LEGAL RESEARCH FEE',NULL,NULL,NULL,NULL,NULL,1,'FEE',NULL),('MAYORS_PERMIT_FEE','MAYORS PERMIT FEE',NULL,NULL,NULL,NULL,NULL,0,'FEE',NULL),('MEDICAL_CERT_FEE','MEDICAL CERTIFICATION FEE',NULL,NULL,NULL,NULL,NULL,1,'FEE',NULL),('MTOP_FILING_FEE_(MTOP_NEW_FRANCHISE)','MTOP FILING FEE (MTOP NEW FRANCHISE)',NULL,NULL,NULL,NULL,NULL,1,'FEE',NULL),('MTOP_FILING_FEE_(RENEWAL)','MTOP FILING FEE (RENEWAL)',NULL,NULL,NULL,NULL,NULL,1,'FEE',NULL),('MTOP_FILING_FEE_(RENEWED_FRANCHISE)','MTOP FILING FEE (RENEWED FRANCHISE)',NULL,NULL,NULL,NULL,NULL,1,'FEE',NULL),('MTOP_FILING_FEE_(SUB._OF_UNIT)','MTOP FILING FEE (SUB. OF UNIT)',NULL,NULL,NULL,NULL,NULL,1,'FEE',NULL),('OCCUPATIONAL_FEE','OCCUPATIONAL FEE',NULL,NULL,NULL,NULL,NULL,1,'FEE',NULL),('PENALTY_LATE_RENEWAL','PENALTY LATE RENEWAL',NULL,NULL,NULL,NULL,NULL,1,'SURCHARGE',NULL),('REGISTRATION_FEE','REGISTRATION FEE',NULL,NULL,NULL,NULL,NULL,1,'FEE',NULL),('ROADWORTHY_FEE_(MTOP)','ROADWORTHY FEE (MTOP)',NULL,NULL,NULL,NULL,NULL,1,'FEE',NULL),('STICKER_(MTOP)','STICKER (MTOP)',NULL,NULL,NULL,NULL,NULL,1,'FEE',NULL),('SUP._&_REF._FEE','SUP. & REG. FEE',NULL,NULL,NULL,NULL,NULL,1,'FEE',NULL),('SUPERVISION_FEE','SUP. & REG GEE',NULL,NULL,NULL,NULL,NULL,1,'FEE',NULL);
/*!40000 ALTER TABLE `vrs_itemaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_payment`
--

DROP TABLE IF EXISTS `vrs_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_payment` (
  `objid` varchar(50) NOT NULL,
  `refid` varchar(50) DEFAULT NULL,
  `refno` varchar(50) DEFAULT NULL,
  `reftype` varchar(50) DEFAULT NULL,
  `refdate` date DEFAULT NULL,
  `txnmode` varchar(50) DEFAULT NULL,
  `voided` int(11) DEFAULT NULL,
  `amount` decimal(16,2) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_payment`
--

LOCK TABLES `vrs_payment` WRITE;
/*!40000 ALTER TABLE `vrs_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_paymentitem`
--

DROP TABLE IF EXISTS `vrs_paymentitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_paymentitem` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) DEFAULT NULL,
  `billid` varchar(50) DEFAULT NULL,
  `billitemrefid` varchar(50) DEFAULT NULL,
  `amount` decimal(16,2) DEFAULT NULL,
  `voidamount` decimal(16,2) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `fk_market_payment_item_parentid` (`parentid`),
  KEY `fk_market_paymentitem_billitemid` (`billitemrefid`),
  CONSTRAINT `fk_vrs_paymentitem_billitemrefid` FOREIGN KEY (`billitemrefid`) REFERENCES `vrs_abstract_billitem` (`objid`),
  CONSTRAINT `fk_vrs_paymentitem_parentid` FOREIGN KEY (`parentid`) REFERENCES `vrs_payment` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_paymentitem`
--

LOCK TABLES `vrs_paymentitem` WRITE;
/*!40000 ALTER TABLE `vrs_paymentitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_paymentitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_txn`
--

DROP TABLE IF EXISTS `vrs_txn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_txn` (
  `objid` varchar(50) NOT NULL,
  `appno` varchar(50) DEFAULT NULL,
  `appdate` date DEFAULT NULL,
  `trackingno` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `txntypeid` varchar(50) DEFAULT NULL,
  `txnmode` varchar(20) DEFAULT NULL,
  `headerinfoid` varchar(50) DEFAULT NULL,
  `acctyearid` varchar(50) DEFAULT NULL,
  `txndate` datetime DEFAULT NULL,
  `dtposted` datetime DEFAULT NULL,
  `createdby_objid` varchar(50) DEFAULT NULL,
  `createdby_name` varchar(255) DEFAULT NULL,
  `dtcreated` datetime DEFAULT NULL,
  `billid` varchar(50) DEFAULT NULL,
  `supersededid` varchar(50) DEFAULT NULL,
  `taskid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `fk_vrs_txn_supersededid` (`supersededid`),
  KEY `fk_vrs_txn_txntypeid` (`txntypeid`),
  KEY `fk_vrs_txn_acctyearid` (`acctyearid`),
  KEY `fk_vrs_txn_ownerinfoid` (`headerinfoid`),
  KEY `fk_vrs_txn_billid` (`billid`),
  CONSTRAINT `fk_vrs_txn_acctyearid` FOREIGN KEY (`acctyearid`) REFERENCES `vrs_account_year` (`objid`),
  CONSTRAINT `fk_vrs_txn_billid` FOREIGN KEY (`billid`) REFERENCES `vrs_bill` (`objid`),
  CONSTRAINT `fk_vrs_txn_ownerinfoid` FOREIGN KEY (`headerinfoid`) REFERENCES `vrs_header_info` (`objid`),
  CONSTRAINT `fk_vrs_txn_txntype` FOREIGN KEY (`txntypeid`) REFERENCES `vrs_txntype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_txn`
--

LOCK TABLES `vrs_txn` WRITE;
/*!40000 ALTER TABLE `vrs_txn` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_txn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_txn_task`
--

DROP TABLE IF EXISTS `vrs_txn_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_txn_task` (
  `taskid` varchar(50) NOT NULL,
  `refid` varchar(50) DEFAULT NULL,
  `parentprocessid` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `assignee_objid` varchar(50) DEFAULT NULL,
  `assignee_name` varchar(100) DEFAULT NULL,
  `actor_objid` varchar(50) DEFAULT NULL,
  `actor_name` varchar(100) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `dtcreated` datetime DEFAULT NULL,
  `prevtaskid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`taskid`),
  KEY `FK_obo_subproc_task_refid` (`refid`),
  KEY `ix_refid` (`refid`),
  KEY `ix_parentprocessid` (`parentprocessid`),
  KEY `ix_startdate` (`startdate`),
  KEY `ix_enddate` (`enddate`),
  KEY `ix_assignee_objid` (`assignee_objid`),
  KEY `ix_actor_objid` (`actor_objid`),
  KEY `ix_dtcreated` (`dtcreated`),
  KEY `ix_prevtaskid` (`prevtaskid`),
  KEY `fk_building_permit_task_state` (`state`),
  CONSTRAINT `fx_vrs_txn_task_refid` FOREIGN KEY (`refid`) REFERENCES `vrs_txn` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_txn_task`
--

LOCK TABLES `vrs_txn_task` WRITE;
/*!40000 ALTER TABLE `vrs_txn_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `vrs_txn_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_txntype`
--

DROP TABLE IF EXISTS `vrs_txntype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_txntype` (
  `objid` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `txnclass` int(11) DEFAULT NULL,
  `processname` varchar(50) DEFAULT NULL,
  `controlnopattern` varchar(255) DEFAULT NULL,
  `vehicletypeid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `fk_eboss_txntype_processname` (`processname`),
  KEY `fk_vrs_txntype_vehicletypeid` (`vehicletypeid`),
  CONSTRAINT `fk_vrs_txntype_processname` FOREIGN KEY (`processname`) REFERENCES `sys_wf` (`name`),
  CONSTRAINT `fk_vrs_txntype_vehicletypeid` FOREIGN KEY (`vehicletypeid`) REFERENCES `vrs_vehicletype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_txntype`
--

LOCK TABLES `vrs_txntype` WRITE;
/*!40000 ALTER TABLE `vrs_txntype` DISABLE KEYS */;
INSERT INTO `vrs_txntype` VALUES ('PEDICAB_RENEWAL','RENEWAL','Renewal for Pedicabs',1,NULL,'vrsbasic','VR-[yyyy][MM][%06d]','pedicab'),('TRIMOBILE_CHANGE_INFO','CHANGE_INFO','Change Info',6,1,'vrs_change_info','TM-[yyyy]{MM][%06d]','trimobile'),('TRIMOBILE_CHANGE_OWNER','CHANGE_OWNER','Change Owner',10,NULL,'vrs_change_info','TM-[yyyy][MM]-[%06d]-O','trimobile'),('TRIMOBILE_CHANGE_UNIT','CHANGE_UNIT','Change Unit',11,NULL,'vrs_change_info_with_payment','TM-[yyyy][MM]-[%06d]-U','trimobile'),('TRIMOBILE_CLOSE_ACCOUNT','CLOSE_ACCOUNT','Close Account',100,NULL,'vrs_close_account','TM-[yyyy][MM]-[%04d]-C','trimobile'),('TRIMOBILE_NEW','NEW','New Vehicle',1,NULL,'vrs_with_franchise','TM-[yyyy][MM]-[%05d]-N','trimobile'),('TRIMOBILE_RENEWAL','RENEWAL','Vehicle Renewal',2,NULL,'vrs_with_franchise','TM-[yyyy][MM]-[%05d]-R','trimobile');
/*!40000 ALTER TABLE `vrs_txntype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_variable`
--

DROP TABLE IF EXISTS `vrs_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_variable` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `datatype` varchar(100) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `sortorder` smallint(6) DEFAULT NULL,
  `system` smallint(6) DEFAULT NULL,
  `arrayvalues` text,
  `unit` varchar(100) DEFAULT NULL,
  `lookuplistname` varchar(50) DEFAULT NULL,
  `multiselect` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `ix_state` (`state`),
  KEY `ix_caption` (`caption`),
  KEY `ix_datatype` (`datatype`),
  KEY `ix_category` (`category`),
  KEY `ix_sortorder` (`sortorder`),
  KEY `ix_system` (`system`),
  KEY `ix_unit` (`unit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_variable`
--

LOCK TABLES `vrs_variable` WRITE;
/*!40000 ALTER TABLE `vrs_variable` DISABLE KEYS */;
INSERT INTO `vrs_variable` VALUES ('BODYNO','DRAFT','Body No',NULL,'string',NULL,3,0,'[]',NULL,NULL,NULL),('CHASSISNO','DRAFT','Chassis No',NULL,'string',NULL,5,0,'[]',NULL,NULL,NULL),('COLOR','DRAFT','Color',NULL,'string',NULL,10,0,'[]',NULL,NULL,NULL),('ENGINENO','DRAFT','Engine No.',NULL,'string',NULL,2,0,'[]',NULL,NULL,NULL),('GROSS_WEIGHT','DRAFT','Gross Weight',NULL,'decimal',NULL,12,0,'[]',NULL,NULL,NULL),('MAKE','DRAFT','Make',NULL,'string',NULL,10,0,'[]',NULL,NULL,NULL),('MODEL','DRAFT','Model',NULL,'string',NULL,6,0,'[]',NULL,NULL,NULL),('OTHER_INFO','DRAFT','Other Info',NULL,'string',NULL,100,0,'[]',NULL,NULL,NULL),('PLATENO','DRAFT','Plate No.',NULL,'string',NULL,1,0,'[]',NULL,NULL,NULL),('SERIES','DRAFT','Series',NULL,'string','UNIT_INFO',11,0,'[]',NULL,NULL,NULL),('SIDECARNO','DRAFT','FRANCHISE PLATE NO.',NULL,'string',NULL,4,0,'[]',NULL,NULL,NULL),('TEST','DRAFT','test',NULL,'string','UNIT_INFO',13,0,'[]',NULL,NULL,NULL),('TEST1','DRAFT','test1',NULL,'string','MISC',14,0,'[]',NULL,NULL,NULL);
/*!40000 ALTER TABLE `vrs_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_vehicletype`
--

DROP TABLE IF EXISTS `vrs_vehicletype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_vehicletype` (
  `objid` varchar(50) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `controlpattern` varchar(50) DEFAULT NULL,
  `acctnopattern` varchar(50) DEFAULT NULL,
  `indexno` int(11) DEFAULT NULL,
  `renewalfrequency` varchar(10) DEFAULT NULL,
  `drivernopattern` varchar(50) DEFAULT NULL,
  `maxallowedunits` int(11) DEFAULT NULL,
  `iconid` varchar(50) DEFAULT NULL,
  `permitdoctypeid` varchar(50) DEFAULT NULL,
  `franchisedoctypeid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  KEY `fk_vrs_vehicletype_iconid` (`iconid`),
  KEY `fk_vrs_vehicletype_permitdoctypeid` (`permitdoctypeid`),
  KEY `fk_vrs_vehicletype_franchisedoctypeid` (`franchisedoctypeid`),
  CONSTRAINT `fk_vrs_vehicletype_franchisedoctypeid` FOREIGN KEY (`franchisedoctypeid`) REFERENCES `vrs_doctype` (`objid`),
  CONSTRAINT `fk_vrs_vehicletype_iconid` FOREIGN KEY (`iconid`) REFERENCES `sys_image` (`objid`),
  CONSTRAINT `fk_vrs_vehicletype_permitdoctypeid` FOREIGN KEY (`permitdoctypeid`) REFERENCES `vrs_doctype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_vehicletype`
--

LOCK TABLES `vrs_vehicletype` WRITE;
/*!40000 ALTER TABLE `vrs_vehicletype` DISABLE KEYS */;
INSERT INTO `vrs_vehicletype` VALUES ('pedicab','PEDICAB','PCAB-[%06d]','APCAB-[%06d]',NULL,NULL,NULL,1,'pedicab','PEDICAB_VEHICLE_PERMIT',NULL),('trimobile','TRIMOBILE','MTOPF-[%07d]','MTAC-[%05d]',NULL,NULL,'MTOP[yyyy][MM][%06d]',1,'tricycle','MTOP_PERMIT','MTOP_FRANCHISE_PERMIT');
/*!40000 ALTER TABLE `vrs_vehicletype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrs_vehicletype_field`
--

DROP TABLE IF EXISTS `vrs_vehicletype_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vrs_vehicletype_field` (
  `objid` varchar(50) NOT NULL,
  `vehicletypeid` varchar(50) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `caption` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `sortorder` int(11) DEFAULT NULL,
  `required` smallint(6) DEFAULT NULL,
  `textwidth` int(11) DEFAULT NULL,
  PRIMARY KEY (`objid`),
  UNIQUE KEY `uix_vehicletype_name` (`name`,`vehicletypeid`),
  KEY `fk_vehicletype_field_vehicletypeid` (`vehicletypeid`),
  CONSTRAINT `fk_vrs_vehicletype_field_name` FOREIGN KEY (`name`) REFERENCES `vrs_variable` (`objid`),
  CONSTRAINT `fk_vrs_vehicletype_field_vehicletypeid` FOREIGN KEY (`vehicletypeid`) REFERENCES `vrs_vehicletype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrs_vehicletype_field`
--

LOCK TABLES `vrs_vehicletype_field` WRITE;
/*!40000 ALTER TABLE `vrs_vehicletype_field` DISABLE KEYS */;
INSERT INTO `vrs_vehicletype_field` VALUES ('mtop-BODYNO','trimobile','BODYNO','Body No','UNIT INFO',4,NULL,0),('mtop-CHASSISNO','trimobile','CHASSISNO','Chassis No','UNIT INFO',3,NULL,0),('mtop-COLOR','trimobile','COLOR','Color','UNIT INFO',8,NULL,0),('mtop-ENGINENO','trimobile','ENGINENO','Engine No.','UNIT INFO',2,NULL,0),('mtop-GROSS_WEIGHT','trimobile','GROSS_WEIGHT','Gross Weight','UNIT INFO',10,NULL,0),('mtop-MAKE','trimobile','MAKE','Make','UNIT INFO',6,NULL,0),('mtop-MODEL','trimobile','MODEL','Model','UNIT INFO',7,NULL,0),('mtop-OTHER_INFO','trimobile','OTHER_INFO','Other Info','UNIT INFO',11,NULL,0),('mtop-PLATENO','trimobile','PLATENO','Plate No.','UNIT INFO',1,NULL,0),('mtop-SERIES','trimobile','SERIES','Series','UNIT INFO',9,NULL,0),('mtop-SIDECARNO','trimobile','SIDECARNO','Side Car No.','UNIT INFO',5,NULL,0),('pedicab-BODYNO','pedicab','BODYNO','Body No','UNIT INFO',1,NULL,0),('pedicab-COLOR','pedicab','COLOR','Color','UNIT INFO',3,NULL,0),('pedicab-PLATENO','pedicab','PLATENO','Plate No.','UNIT INFO',2,NULL,0),('trimobile-TEST','trimobile','TEST','test','MISC',12,NULL,0);
/*!40000 ALTER TABLE `vrs_vehicletype_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vw_vrs_account`
--

DROP TABLE IF EXISTS `vw_vrs_account`;
/*!50001 DROP VIEW IF EXISTS `vw_vrs_account`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_vrs_account` AS SELECT 
 1 AS `objid`,
 1 AS `headerinfoid`,
 1 AS `acctno`,
 1 AS `acctyearid`,
 1 AS `vehicletypeid`,
 1 AS `vehicletype_objid`,
 1 AS `vehicletype_title`,
 1 AS `vehicletype_permitdoctypeid`,
 1 AS `vehicletype_franchisedoctypeid`,
 1 AS `vehicletype_maxallowedunits`,
 1 AS `activeyear`,
 1 AS `lastyearrenewed`,
 1 AS `apptype`,
 1 AS `owner_name`,
 1 AS `owner_address_text`,
 1 AS `owner_objid`,
 1 AS `contact_phoneno`,
 1 AS `contact_mobileno`,
 1 AS `contact_email`,
 1 AS `permit_objid`,
 1 AS `permit_doctypeid`,
 1 AS `permit_issueno`,
 1 AS `permit_dtissued`,
 1 AS `permit_expirydate`,
 1 AS `permit_expired`,
 1 AS `franchise_objid`,
 1 AS `franchise_doctypeid`,
 1 AS `franchise_state`,
 1 AS `franchise_franchiseno`,
 1 AS `franchise_dtissued`,
 1 AS `franchise_expirydate`,
 1 AS `franchise_expired`,
 1 AS `task_state`,
 1 AS `txnid`,
 1 AS `acctgroup_name`,
 1 AS `acctgroup_fullpath`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_vrs_account_case`
--

DROP TABLE IF EXISTS `vw_vrs_account_case`;
/*!50001 DROP VIEW IF EXISTS `vw_vrs_account_case`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_vrs_account_case` AS SELECT 
 1 AS `objid`,
 1 AS `state`,
 1 AS `acctid`,
 1 AS `casetypeid`,
 1 AS `particulars`,
 1 AS `workgroupid`,
 1 AS `supersededid`,
 1 AS `dtissued`,
 1 AS `dtcreated`,
 1 AS `createdby_objid`,
 1 AS `createdby_name`,
 1 AS `refid`,
 1 AS `refno`,
 1 AS `superseded`,
 1 AS `prev_particulars`,
 1 AS `prev_objid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_vrs_account_detail_info`
--

DROP TABLE IF EXISTS `vw_vrs_account_detail_info`;
/*!50001 DROP VIEW IF EXISTS `vw_vrs_account_detail_info`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_vrs_account_detail_info` AS SELECT 
 1 AS `objid`,
 1 AS `fieldid`,
 1 AS `stringvalue`,
 1 AS `decimalvalue`,
 1 AS `intvalue`,
 1 AS `datevalue`,
 1 AS `booleanvalue`,
 1 AS `lov_objid`,
 1 AS `lookup_objid`,
 1 AS `lookup_title`,
 1 AS `objvalue`,
 1 AS `txnid`,
 1 AS `supersededid`,
 1 AS `caption`,
 1 AS `name`,
 1 AS `category`,
 1 AS `sortorder`,
 1 AS `required`,
 1 AS `textwidth`,
 1 AS `datatype`,
 1 AS `acctid`,
 1 AS `superseded`,
 1 AS `posted`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_vrs_bill`
--

DROP TABLE IF EXISTS `vw_vrs_bill`;
/*!50001 DROP VIEW IF EXISTS `vw_vrs_bill`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_vrs_bill` AS SELECT 
 1 AS `objid`,
 1 AS `txnid`,
 1 AS `billno`,
 1 AS `billdate`,
 1 AS `duedate`,
 1 AS `validitydate`,
 1 AS `state`,
 1 AS `remarks`,
 1 AS `balanceforward`,
 1 AS `totalpayment`,
 1 AS `interest`,
 1 AS `surcharge`,
 1 AS `amount`,
 1 AS `discount`,
 1 AS `txnmode`,
 1 AS `txntypeid`,
 1 AS `acctid`,
 1 AS `activeyear`,
 1 AS `task_state`,
 1 AS `acctno`,
 1 AS `ownername`,
 1 AS `vehicletypeid`,
 1 AS `txntype_processname`,
 1 AS `franchiseno`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_vrs_billitem`
--

DROP TABLE IF EXISTS `vw_vrs_billitem`;
/*!50001 DROP VIEW IF EXISTS `vw_vrs_billitem`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_vrs_billitem` AS SELECT 
 1 AS `objid`,
 1 AS `billid`,
 1 AS `itemid`,
 1 AS `amount`,
 1 AS `amtpaid`,
 1 AS `remarks`,
 1 AS `uid`,
 1 AS `auto`,
 1 AS `forwarded`,
 1 AS `billdate`,
 1 AS `supersededid`,
 1 AS `particulars`,
 1 AS `year`,
 1 AS `duedate`,
 1 AS `superseded`,
 1 AS `supersederid`,
 1 AS `discount`,
 1 AS `surcharge`,
 1 AS `interest`,
 1 AS `surchargepaid`,
 1 AS `interestpaid`,
 1 AS `sortorder`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_vrs_billitem_subitem`
--

DROP TABLE IF EXISTS `vw_vrs_billitem_subitem`;
/*!50001 DROP VIEW IF EXISTS `vw_vrs_billitem_subitem`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_vrs_billitem_subitem` AS SELECT 
 1 AS `objid`,
 1 AS `billid`,
 1 AS `itemid`,
 1 AS `amount`,
 1 AS `amtpaid`,
 1 AS `remarks`,
 1 AS `uid`,
 1 AS `auto`,
 1 AS `forwarded`,
 1 AS `billdate`,
 1 AS `supersededid`,
 1 AS `billitemrefid`,
 1 AS `balance`,
 1 AS `type`,
 1 AS `superseded`,
 1 AS `supersederid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_vrs_detail_info`
--

DROP TABLE IF EXISTS `vw_vrs_detail_info`;
/*!50001 DROP VIEW IF EXISTS `vw_vrs_detail_info`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_vrs_detail_info` AS SELECT 
 1 AS `objid`,
 1 AS `fieldid`,
 1 AS `stringvalue`,
 1 AS `decimalvalue`,
 1 AS `intvalue`,
 1 AS `datevalue`,
 1 AS `booleanvalue`,
 1 AS `lov_objid`,
 1 AS `lookup_objid`,
 1 AS `lookup_title`,
 1 AS `objvalue`,
 1 AS `txnid`,
 1 AS `supersededid`,
 1 AS `name`,
 1 AS `datatype`,
 1 AS `caption`,
 1 AS `superseded`,
 1 AS `posted`,
 1 AS `acctid`,
 1 AS `sortorder`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_vrs_doc`
--

DROP TABLE IF EXISTS `vw_vrs_doc`;
/*!50001 DROP VIEW IF EXISTS `vw_vrs_doc`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_vrs_doc` AS SELECT 
 1 AS `objid`,
 1 AS `txnid`,
 1 AS `dtcreated`,
 1 AS `createdby_objid`,
 1 AS `createdby_name`,
 1 AS `doctypeid`,
 1 AS `issuanceid`,
 1 AS `issueno`,
 1 AS `dtissued`,
 1 AS `issuer_objid`,
 1 AS `issuer_name`,
 1 AS `expirydate`,
 1 AS `txn_txntypeid`,
 1 AS `txn_txnmode`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_vrs_doctype`
--

DROP TABLE IF EXISTS `vw_vrs_doctype`;
/*!50001 DROP VIEW IF EXISTS `vw_vrs_doctype`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_vrs_doctype` AS SELECT 
 1 AS `objid`,
 1 AS `state`,
 1 AS `name`,
 1 AS `title`,
 1 AS `docclass`,
 1 AS `sortorder`,
 1 AS `templateid`,
 1 AS `controlnopattern`,
 1 AS `system`,
 1 AS `role`,
 1 AS `endorserid`,
 1 AS `approverid`,
 1 AS `reportid`,
 1 AS `supersededid`,
 1 AS `uid`,
 1 AS `vehicletypeid`,
 1 AS `version`,
 1 AS `issuetype`,
 1 AS `autoemail`,
 1 AS `superseded`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_vrs_franchise`
--

DROP TABLE IF EXISTS `vw_vrs_franchise`;
/*!50001 DROP VIEW IF EXISTS `vw_vrs_franchise`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_vrs_franchise` AS SELECT 
 1 AS `objid`,
 1 AS `state`,
 1 AS `vehicletypeid`,
 1 AS `franchiseno`,
 1 AS `dtissued`,
 1 AS `expirydate`,
 1 AS `doctypeid`,
 1 AS `supersededid`,
 1 AS `particulars`,
 1 AS `expired`,
 1 AS `superseded`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_vrs_header_info`
--

DROP TABLE IF EXISTS `vw_vrs_header_info`;
/*!50001 DROP VIEW IF EXISTS `vw_vrs_header_info`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_vrs_header_info` AS SELECT 
 1 AS `objid`,
 1 AS `owner_objid`,
 1 AS `owner_name`,
 1 AS `owner_address_text`,
 1 AS `owner_entitytype`,
 1 AS `owner_profileid`,
 1 AS `owner_profileno`,
 1 AS `owner_firstname`,
 1 AS `owner_lastname`,
 1 AS `owner_middlename`,
 1 AS `owner_resident`,
 1 AS `owner_address_objid`,
 1 AS `owner_address_unitno`,
 1 AS `owner_address_bldgno`,
 1 AS `owner_address_bldgname`,
 1 AS `owner_address_street`,
 1 AS `owner_address_subdivision`,
 1 AS `owner_address_barangay_objid`,
 1 AS `owner_address_barangay_name`,
 1 AS `owner_address_citymunicipality`,
 1 AS `owner_address_province`,
 1 AS `owner_tin`,
 1 AS `owner_email`,
 1 AS `owner_mobileno`,
 1 AS `owner_phoneno`,
 1 AS `owner_id_type_name`,
 1 AS `owner_id_idno`,
 1 AS `owner_id_placeissued`,
 1 AS `owner_id_dtissued`,
 1 AS `address_text`,
 1 AS `address_unitno`,
 1 AS `address_bldgno`,
 1 AS `address_bldgname`,
 1 AS `address_street`,
 1 AS `address_subdivision`,
 1 AS `address_barangay_objid`,
 1 AS `address_barangay_name`,
 1 AS `acctgroupid`,
 1 AS `contact_phoneno`,
 1 AS `contact_mobileno`,
 1 AS `contact_email`,
 1 AS `txnid`,
 1 AS `acctgroup_name`,
 1 AS `acctgroup_fullpath`,
 1 AS `acctgroup_description`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_vrs_superseded_detail_info`
--

DROP TABLE IF EXISTS `vw_vrs_superseded_detail_info`;
/*!50001 DROP VIEW IF EXISTS `vw_vrs_superseded_detail_info`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_vrs_superseded_detail_info` AS SELECT 
 1 AS `supersededid`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_vrs_txn`
--

DROP TABLE IF EXISTS `vw_vrs_txn`;
/*!50001 DROP VIEW IF EXISTS `vw_vrs_txn`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_vrs_txn` AS SELECT 
 1 AS `objid`,
 1 AS `appno`,
 1 AS `appdate`,
 1 AS `trackingno`,
 1 AS `state`,
 1 AS `txntypeid`,
 1 AS `txnmode`,
 1 AS `headerinfoid`,
 1 AS `acctyearid`,
 1 AS `txndate`,
 1 AS `dtposted`,
 1 AS `createdby_objid`,
 1 AS `createdby_name`,
 1 AS `dtcreated`,
 1 AS `billid`,
 1 AS `supersededid`,
 1 AS `taskid`,
 1 AS `txntype_name`,
 1 AS `txntype_title`,
 1 AS `txntype_processname`,
 1 AS `task_state`,
 1 AS `task_dtcreated`,
 1 AS `task_startdate`,
 1 AS `task_enddate`,
 1 AS `task_assignee_objid`,
 1 AS `task_assignee_name`,
 1 AS `task_actor_objid`,
 1 AS `task_actor_name`,
 1 AS `task_title`,
 1 AS `task_tracktime`,
 1 AS `task_properties`,
 1 AS `acctid`,
 1 AS `acctno`,
 1 AS `activeyear`,
 1 AS `lastyearrenewed`,
 1 AS `apptype`,
 1 AS `acctgroup_name`,
 1 AS `acctgroup_fullpath`,
 1 AS `acctgroup_description`,
 1 AS `owner_name`,
 1 AS `owner_address_text`,
 1 AS `vehicletypeid`,
 1 AS `vehicletype_objid`,
 1 AS `vehicletype_title`,
 1 AS `vehicletype_permitdoctypeid`,
 1 AS `vehicletype_franchisedoctypeid`,
 1 AS `permitid`,
 1 AS `franchiseid`,
 1 AS `permit_objid`,
 1 AS `permit_doctypeid`,
 1 AS `permit_issueno`,
 1 AS `permit_dtissued`,
 1 AS `permit_expirydate`,
 1 AS `permit_expired`,
 1 AS `franchise_objid`,
 1 AS `franchise_doctypeid`,
 1 AS `franchise_franchiseno`,
 1 AS `franchise_particulars`,
 1 AS `franchise_dtissued`,
 1 AS `franchise_expirydate`,
 1 AS `franchise_expired`,
 1 AS `contact_phoneno`,
 1 AS `contact_mobileno`,
 1 AS `contact_email`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vw_vrs_vehicletype_field`
--

DROP TABLE IF EXISTS `vw_vrs_vehicletype_field`;
/*!50001 DROP VIEW IF EXISTS `vw_vrs_vehicletype_field`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `vw_vrs_vehicletype_field` AS SELECT 
 1 AS `objid`,
 1 AS `vehicletypeid`,
 1 AS `name`,
 1 AS `caption`,
 1 AS `category`,
 1 AS `sortorder`,
 1 AS `required`,
 1 AS `textwidth`,
 1 AS `datatype`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_vrs_account`
--

/*!50001 DROP VIEW IF EXISTS `vw_vrs_account`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vrs_account` AS select `acct`.`objid` AS `objid`,`acct`.`headerinfoid` AS `headerinfoid`,`acct`.`acctno` AS `acctno`,`acct`.`acctyearid` AS `acctyearid`,`acct`.`vehicletypeid` AS `vehicletypeid`,`vt`.`objid` AS `vehicletype_objid`,`vt`.`title` AS `vehicletype_title`,`vt`.`permitdoctypeid` AS `vehicletype_permitdoctypeid`,`vt`.`franchisedoctypeid` AS `vehicletype_franchisedoctypeid`,`vt`.`maxallowedunits` AS `vehicletype_maxallowedunits`,`ay`.`activeyear` AS `activeyear`,`ay`.`lastyearrenewed` AS `lastyearrenewed`,`txn`.`txntypeid` AS `apptype`,`o`.`owner_name` AS `owner_name`,`o`.`owner_address_text` AS `owner_address_text`,`o`.`owner_objid` AS `owner_objid`,`o`.`contact_phoneno` AS `contact_phoneno`,`o`.`contact_mobileno` AS `contact_mobileno`,`o`.`contact_email` AS `contact_email`,`vp`.`objid` AS `permit_objid`,`vp`.`doctypeid` AS `permit_doctypeid`,`vp`.`issueno` AS `permit_issueno`,`vp`.`dtissued` AS `permit_dtissued`,`vp`.`expirydate` AS `permit_expirydate`,(case when (`vp`.`expirydate` < now()) then 1 else 0 end) AS `permit_expired`,`fp`.`objid` AS `franchise_objid`,`fp`.`doctypeid` AS `franchise_doctypeid`,`fp`.`state` AS `franchise_state`,`fp`.`franchiseno` AS `franchise_franchiseno`,`fp`.`dtissued` AS `franchise_dtissued`,`fp`.`expirydate` AS `franchise_expirydate`,(case when (`fp`.`expirydate` < now()) then 1 else 0 end) AS `franchise_expired`,`tsk`.`state` AS `task_state`,`ay`.`txnid` AS `txnid`,`grp`.`name` AS `acctgroup_name`,`grp`.`fullpath` AS `acctgroup_fullpath` from ((((((((`vrs_account` `acct` join `vrs_vehicletype` `vt` on((`acct`.`vehicletypeid` = `vt`.`objid`))) join `vrs_account_year` `ay` on((`acct`.`acctyearid` = `ay`.`objid`))) join `vrs_txn` `txn` on((`ay`.`txnid` = `txn`.`objid`))) join `vrs_header_info` `o` on((`acct`.`headerinfoid` = `o`.`objid`))) join `vrs_txn_task` `tsk` on((`txn`.`taskid` = `tsk`.`taskid`))) join `vrs_account_group` `grp` on((`o`.`acctgroupid` = `grp`.`objid`))) left join `vrs_doc_issuance` `vp` on((`ay`.`permitid` = `vp`.`objid`))) left join `vrs_franchise` `fp` on((`ay`.`franchiseid` = `fp`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vrs_account_case`
--

/*!50001 DROP VIEW IF EXISTS `vw_vrs_account_case`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vrs_account_case` AS select `ac`.`objid` AS `objid`,`ac`.`state` AS `state`,`ac`.`acctid` AS `acctid`,`ac`.`casetypeid` AS `casetypeid`,`ac`.`particulars` AS `particulars`,`ac`.`workgroupid` AS `workgroupid`,`ac`.`supersededid` AS `supersededid`,`ac`.`dtissued` AS `dtissued`,`ac`.`dtcreated` AS `dtcreated`,`ac`.`createdby_objid` AS `createdby_objid`,`ac`.`createdby_name` AS `createdby_name`,`ac`.`refid` AS `refid`,`ac`.`refno` AS `refno`,(case when isnull(`superseder`.`objid`) then 0 else 1 end) AS `superseded`,`prev`.`particulars` AS `prev_particulars`,`prev`.`objid` AS `prev_objid` from ((`vrs_account_case` `ac` left join `vrs_account_case` `superseder` on((`ac`.`objid` = `superseder`.`supersededid`))) left join `vrs_account_case` `prev` on((`prev`.`objid` = `ac`.`supersededid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vrs_account_detail_info`
--

/*!50001 DROP VIEW IF EXISTS `vw_vrs_account_detail_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vrs_account_detail_info` AS select `di`.`objid` AS `objid`,`di`.`fieldid` AS `fieldid`,`di`.`stringvalue` AS `stringvalue`,`di`.`decimalvalue` AS `decimalvalue`,`di`.`intvalue` AS `intvalue`,`di`.`datevalue` AS `datevalue`,`di`.`booleanvalue` AS `booleanvalue`,`di`.`lov_objid` AS `lov_objid`,`di`.`lookup_objid` AS `lookup_objid`,`di`.`lookup_title` AS `lookup_title`,`di`.`objvalue` AS `objvalue`,`di`.`txnid` AS `txnid`,`di`.`supersededid` AS `supersededid`,`vf`.`caption` AS `caption`,`vf`.`name` AS `name`,`vf`.`category` AS `category`,`vf`.`sortorder` AS `sortorder`,`vf`.`required` AS `required`,`vf`.`textwidth` AS `textwidth`,`vf`.`datatype` AS `datatype`,`ay`.`acctid` AS `acctid`,(case when isnull(`sup`.`supersededid`) then 0 else 1 end) AS `superseded`,1 AS `posted` from (((((`vrs_detail_info` `di` join `vw_vrs_vehicletype_field` `vf` on((`di`.`fieldid` = `vf`.`objid`))) join `vrs_txn` `txn` on((`di`.`txnid` = `txn`.`objid`))) join `vrs_account_year` `ay` on((`txn`.`acctyearid` = `ay`.`objid`))) join `vrs_account` `va` on((`ay`.`acctid` = `va`.`objid`))) left join `vw_vrs_superseded_detail_info` `sup` on((`sup`.`supersededid` = `di`.`objid`))) where isnull(`sup`.`supersededid`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vrs_bill`
--

/*!50001 DROP VIEW IF EXISTS `vw_vrs_bill`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vrs_bill` AS select `b`.`objid` AS `objid`,`b`.`txnid` AS `txnid`,`b`.`billno` AS `billno`,`b`.`billdate` AS `billdate`,`b`.`duedate` AS `duedate`,`b`.`validitydate` AS `validitydate`,`b`.`state` AS `state`,`b`.`remarks` AS `remarks`,`b`.`balanceforward` AS `balanceforward`,`b`.`totalpayment` AS `totalpayment`,`b`.`interest` AS `interest`,`b`.`surcharge` AS `surcharge`,`b`.`amount` AS `amount`,`b`.`discount` AS `discount`,`b`.`txnmode` AS `txnmode`,`vt`.`txntypeid` AS `txntypeid`,`ay`.`acctid` AS `acctid`,`ay`.`activeyear` AS `activeyear`,`tsk`.`state` AS `task_state`,`va`.`acctno` AS `acctno`,`o`.`owner_name` AS `ownername`,`va`.`vehicletypeid` AS `vehicletypeid`,`typ`.`processname` AS `txntype_processname`,`fa`.`franchiseno` AS `franchiseno` from (((((((`vrs_bill` `b` join `vrs_txn` `vt` on((`b`.`txnid` = `vt`.`objid`))) join `vrs_txntype` `typ` on((`vt`.`txntypeid` = `typ`.`objid`))) join `vrs_txn_task` `tsk` on((`vt`.`taskid` = `tsk`.`taskid`))) join `vrs_account_year` `ay` on((`vt`.`acctyearid` = `ay`.`objid`))) join `vrs_account` `va` on((`ay`.`acctid` = `va`.`objid`))) join `vrs_header_info` `o` on((`va`.`headerinfoid` = `o`.`objid`))) left join `vrs_franchise` `fa` on((`ay`.`franchiseid` = `fa`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vrs_billitem`
--

/*!50001 DROP VIEW IF EXISTS `vw_vrs_billitem`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vrs_billitem` AS select `mbi`.`objid` AS `objid`,`mbi`.`billid` AS `billid`,`mbi`.`itemid` AS `itemid`,`mbi`.`amount` AS `amount`,`mbi`.`amtpaid` AS `amtpaid`,`mbi`.`remarks` AS `remarks`,`mbi`.`uid` AS `uid`,`mbi`.`auto` AS `auto`,`mbi`.`forwarded` AS `forwarded`,`mbi`.`billdate` AS `billdate`,`mbi`.`supersededid` AS `supersededid`,(case when isnull(`mri`.`year`) then concat(`mai`.`title`,' ',`mri`.`year`,' ') else `mai`.`title` end) AS `particulars`,`mri`.`year` AS `year`,`mri`.`duedate` AS `duedate`,(case when isnull(`abi`.`objid`) then 0 else 1 end) AS `superseded`,`abi`.`supersededid` AS `supersederid`,ifnull((select `vrs_discountitem`.`amount` from `vrs_discountitem` where (`vrs_discountitem`.`billitemrefid` = `mbi`.`objid`)),0) AS `discount`,ifnull((select sum(`vw_vrs_billitem_subitem`.`amount`) from `vw_vrs_billitem_subitem` where ((`vw_vrs_billitem_subitem`.`billitemrefid` = `mbi`.`objid`) and (`vw_vrs_billitem_subitem`.`type` = 'SURCHARGE') and (`vw_vrs_billitem_subitem`.`superseded` = 0))),0) AS `surcharge`,ifnull((select sum((case when (`vw_vrs_billitem_subitem`.`superseded` = 0) then `vw_vrs_billitem_subitem`.`amount` else `vw_vrs_billitem_subitem`.`amtpaid` end)) from `vw_vrs_billitem_subitem` where ((`vw_vrs_billitem_subitem`.`billitemrefid` = `mbi`.`objid`) and (`vw_vrs_billitem_subitem`.`type` = 'INTEREST'))),0) AS `interest`,ifnull((select sum(`vw_vrs_billitem_subitem`.`amtpaid`) from `vw_vrs_billitem_subitem` where ((`vw_vrs_billitem_subitem`.`billitemrefid` = `mbi`.`objid`) and (`vw_vrs_billitem_subitem`.`type` = 'SURCHARGE'))),0) AS `surchargepaid`,ifnull((select sum(`vw_vrs_billitem_subitem`.`amtpaid`) from `vw_vrs_billitem_subitem` where ((`vw_vrs_billitem_subitem`.`billitemrefid` = `mbi`.`objid`) and (`vw_vrs_billitem_subitem`.`type` = 'INTEREST'))),0) AS `interestpaid`,`mai`.`sortorder` AS `sortorder` from (((`vrs_abstract_billitem` `mbi` join `vrs_billitem` `mri` on((`mri`.`objid` = `mbi`.`objid`))) join `vrs_itemaccount` `mai` on((`mbi`.`itemid` = `mai`.`objid`))) left join `vrs_abstract_billitem` `abi` on((`mbi`.`objid` = `abi`.`supersededid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vrs_billitem_subitem`
--

/*!50001 DROP VIEW IF EXISTS `vw_vrs_billitem_subitem`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vrs_billitem_subitem` AS select `abi`.`objid` AS `objid`,`abi`.`billid` AS `billid`,`abi`.`itemid` AS `itemid`,`abi`.`amount` AS `amount`,`abi`.`amtpaid` AS `amtpaid`,`abi`.`remarks` AS `remarks`,`abi`.`uid` AS `uid`,`abi`.`auto` AS `auto`,`abi`.`forwarded` AS `forwarded`,`abi`.`billdate` AS `billdate`,`abi`.`supersededid` AS `supersededid`,`pbi`.`billitemrefid` AS `billitemrefid`,(`abi`.`amount` - `abi`.`amtpaid`) AS `balance`,`pbi`.`type` AS `type`,(case when isnull(`xbi`.`objid`) then 0 else 1 end) AS `superseded`,`xbi`.`supersededid` AS `supersederid` from ((`vrs_abstract_billitem` `abi` join `vrs_billitem_subitem` `pbi` on((`pbi`.`objid` = `abi`.`objid`))) left join `vrs_abstract_billitem` `xbi` on((`abi`.`objid` = `xbi`.`supersededid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vrs_detail_info`
--

/*!50001 DROP VIEW IF EXISTS `vw_vrs_detail_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vrs_detail_info` AS select `info`.`objid` AS `objid`,`info`.`fieldid` AS `fieldid`,`info`.`stringvalue` AS `stringvalue`,`info`.`decimalvalue` AS `decimalvalue`,`info`.`intvalue` AS `intvalue`,`info`.`datevalue` AS `datevalue`,`info`.`booleanvalue` AS `booleanvalue`,`info`.`lov_objid` AS `lov_objid`,`info`.`lookup_objid` AS `lookup_objid`,`info`.`lookup_title` AS `lookup_title`,`info`.`objvalue` AS `objvalue`,`info`.`txnid` AS `txnid`,`info`.`supersededid` AS `supersededid`,`vf`.`name` AS `name`,`var`.`datatype` AS `datatype`,`var`.`caption` AS `caption`,(case when isnull(`superseder`.`objid`) then 0 else 1 end) AS `superseded`,(case when (`tsk`.`state` = 'end') then 1 else 0 end) AS `posted`,`ay`.`acctid` AS `acctid`,`vf`.`sortorder` AS `sortorder` from ((((((`vrs_detail_info` `info` join `vrs_vehicletype_field` `vf` on((`info`.`fieldid` = `vf`.`objid`))) join `vrs_variable` `var` on((`vf`.`name` = `var`.`objid`))) join `vrs_txn` `txn` on((`info`.`txnid` = `txn`.`objid`))) join `vrs_txn_task` `tsk` on((`txn`.`taskid` = `tsk`.`taskid`))) join `vrs_account_year` `ay` on((`txn`.`acctyearid` = `ay`.`objid`))) left join `vrs_detail_info` `superseder` on((`info`.`objid` = `superseder`.`supersededid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vrs_doc`
--

/*!50001 DROP VIEW IF EXISTS `vw_vrs_doc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vrs_doc` AS select `doc`.`objid` AS `objid`,`doc`.`txnid` AS `txnid`,`doc`.`dtcreated` AS `dtcreated`,`doc`.`createdby_objid` AS `createdby_objid`,`doc`.`createdby_name` AS `createdby_name`,`doc`.`doctypeid` AS `doctypeid`,`doc`.`issuanceid` AS `issuanceid`,`iss`.`issueno` AS `issueno`,`iss`.`dtissued` AS `dtissued`,`iss`.`issuer_objid` AS `issuer_objid`,`iss`.`issuer_name` AS `issuer_name`,`iss`.`expirydate` AS `expirydate`,`txn`.`txntypeid` AS `txn_txntypeid`,`txn`.`txnmode` AS `txn_txnmode` from ((`vrs_doc` `doc` left join `vrs_doc_issuance` `iss` on((`doc`.`issuanceid` = `iss`.`objid`))) join `vrs_txn` `txn` on((`doc`.`txnid` = `txn`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vrs_doctype`
--

/*!50001 DROP VIEW IF EXISTS `vw_vrs_doctype`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vrs_doctype` AS select `dt`.`objid` AS `objid`,`dt`.`state` AS `state`,`dt`.`name` AS `name`,`dt`.`title` AS `title`,`dt`.`docclass` AS `docclass`,`dt`.`sortorder` AS `sortorder`,`dt`.`templateid` AS `templateid`,`dt`.`controlnopattern` AS `controlnopattern`,`dt`.`system` AS `system`,`dt`.`role` AS `role`,`dt`.`endorserid` AS `endorserid`,`dt`.`approverid` AS `approverid`,`dt`.`reportid` AS `reportid`,`dt`.`supersededid` AS `supersededid`,`dt`.`uid` AS `uid`,`dt`.`vehicletypeid` AS `vehicletypeid`,`dt`.`version` AS `version`,`dt`.`issuetype` AS `issuetype`,`dt`.`autoemail` AS `autoemail`,(case when isnull(`dt2`.`objid`) then 0 else 1 end) AS `superseded` from (`vrs_doctype` `dt` left join `vrs_doctype` `dt2` on((`dt2`.`supersededid` = `dt`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vrs_franchise`
--

/*!50001 DROP VIEW IF EXISTS `vw_vrs_franchise`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vrs_franchise` AS select `fran`.`objid` AS `objid`,`fran`.`state` AS `state`,`fran`.`vehicletypeid` AS `vehicletypeid`,`fran`.`franchiseno` AS `franchiseno`,`fran`.`dtissued` AS `dtissued`,`fran`.`expirydate` AS `expirydate`,`fran`.`doctypeid` AS `doctypeid`,`fran`.`supersededid` AS `supersededid`,`fran`.`particulars` AS `particulars`,(case when (`fran`.`expirydate` < now()) then 1 else 0 end) AS `expired`,(case when isnull(`sp`.`objid`) then 0 else 1 end) AS `superseded` from (`vrs_franchise` `fran` left join `vrs_franchise` `sp` on((`sp`.`supersededid` = `fran`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vrs_header_info`
--

/*!50001 DROP VIEW IF EXISTS `vw_vrs_header_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vrs_header_info` AS select `hi`.`objid` AS `objid`,`hi`.`owner_objid` AS `owner_objid`,`hi`.`owner_name` AS `owner_name`,`hi`.`owner_address_text` AS `owner_address_text`,`hi`.`owner_entitytype` AS `owner_entitytype`,`hi`.`owner_profileid` AS `owner_profileid`,`hi`.`owner_profileno` AS `owner_profileno`,`hi`.`owner_firstname` AS `owner_firstname`,`hi`.`owner_lastname` AS `owner_lastname`,`hi`.`owner_middlename` AS `owner_middlename`,`hi`.`owner_resident` AS `owner_resident`,`hi`.`owner_address_objid` AS `owner_address_objid`,`hi`.`owner_address_unitno` AS `owner_address_unitno`,`hi`.`owner_address_bldgno` AS `owner_address_bldgno`,`hi`.`owner_address_bldgname` AS `owner_address_bldgname`,`hi`.`owner_address_street` AS `owner_address_street`,`hi`.`owner_address_subdivision` AS `owner_address_subdivision`,`hi`.`owner_address_barangay_objid` AS `owner_address_barangay_objid`,`hi`.`owner_address_barangay_name` AS `owner_address_barangay_name`,`hi`.`owner_address_citymunicipality` AS `owner_address_citymunicipality`,`hi`.`owner_address_province` AS `owner_address_province`,`hi`.`owner_tin` AS `owner_tin`,`hi`.`owner_email` AS `owner_email`,`hi`.`owner_mobileno` AS `owner_mobileno`,`hi`.`owner_phoneno` AS `owner_phoneno`,`hi`.`owner_id_type_name` AS `owner_id_type_name`,`hi`.`owner_id_idno` AS `owner_id_idno`,`hi`.`owner_id_placeissued` AS `owner_id_placeissued`,`hi`.`owner_id_dtissued` AS `owner_id_dtissued`,`hi`.`address_text` AS `address_text`,`hi`.`address_unitno` AS `address_unitno`,`hi`.`address_bldgno` AS `address_bldgno`,`hi`.`address_bldgname` AS `address_bldgname`,`hi`.`address_street` AS `address_street`,`hi`.`address_subdivision` AS `address_subdivision`,`hi`.`address_barangay_objid` AS `address_barangay_objid`,`hi`.`address_barangay_name` AS `address_barangay_name`,`hi`.`acctgroupid` AS `acctgroupid`,`hi`.`contact_phoneno` AS `contact_phoneno`,`hi`.`contact_mobileno` AS `contact_mobileno`,`hi`.`contact_email` AS `contact_email`,`hi`.`txnid` AS `txnid`,`grp`.`name` AS `acctgroup_name`,`grp`.`fullpath` AS `acctgroup_fullpath`,`grp`.`description` AS `acctgroup_description` from (`vrs_header_info` `hi` join `vrs_account_group` `grp` on((`hi`.`acctgroupid` = `grp`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vrs_superseded_detail_info`
--

/*!50001 DROP VIEW IF EXISTS `vw_vrs_superseded_detail_info`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vrs_superseded_detail_info` AS select `di`.`supersededid` AS `supersededid` from ((`vrs_detail_info` `di` join `vrs_txn` `txn` on((`di`.`txnid` = `txn`.`objid`))) join `vrs_txn_task` `tsk` on((`tsk`.`taskid` = `txn`.`taskid`))) where (`tsk`.`state` = 'end') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vrs_txn`
--

/*!50001 DROP VIEW IF EXISTS `vw_vrs_txn`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vrs_txn` AS select `txn`.`objid` AS `objid`,`txn`.`appno` AS `appno`,`txn`.`appdate` AS `appdate`,`txn`.`trackingno` AS `trackingno`,`txn`.`state` AS `state`,`txn`.`txntypeid` AS `txntypeid`,`txn`.`txnmode` AS `txnmode`,`txn`.`headerinfoid` AS `headerinfoid`,`txn`.`acctyearid` AS `acctyearid`,`txn`.`txndate` AS `txndate`,`txn`.`dtposted` AS `dtposted`,`txn`.`createdby_objid` AS `createdby_objid`,`txn`.`createdby_name` AS `createdby_name`,`txn`.`dtcreated` AS `dtcreated`,`txn`.`billid` AS `billid`,`txn`.`supersededid` AS `supersededid`,`txn`.`taskid` AS `taskid`,`typ`.`name` AS `txntype_name`,`typ`.`title` AS `txntype_title`,`typ`.`processname` AS `txntype_processname`,`t`.`state` AS `task_state`,`t`.`dtcreated` AS `task_dtcreated`,`t`.`startdate` AS `task_startdate`,`t`.`enddate` AS `task_enddate`,`t`.`assignee_objid` AS `task_assignee_objid`,`t`.`assignee_name` AS `task_assignee_name`,`t`.`actor_objid` AS `task_actor_objid`,`t`.`actor_name` AS `task_actor_name`,`sn`.`title` AS `task_title`,`sn`.`tracktime` AS `task_tracktime`,`sn`.`properties` AS `task_properties`,`ay`.`acctid` AS `acctid`,`acct`.`acctno` AS `acctno`,`ay`.`activeyear` AS `activeyear`,`ay`.`lastyearrenewed` AS `lastyearrenewed`,`accttxn`.`txntypeid` AS `apptype`,`grp`.`name` AS `acctgroup_name`,`grp`.`fullpath` AS `acctgroup_fullpath`,`grp`.`description` AS `acctgroup_description`,`o`.`owner_name` AS `owner_name`,`o`.`owner_address_text` AS `owner_address_text`,`v`.`objid` AS `vehicletypeid`,`v`.`objid` AS `vehicletype_objid`,`v`.`title` AS `vehicletype_title`,`v`.`permitdoctypeid` AS `vehicletype_permitdoctypeid`,`v`.`franchisedoctypeid` AS `vehicletype_franchisedoctypeid`,`ay`.`permitid` AS `permitid`,`ay`.`franchiseid` AS `franchiseid`,`vp`.`objid` AS `permit_objid`,`vp`.`doctypeid` AS `permit_doctypeid`,`vp`.`issueno` AS `permit_issueno`,`vp`.`dtissued` AS `permit_dtissued`,`vp`.`expirydate` AS `permit_expirydate`,(case when (`vp`.`expirydate` < now()) then 1 else 0 end) AS `permit_expired`,`fp`.`objid` AS `franchise_objid`,`fp`.`doctypeid` AS `franchise_doctypeid`,`fp`.`franchiseno` AS `franchise_franchiseno`,`fp`.`particulars` AS `franchise_particulars`,`fp`.`dtissued` AS `franchise_dtissued`,`fp`.`expirydate` AS `franchise_expirydate`,(case when (`fp`.`expirydate` < now()) then 1 else 0 end) AS `franchise_expired`,`o`.`contact_phoneno` AS `contact_phoneno`,`o`.`contact_mobileno` AS `contact_mobileno`,`o`.`contact_email` AS `contact_email` from (((((((((((`vrs_txn` `txn` join `vrs_account_year` `ay` on((`txn`.`acctyearid` = `ay`.`objid`))) join `vrs_txn` `accttxn` on((`ay`.`txnid` = `accttxn`.`objid`))) join `vrs_header_info` `o` on((`txn`.`headerinfoid` = `o`.`objid`))) join `vrs_account` `acct` on((`ay`.`acctid` = `acct`.`objid`))) join `vrs_account_group` `grp` on((`o`.`acctgroupid` = `grp`.`objid`))) join `vrs_txntype` `typ` on((`txn`.`txntypeid` = `typ`.`objid`))) join `vrs_vehicletype` `v` on((`acct`.`vehicletypeid` = `v`.`objid`))) join `vrs_txn_task` `t` on((`txn`.`taskid` = `t`.`taskid`))) join `sys_wf_node` `sn` on(((`sn`.`processname` = `typ`.`processname`) and (`sn`.`name` = `t`.`state`)))) left join `vrs_doc_issuance` `vp` on((`ay`.`permitid` = `vp`.`objid`))) left join `vrs_franchise` `fp` on((`ay`.`franchiseid` = `fp`.`objid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_vrs_vehicletype_field`
--

/*!50001 DROP VIEW IF EXISTS `vw_vrs_vehicletype_field`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_vrs_vehicletype_field` AS select `vf`.`objid` AS `objid`,`vf`.`vehicletypeid` AS `vehicletypeid`,`vf`.`name` AS `name`,`vf`.`caption` AS `caption`,`vf`.`category` AS `category`,`vf`.`sortorder` AS `sortorder`,`vf`.`required` AS `required`,`vf`.`textwidth` AS `textwidth`,`v`.`datatype` AS `datatype` from (`vrs_vehicletype_field` `vf` join `vrs_variable` `v` on((`vf`.`name` = `v`.`objid`))) order by `vf`.`sortorder` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-07-14 15:07:58


-- 
-- Additional Patches
-- 
INSERT INTO `sys_rule_actiondef_param` (`objid`, `parentid`, `name`, `sortorder`, `title`, `datatype`, `handler`, `lookuphandler`, `lookupkey`, `lookupvalue`, `vardatatype`, `lovname`) 
VALUES ('treasury.actions.AddCashReceiptItem.billitem', 'treasury.actions.AddCashReceiptItem', 'billitem', 0, 'Bill Item', NULL, 'var', NULL, NULL, NULL, 'treasury.facts.AbstractBillItem', NULL);

INSERT INTO `sys_rule_actiondef_param` (`objid`, `parentid`, `name`, `sortorder`, `title`, `datatype`, `handler`, `lookuphandler`, `lookupkey`, `lookupvalue`, `vardatatype`, `lovname`) 
VALUES ('treasury.actions.AddCashReceiptItem.billcode', 'treasury.actions.AddCashReceiptItem', 'billcode', 8, 'Bill Code', NULL, 'lookup', 'itemaccount:lookup', 'objid', 'title', 'string', NULL);
