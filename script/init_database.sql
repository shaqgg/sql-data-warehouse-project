--WARNING(RUNNING THIS SCRIPT WILL DROP THE DATABASE 'DataWarehouse'. Please be wary of this)


USE master;
GO
IF EXISTS SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN 
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO

--CREATE DataWarehouse Database;
CREATE DATABASE DataWarehouse;
GO
USE DataWarehouse;

--CREATE SCHEMAS

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO


