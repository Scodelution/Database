CREATE TABLE [dbo].[Assignments]

(
	[AssignmentID] INT NOT NULL PRIMARY KEY IDENTITY,
	[ShipperID] INT NOT NULL,
	[ReceiverID] INT NOT NULL,
	[ShippingID] INT NOT NULL,
	[TotalCosts] NUMERIC NOT NULL, 
    CONSTRAINT [FK_Assignments_Shipment] FOREIGN KEY ([ShippingID]) REFERENCES [Shipment]([ID]),
	CONSTRAINT [FK_Assignments_Shipper] FOREIGN KEY ([ShipperID]) REFERENCES [ContractPartner]([ID]), 
    CONSTRAINT [FK_Assignments_Receiver] FOREIGN KEY ([ReceiverID]) REFERENCES [ContractPartner]([ID]),
)

