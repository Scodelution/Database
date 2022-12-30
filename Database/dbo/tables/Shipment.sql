CREATE TABLE [dbo].[Shipment]
(
	[ID] INT NOT NULL PRIMARY KEY,
	[ShipmentType] VARCHAR(50) NOT NULL,
	[Carrier] VARCHAR(50) NOT NULL,
	[Volume] NUMERIC NOT NULL,
	[Weight] NUMERIC NOT NULL,
	[FreightID] INT NOT NULL,
	[RealCosts] NUMERIC NOT NULL,
	[CalculatedCosts] NUMERIC NOT NULL,
	[DeliveryDate] DATE NOT NULL,
	[EmployeeEditor] INT NOT NULL,
	
    CONSTRAINT [FK_Shipment_Freight] FOREIGN KEY ([FreightID]) REFERENCES [Freight]([ID]), 
    CONSTRAINT [FK_Shipment_ResponsibleEmployee] FOREIGN KEY ([EmployeeEditor]) REFERENCES [Employee]([ID]),
)
