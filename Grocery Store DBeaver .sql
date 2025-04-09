CREATE TABLE Sales (
	Sales_Id CHAR(10) PRIMARY KEY,
	Client_Id CHAR(10) NOT NULL,
	Quantity BIGINT,
	Total BIGINT,
	Pmt_Type CHAR(3),
	Emp_Id CHAR(10),
	Sales_Date DATE,
	FOREIGN KEY(Client_Id) REFERENCES Clients(Client_Id),
	FOREIGN KEY(Emp_Id) REFERENCES Employees(Emp_Id)
);

CREATE TABLE Clients (
	Client_Id CHAR(10) PRIMARY KEY,
	Client_Name VARCHAR(30) NOT NULL,
	Client_Contact_Num NUMERIC,
	Client_Email VARCHAR(50),
	Client_Address VARCHAR(50)
);

CREATE TABLE Employees (
	Emp_Id CHAR(10) PRIMARY KEY,
	Emp_Name VARCHAR(30) NOT NULL,
	Emp_Contact_Num NUMERIC,
	Emp_Email VARCHAR(50),
	Emp_Address VARCHAR(50),
	DOB DATE,
	Hrs_Per_week NUMERIC
);

CREATE TABLE Vendors (
	Vendor_Id CHAR(10) PRIMARY KEY,
	Vendor_Name VARCHAR(30) NOT NULL,
	Vendor_Contact_Num NUMERIC,
	Vendor_Email VARCHAR(30)
);

--This joins the Products and Vendors tables as many to many relationship
CREATE TABLE Prod_Vend (
	pv_id CHAR(10) PRIMARY KEY,
	Prod_Id CHAR(10),
	Vendor_Id CHAR(10),
	FOREIGN KEY(Vendor_Id) REFERENCES Vendors(Vendor_Id)
);

CREATE TABLE Products (
	Prod_Id CHAR(10) PRIMARY KEY,
	Prod_Name VARCHAR(30) NOT NULL,
	Description VARCHAR(200),
	Price BIGINT,
	Quantity BIGINT
);

--This joins the Products and Sales tables as many to many relationship
CREATE TABLE Prod_Sales (
	ps_id CHAR(10) PRIMARY KEY,
	Prod_Id CHAR(10),
	Sales_Id CHAR(10),
	FOREIGN KEY(Sales_Id) REFERENCES Vendors(Sales_Id)
);

-- Tables to insert data
INSERT INTO Sales (Sales_Id, Client_Id, Total, Pmt_type, Quantity, Emp_Id, Sales_Date)
VALUES
('S001', 'C001', 120.50, 'CC', 3, 'E101', '2024-03-01'),
('S002', 'C002', 89.99, 'Cs', 2, 'E102', '2024-03-02'),
('S003', 'C003', 150.00, 'BT', 5, 'E103', '2024-03-03'),
('S004', 'C001', 75.25, 'Cs', 1, 'E101', '2024-03-04'),
('S005', 'C004', 210.10, 'CC', 4, 'E104', '2024-03-05'),
('S006', 'C005', 60.00, 'Cs', 2, 'E105', '2024-03-06'),
('S007', 'C002', 95.75, 'CC', 3, 'E102', '2024-03-07'),
('S008', 'C003', 180.00, 'BT', 6, 'E103', '2024-03-08'),
('S009', 'C004', 110.30, 'CC', 2, 'E104', '2024-03-09'),
('S010', 'C005', 99.99, 'Cs', 3, 'E105', '2024-03-10');

INSERT INTO Clients (Client_Id, Client_Name, Client_Contact_Num, Client_Email, Client_Address)
VALUES
('C001', 'Alice Smith', 491511223344, 'alice.smith@email.com', '123 Main St, Berlin'),
('C002', 'Bob Johnson', 491512334455, 'bob.johnson@email.com', '456 Elm St, Munich'),
('C003', 'Charlie Lee', 491513445566, 'charlie.lee@email.com', '789 Oak Ave, Hamburg'),
('C004', 'Diana Miller', 491514556677, 'diana.miller@email.com', '321 Pine Rd, Cologne'),
('C005', 'Evan Davis', 491515667788, 'evan.davis@email.com', '654 Maple Ln, Frankfurt');

INSERT INTO Employees (Emp_Id, Emp_Name, Emp_Contact_Num, Emp_Email, Emp_Address, DOB, Hrs_Per_week)
VALUES
('E001', 'John Becker', 491611112222, 'john.becker@email.com', '12 River Rd, Berlin', '1990-05-15', 40),
('E002', 'Sophie Krause', 491622223333, 'sophie.krause@email.com', '88 Lake St, Munich', '1988-07-22', 38),
('E003', 'Liam Schwarz', 491633334444, 'liam.schwarz@email.com', '34 Hill Ave, Hamburg', '1992-03-10', 40),
('E004', 'Mia Vogel', 491644445555, 'mia.vogel@email.com', '56 Valley Rd, Cologne', '1995-11-05', 35),
('E005', 'Noah Weber', 491655556666, 'noah.weber@email.com', '90 Forest Ln, Frankfurt', '1985-12-18', 42);

INSERT INTO Vendors (Vendor_Id, Vendor_Name, Vendor_Contact_Num, Vendor_Email)
VALUES
('V001', 'Tech Supplies Co.', 491701112233, 'info@techsupplies.com'),
('V002', 'Office Essentials', 491702223344, 'sales@officeessentials.com'),
('V003', 'Smart Hardware Ltd.', 491703334455, 'support@smarthardware.com'),
('V004', 'Green Paper Goods', 491704445566, 'orders@greenpaper.com'),
('V005', 'Print Perfect', 491705556677, 'contact@printperfect.com'),
('V006', 'Secure IT GmbH', 491706667788, 'service@secureitgmbh.de'),
('V007', 'Coffee & More', 491707778899, 'hello@coffeeandmore.com'),
('V008', 'CleanPro Services', 491708889900, 'info@cleanpro.de'),
('V009', 'Pro Furniture AG', 491709990011, 'furniture@proag.com'),
('V010', 'Stationery Hub', 491710101112, 'help@stationeryhub.com');

INSERT INTO Products (Prod_Id, Prod_Name, Description, Price, Quantity)
VALUES
('P001', 'Wireless Mouse', 'Ergonomic wireless mouse with USB receiver', 2500, 120),
('P002', 'Mechanical Keyboard', 'Backlit mechanical keyboard with blue switches', 7500, 80),
('P003', 'USB-C Hub', '7-in-1 USB-C hub with HDMI, USB 3.0, and SD card reader', 4500, 150),
('P004', 'Laptop Stand', 'Adjustable aluminum laptop stand', 3000, 60),
('P005', 'Office Chair', 'Mesh back ergonomic office chair with wheels', 15000, 30),
('P006', 'Notebook A4', 'Pack of 3 ruled A4 notebooks', 1200, 200),
('P007', 'Ballpoint Pens', 'Box of 50 black ink pens', 900, 300),
('P008', 'Printer Ink', 'Compatible black ink cartridge for HP printers', 2200, 90),
('P009', 'Monitor 24"', '24-inch full HD LED monitor', 12000, 45),
('P010', 'Desk Organizer', 'Multi-compartment wooden desk organizer', 1800, 110);


INSERT INTO Prod_Vend (pv_id, Prod_Id, Vendor_Id)
VALUES
('PV001', 'P001', 'V001'), -- Wireless Mouse from Tech Supplies Co.
('PV002', 'P002', 'V002'), -- Mechanical Keyboard from Office Essentials
('PV003', 'P003', 'V003'), -- USB-C Hub from Smart Hardware Ltd.
('PV004', 'P004', 'V004'), -- Laptop Stand from Green Paper Goods
('PV005', 'P005', 'V005'), -- Office Chair from Print Perfect
('PV006', 'P006', 'V006'), -- Notebook A4 from Secure IT GmbH
('PV007', 'P007', 'V007'), -- Ballpoint Pens from Coffee & More
('PV008', 'P008', 'V008'), -- Printer Ink from CleanPro Services
('PV009', 'P009', 'V009'), -- Monitor 24" from Pro Furniture AG
('PV010', 'P010', 'V010'); -- Desk Organizer from Stationery Hub

INSERT INTO Prod_Sales (ps_id, Prod_Id, Sales_Id)
VALUES
('PS001', 'P001', 'S001'), -- Wireless Mouse sold in Sale 1
('PS002', 'P002', 'S002'), -- Mechanical Keyboard sold in Sale 2
('PS003', 'P003', 'S003'), -- USB-C Hub sold in Sale 3
('PS004', 'P004', 'S004'), -- Laptop Stand sold in Sale 4
('PS005', 'P005', 'S005'), -- Office Chair sold in Sale 5
('PS006', 'P006', 'S006'), -- Notebook A4 sold in Sale 6
('PS007', 'P007', 'S007'), -- Ballpoint Pens sold in Sale 7
('PS008', 'P008', 'S008'), -- Printer Ink sold in Sale 8
('PS009', 'P009', 'S009'), -- Monitor 24" sold in Sale 9
('PS010', 'P010', 'S010'); -- Desk Organizer sold in Sale 10

DROP TABLE Prod_Sales 

SELECT *
FROM Clients cl
LEFT JOIN Sales sa ON sa.Client_Id  = cl.Client_Id;

SELECT p.Prod_Id, p.Prod_Name, s.Sales_Id, s.Total, s.Client_Id
FROM Products p 
LEFT JOIN Prod_Sales ps ON p.Prod_Id = ps.Prod_Id
LEFT JOIN Sales s ON ps.Sales_Id = s.Sales_Id





