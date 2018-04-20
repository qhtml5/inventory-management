CREATE TABLE [Location] (
  [LocationId] SMALLINT,
  [City] NVARCHAR(100),
  [State] CHAR(2),
  PRIMARY KEY ([LocationId])
);

CREATE TABLE [Employee] (
  [EmpID] INT,
  [FName] NVARCHAR(100),
  [LName] NVARCHAR(100),
  PRIMARY KEY ([EmpID])
);

CREATE TABLE [Product] (
  [ProductID] INT,
  [Description] NVARCHAR(100),
  [Size] NVARCHAR(100),
  [VendorID] INT,
  [UnitOfMeasureId] VARCHAR(2),
  PRIMARY KEY ([ProductID])
);

CREATE INDEX [FK] ON  [Product] ([VendorID], [UnitOfMeasureId]);

CREATE TABLE [UnitOfMeasure] (
  [id] VARCHAR(2),
  [Description] NVARCHAR(100),
  PRIMARY KEY ([id])
);

CREATE TABLE [Vendor] (
  [VendorID] INT,
  [Name] NVARCHAR(100),
  PRIMARY KEY ([VendorID])
);

CREATE TABLE [Inventory] (
  [id] INT,
  [QtyOnHand] SMALLINT,
  [CountDate] DATE,
  [ProductID] INT,
  [EmployeeID] INT,
  [LocationID] SMALLINT,
  PRIMARY KEY ([id])
);

CREATE INDEX [FK] ON  [Inventory] ([ProductID], [EmployeeID], [LocationID]);
