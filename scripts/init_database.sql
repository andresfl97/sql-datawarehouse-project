/*
Creacion de base de datos y esquemas

Se crea una DWH, despues se revisa si existe.
Adicionalmente se crean esquemas bronze, silver, gold. 

WARNING: 
	EJECUTAR ESTO BORRA TODA LA DWH


*/

USE master;

IF EXISTS (SELECT  1 FROM sys.databases WHERE name = 'DataWarehouse')

BEGIN 
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE; 
	DROP DATABASE DataWarehouse;
END; 
GO


-- 

CREATE DATABASE DataWarehouse;
-- Creacion dde base de datos 


USE DataWarehouse;



CREATE SCHEMA bronze; 
GO

CREATE SCHEMA silver; 
GO

CREATE SCHEMA gold; 
GO

