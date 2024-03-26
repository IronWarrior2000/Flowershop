--FlowerShop DATABASE FINAL VERSION | CREATED BY BILL NGUYEN, VLADMIR EUGENE, DYMAIR BROOKS-FURLOW | 12/4/22 | FALL 2022

--Creating the Database for FLowerShop
DROP DATABASE IF EXISTS FlowerShop;
CREATE DATABASE IF NOT EXISTS FlowerShop;
USE FlowerShop;

---------------------------------------------------------------------------------------------------------------------------


--Creating the Vendors Table 
--Created by Vladmir 
CREATE TABLE Vendors (
  name VARCHAR(25) NOT NULL,
  phone  VARCHAR(25) NOT NULL,
  email VARCHAR(35) NOT NULL,
  Address VARCHAR(50) NOT NULL,
  vendertype VARCHAR(25) NOT NULL,
  vendorID VARCHAR (10) NOT NULL,
  CONSTRAINT Vendors_PK PRIMARY KEY (vendorID)
);

-- Creating Insert Values for the Vendors table:
INSERT INTO Vendors (name, phone, email, Address, vendertype, vendorID )
VALUES
  ( 'Mango Flower', '2064677885', 'Mango@gmail.com', '1 E-RenTian-Lu, Shanzhen, 100085, China', 'manufacturer', 'Vend01'), 
  ( 'Sunny Flower', '2064857656', 'Sunny@yahoo.com', '215 Renmen-Lu, Shanzhen, 100085, China', 'distributor', 'Vend02'),
  ( 'Apple Flower', '2065557989', 'Apple@yahoo.com', '888 Zengzu-Lu, Shanzhen, 100085, China', 'retailer', 'Vend03'),
  ( 'Miller Flower','2065553918','miller@hotmail.com','95 Kangxia-Lu, Shanzhen, 100085, China', 'distributor','Vend04'),
  ( 'Flower', '2065559982', 'Flower@excite.com', '1124 Yanfu-Lu, Shanzhen, 100085, China', 'distributor', 'Vend05'),
  ( 'Aston Flower','2065554287','Aston@msn.com','46 Baobo-Lu, Shanzhen, 100085, China', 'retailer','Vend06'),
  ( 'Ursula Flower', '2065554444', 'Ursula@msn.com', '112 Renmen-Lu, Shanzhen, 100085, China', 'manufacturer', 'Vend07'),
  ( 'Michelle Flower', '2065553901', 'Michelle@msn.com', '1 Tozai-Jie, Shanzhen, 100085, China', 'manufacturer', 'Vend08'),
  ( 'Michael Flower', '2065553548', 'Michael@msn.com', 'Tozai-Lu, Shanzhen, 100085, China', 'retailer', 'Vend09');
  
  
---------------------------------------------------------------------------------------------------------------------------


--Creating the Staff Table
--Created By Vladmir 
CREATE TABLE Staff (
  name VARCHAR(25) NOT NULL,
  email  VARCHAR(35) NOT NULL,
  phone VARCHAR(25) NOT NULL,
  EmpID VARCHAR (10) NOT NULL,
  CONSTRAINT Staff_PK PRIMARY KEY (EmpID)
);

-- Create Values for the Staff table:
INSERT INTO Staff (name, email, phone, EmpID)
VALUES 
  ( 'John', 'JAddams@gmail.com', '(206) 555-2535', 'Emp01'),
  ( 'Nicky', 'NTills@gmail.com', '(206) 893-3831', 'Emp02'),
  ( 'Maria', 'MWrigth@gmail.com', '(323) 555-4863', 'Emp03'),
  ( 'Hina', 'HJefferson@gmail.com', '(906) 555-1684', 'Emp04'),
  ( 'Drew', 'DSmith@gmail.com', '(206) 555-4866', 'Emp05'),
  ( 'Bob', 'BRobbinson@gmail.com', '(206) 555-6732', 'Emp06'),
  ( 'Nancy', 'NThomas@gmail.com', '(417) 555-7530', 'Emp07'),
  ( 'Emily', 'EGreen@gmail.com', '(206) 555-1420', 'Emp08'),
  ( 'Schild', 'SPressley@gmail.com', '(206) 555-2594', 'Emp09'),
  ( 'Nathenial', 'NFranklin@gmail.com', '(206) 555-3399', 'Emp10');


---------------------------------------------------------------------------------------------------------------------------


--Creating the Flowers Table 
--Created By Dymair
CREATE TABLE Flowers (
  Flowers VARCHAR (25),
  ftype VARCHAR(25) NOT NULL,
  quantity NUMERIC(3) NOT NULL,
  fcondition VARCHAR(25) NOT NULL,
  serialNum VARCHAR(25) NOT NULL,
  CONSTRAINT Flowers_PK PRIMARY KEY (serialNum)
);

-- Create Values for the Staff table:
INSERT INTO Flowers(ftype, quantity, fcondition, serialNum)
VALUES 
  ("Carthamus Tinctorius", 40, "Fresh & Beautiful","F1"),
  ("Hibiscus Rosa-Sinensis", 25, "Budding","F2"),
  ("Carnation", 30, "Budding","F3"),
  ("Sunflower", 30, "Seedling","F4"),
  ("Rose", 28, "Fresh & Beautiful","F5"),
  ("Lily", 25, "Budding","F6"),
  ("Orchid", 20, "Fresh & Beautiful","F8"),
  ("Jasmine",63,"Budding","F9"),
  ("Lotus",4,"Budding","F10"),
  ("Cactus",35,"Budding","F11"),
  ("Gerbera",60,"Seedling","F12"),
  ("Petunia",41,"Fresh & Beautiful","F13"),
  ("Marigold",38,"Fresh & Beautiful","F14"),
  ("Zinnia",39,"Fresh & Beautiful","F15"),
  ("Nasturtium",36,"Seedling","F16"),
  ("Forsythia",50,"Seedling","F17"),
  ("Spathiphyllum",12,"Budding","F18"),
  ("Honeysuckle",31,"Fresh & Beautiful","F19"),
  ("HLetang",23,"Fresh & Beautiful","F20"),
  ("Moon Orchid",25,"Fresh & Beautiful","F21"),
  ("Kay Shen",27,"Budding","F22"),
  ("Plum Orchid","20","Budding","F23"),
  ("Tiger Lily","30","Budding","F24"),
  ("FCountryside","33","Budding","F25"),
  ("Crimson poppy","39","Budding","F26"),
  ("Arnica","44","Fresh & Beautiful","F27"),
  ("Black Bat Flower", "12", "Seedling", "F28"),
  ("Fire Lily", "25", "Seedling", "F29");
 
---------------------------------------------------------------------------------------------------------------------------


--Creating the Vases Table 
--Created By Dymair
CREATE TABLE Vases (
  vases VARCHAR (25) NOT NULL,
  vtype VARCHAR(25) NOT NULL,
  price NUMERIC(5) NOT NULL,
  color VARCHAR(25) NOT NULL,
  vID VARCHAR (10) NOT NULL,
  CONSTRAINT Vases_PK PRIMARY KEY (vID)
);

-- Create values for the Vases table:
INSERT INTO Vases (vases, Vtype, price, color, vID)
VALUES
  ("Jug Vase", "L", 21.20, "clear", "V1"), 
  ("Crystal Vase", "XL", 30.99, "Crystal","V2"),
  ("Glass Vase", "L", 23.99, "Glass","V3"),
  ("Metal Vase", "L", 22.89, "Iron","V4"),
  ("Paper Mache Vase", "M", 19.99, "Brown","V5"),
  ("Wood Vase", "L", 21.89, "Wood","V6"),
  ("Slim Vase", "L", 22.50, "Brown", "V7"),
  ("Chimney Vase", "L", 24.67, "clear", "V8"),
  ("Cube Vase", "XL",29.00, "clear", "V9"),
  ("Hurricane Vase", "XL",28.90, "clear", "V10"),
  ("Fluted Vase", "XL", 32.25, "Red", "V11"),
  ("Trumpet Vase", "XL",34.00, "Red", "V12"),
  ("Pedestal Vase", "XL",30.00, "Red", "V13"),
  ("Vertical Flower Pail", "XL", 33.87, "Black", "V14"),
  (" Ceramic Flower vase", "L",22.84, "Crimson","V15"),
  ("Glass Bottle Vase", "M",19.99,"Gold","V16"),
  ("Big Vase", "XL", 30.33, "Pink", "V17"),
  ("Flower Vase","XL", 29.33, "pink", "V18"),
  ("Sleep Vase", "XXL", 35.99, "Red", "V19"),
  ("Ruby Vase", "XXL", 40.00, "Red", "V20"),
  ("Noble Vase", "XL", 25.07, "clear", "V21"),
  ("Candy Vase", "M", 19.70, "White", "V22"),
  ("Paris Vase", "XL", 30.00, "Black", "V23"),
  ("Vintage Vase", "XL",30.50, "black", "V24"),
  ("Small vase", "S", 10.99, "Crimson", "V25"),
  ("Plastic Vase", "S", 9.20, "clear", "V26"),
  ("Dining Room Vase", "L", 21.95, "red", "V27"),
  ("Bucket Vase", "M", 18.55, "clear", "V28"),
  ("Large Vase", "XL", 38.28, "Red", "V29"),
  ("Jumbo Vase", "L", 21.50, "purple", "V30"),
  ("Bucket Saphhire Vase", "M", 19.99, "blue", "V31"),
  ("Large Clear Vase", "XL", 30.00, "clear", "V32");

---------------------------------------------------------------------------------------------------------------------------  


--Creating the Shipments Table 
--Created By Dymair
CREATE TABLE Shipments (
  price VARCHAR(10) NOT NULL,
  Shipping_date DATE NOT NULL,
  Delivery_date DATE NOT NULL,
  vendorID_FK VARCHAR (10) NOT NULL,
  trackNum VARCHAR (20) NOT NULL,
  CONSTRAINT Shipments_PK PRIMARY KEY (trackNum),
  CONSTRAINT Shipments_FK FOREIGN KEY (vendorID_FK)
  REFERENCES Vendors(vendorID)
);

-- Create values for the Shipments table:
INSERT INTO Shipments (price, Shipping_date, Delivery_date, vendorID_FK, trackNum)
VALUES 
	( 120.00, '2012/12/24', '2012/12/31', 'Vend04', '100' ),
	( 450.00, '2012/12/14', '2012/12/19', 'Vend05', '101' ),
	( 670.00, '2012/12/15', '2012/12/25', 'Vend02', '102' ),
	(3670.00, '2012/12/20', '2012/12/30', 'Vend09', '103' ),
	( 230.99, '2012/12/26', '2013/1/9', 'Vend05', '104' ),
	( 140.00, '2012/12/15', '2012/12/29', 'Vend04', '105' ),
	( 480.99, '2012/12/23', '2013/1/4', 'Vend01', '106' ),
	( 370.00, '2012/12/23', '2013/1/3', 'Vend02', '107' ),
	( 240.99, '2012/12/23', '2013/1/2', 'Vend09', '108' ),
	( 450.00, '2012/12/23', '2013/1/1', 'Vend08', '109' ),
	( 350.00, '2012/12/21', '2012/12/28', 'Vend04', '110' ),
	( 120.00, '2012/12/21', '2012/12/28', 'Vend05', '111' ),
	( 870.00, '2012/12/21', '2012/12/28', 'Vend01', '112' ),
	( 240.99, '2012/12/21', '2012/12/28', 'Vend09', '113' ),
	( 1200.50, '2012/12/21', '2012/12/28', 'Vend06', '114' ),
	( 230.00, '2012/12/21', '2012/12/28', 'Vend03', '115' ),
	( 1400.50, '2012/12/21', '2012/12/28', 'Vend07', '116' ),
	( 1050.50, '2012/12/21', '2012/12/28', 'Vend03', '117' ),
	( 1020.00, '2012/12/21', '2012/12/28', 'Vend03', '118' ),
	( 1040.50, '2012/12/21', '2012/12/28', 'Vend03', '119' ),
	( 1200.50, '2012/12/21', '2012/12/28', 'Vend03', '120' ),
	( 1040.50, '2012/12/21', '2012/12/28', 'Vend03', '121' ),
	( 120.50, '2012/12/23', '2013/1/3', 'Vend01', '122' ),
	( 304.00, '2012/12/25', '2013/1/7', 'Vend01', '123' ),
	( 240.00, '2012/12/23', '2013/1/6', 'Vend05', '124' ),
	( 350.00, '2012/12/23', '2013/1/8', 'Vend08', '125' );
---------------------------------------------------------------------------------------------------------------------------


--Creating the Customers Table 
--Created By Bill
CREATE TABLE Customers (
    name VARCHAR(25) NOT NULL,
    Custorder DATE NOT NULL,
    address VARCHAR(100) NOT NULL,
    email VARCHAR(35) NOT NULL,
    phone VARCHAR (10) NOT NULL,
    vID_FK VARCHAR(10) NOT NULL,
    serialNum_FK VARCHAR(25) NOT NULL,
    CONSTRAINT Customers_PK PRIMARY KEY (phone),
    CONSTRAINT Customers_FK1 FOREIGN KEY (vID_FK) REFERENCES Vases(vID),
    CONSTRAINT Customers_FK2 FOREIGN KEY (serialNum_FK) REFERENCES Flowers (serialNum)
	);

--Create values for the Customer's Table:
INSERT INTO Customers(name, Custorder, address, email, phone, vID_FK, serialNum_FK )
VALUES
	("Scarlet Johanson", "2021/12/31", "125 Idonknow Ave, Los Antonio, California, US", "damail@gmail.com","5563354243", "V7",  "F1"),
	("Tony Stark", "2022/3/21", "Stark Tower, New York City, New York, US", "jarvis@gmail.com","9483238203", "V19",  "F21"),
	("Bruce Craner", "1998/2/14", "303 Iris Street, St. Dennis, Texas, US", "batman@gmail.com","1239443123", "V1",  "F23"),
	("Luke Walker", "2056/8/3", "327 Vader Blvd, Tatooine , Galactic Empire, Germany", "maydaforthbeu@gmail.com","1294294814", "V23",  "F19"),
	("Peter Muffin", "2022/12/1", "4103 Likewise Ln, New York City, New York, US", "muffintime@gmail.com","9483212203", "V1",  "F3"),
	("Wrench Furri", "2011/6/2", "1222 Dog Street, Baltimore, Maryland, US", "animails@gmail.com","5312399784", "V6",  "F5"),
	("Mario Closso", "2021/12/31", "Mushroom Ave, Rome, Italy", "starsandcoins@yahoo.com","2332496343", "V13",  "F1"),
	("Chris Fratt", "2031/1/31", "444 I Street, Los Antonio, California, US", "cfratt@gmail.com","5563358631", "V12",  "F12");

---------------------------------------------------------------------------------------------------------------------------


--Creating the Inventory Table
--Created By Bill
CREATE TABLE Inventory (
  name VARCHAR(25) NOT NULL,
  price  NUMERIC(10) NOT NULL,
  type VARCHAR(25) NOT NULL,
  itemNum VARCHAR (10) NOT NULL,
  vID_FK VARCHAR(10),
  serialNum_FK VARCHAR(25),
  CONSTRAINT Inventory_PK 
  PRIMARY KEY (itemNum),
  CONSTRAINT Inventory_FK1 FOREIGN KEY (vID_FK) REFERENCES Vases(vID),
  CONSTRAINT Inventory_FK2 FOREIGN KEY (serialNum_FK) REFERENCES Flowers (serialNum)
);

--Creating Values for Flowers within INVENTORY
INSERT INTO inventory(name, price, type, itemNum, serialNum_FK)
VALUES

	("Carthamus Tinctorius", 2.17,"Flower","005", "F1"),
	("Hibiscus Rosa-Sinensis", 3, "Flower","006", "F2"),
	("Carnation", 3, "Flower","007", "F3"),
	("Sunflower", 5.99, "Flower","008", "F4"),

  ("Rose", 3.25, "Flower", "013", "F5"),
  ("Lily", 5.00, "Flower", "014", "F6"),
  ("Orchid", 2.99, "Flower","015","F8"),
  ("Jasmine",6.25,"Flower", "016", "F9"),

  ("Lotus", 4.00, "Flower","021", "F10"),
  ("Cactus", 3.50, "Flower", "022","F11"),
  ("Gerbera", 3.99, "Flower", "023","F12"),
  ("Petunia", 3.99, "Flower", "024", "F13"),

  ("Marigold", 6.50, "Flower", "029", "F14"),
  ("Zinnia", 5.25, "Flower", "030", "F15"),
  ("Nasturtium", 3.00, "Flower","031", "F16"),
  ("Forsythia", 5.00, "Flower", "032", "F17"),

  ("Spathiphyllum", 1.99, "Flower", "037","F18"),
  ("Honeysuckle", 6.50, "Flower", "038","F19"),
  ("HLetang", 5.49 , "Flower", "039", "F20"),
  ("Moon Orchid", 2.50, "Flower", "040", "F21"),

  ("Kay Shen", 3.00, "Flower", "045","F22"),
  ("Plum Orchid", 1.87, "Flower", "046", "F23"),
  ("Tiger Lily", 4.50, "Flower", "047","F24"),
  ("Countryside", 3.67, "Flower", "048", "F25"),

  ("FCrimson poppy", 8.00, "Flower", "053", "F26"),
  ("Arnica", 4.25, "Flower", "054", "F27"),
  ("Black Bat Flower", 10.89, "Flower", "055", "F28"),
  ("Fire Lily", 9.59, "Flower", "056", "F29");


--Creating Values for Vases within INVENTORY
INSERT INTO inventory(name, price, type, itemNum, vID_FK)
VALUES
	("Jug Vase", 21.20, "Vase", "001", "V1"), 
	("Crystal Vase", 30.99, "Vase","002","V2"),
	("Glass Vase", 23.99, "Vase", "003", "V3"),
	("Metal Vase", 22.89, "Vase", "004", "V4"),

  ("Paper Mache Vase", 19.99, "Vase","009","V5"),
  ("Wood Vase", 21.89, "Vase", "010","V6"),
  ("Slim Vase", 22.50, "Vase", "011", "V7"),
  ("Chimney Vase", 24.67, "Vase", "012", "V8"),


  ("Cube Vase", 29.00, "Vase", "017", "V9"),
  ("Hurricane Vase", 28.90, "Vase", "018", "V10"),
  ("Fluted Vase", 32.25, "Vase", "019", "V11"),
  ("Trumpet Vase", 34.00, "Vase", "020", "V12"),

  ("Pedestal Vases", 30.00, "Vase", "025", "V13"),
  ("Vertical Flower Pail", 33.87, "Vase", "026", "V14"),
  ("Ceramic Flower vase", 22.84, "Vase", "027", "V15"),
  ("Glass Bottle Vase", 19.99, "Vase", "028", "V16"),

  ("Big Vase", 30.33, "Vase", "033", "V17"),
  ("Flower Vase", 29.33, "Vase", "034", "V18"),
  ("Sleep Vase", 35.99, "Vase", "035", "V19"),
  ("Ruby Vase", 40.00, "Vase", "036", "V20"),

  ("Noble Vase", 25.07, "Vase", "041", "V21"),
  ("Candy Vase", 19.70, "Vase", "042", "V22"),
  ("Paris Vase", 30.00, "Vase", "043", "V23"),
  ("Vintage Vase", 30.50, "Vase", "044", "V24"),

  ("Small vase", 10.99, "Vase", "049", "V25"),
  ("Plastic Vase", 9.20, "Vase", "050", "V26"),
  ("Dining Room Vase",  21.95, "Vase", "051", "V27"),
  ("Bucket Vase", 18.55, "Vase", "052", "V28"),

  ("Large Vase", 38.28, "Vase", "057", "V29"),
  ("Jumbo Vase", 21.50, "Vase", "058", "V30"),
  ("Bucket Saphhire Vase", 19.99, "Vase", "059", "V31"),
  ("Large Clear Vase", 30.00, "Vase", "060", "V32");
---------------------------------------------------------------------------------------------------------------------------


--Creating the Invoice Table 
--Created By Vladmir
CREATE TABLE Invoice (
  name VARCHAR(25) NOT NULL,
  startdate DATE NULL,
  orderdate DATE NOT NULL,
  invoice_Num VARCHAR(10) NOT NULL,
  phone_FK VARCHAR(10) NOT NULL,
  EmpID_FK VARCHAR (10) NOT NULL,
  CONSTRAINT Invoice_PK PRIMARY KEY (invoice_Num),
  CONSTRAINT Invoice_FK1 FOREIGN KEY (phone_FK) REFERENCES Customers (phone),
  CONSTRAINT Invoice_FK2 FOREIGN KEY (EmpID_FK) REFERENCES Staff (EmpID)
);

--Create values for the Invoice table:
INSERT INTO Invoice(name, startdate, orderdate, invoice_Num, phone_FK, EmpID_FK)
VALUES
	("Scarlet Johanson", "2021/11/5", "2021/11/1", "INV001", "5563354243", "Emp01"),
	("Tony Stark", "2022/10/15","2021/11/1", "INV002", "9483238203", "Emp01"),
	("Bruce Craner", "2022/1/20", "2022/1/10", "INV003", "1239443123", "Emp03"),
	("Luke Walker", "2016/8/7", "2016/8/14", "INV004", "1294294814", "Emp08"),
	("Peter Muffin", "2017/5/4", "2017/5/20","INV005", "9483212203", "Emp06"),
	("Wrench Furri",  "2012/9/7", "2016/8/14","INV006", "5312399784", "Emp01"),
	("Mario Closso", "2021/11/23", "2021/12/1","INV007", "2332496343", "Emp06"),
	("Chris Fratt",  "2030/12/7", "2031/1/14","INV008", "5563358631", "Emp10");
---------------------------------------------------------------------------------------------------------------------------


--Creating the Records Table 
--Created By Bill
CREATE TABLE Records (
  name VARCHAR(255) NOT NULL,
  price DOUBLE NULL,
  email VARCHAR(100) NULL,
  phone  VARCHAR(20) NOT NULL,
  date_recorded DATE NOT NULL,
  recordNum VARCHAR (10) NOT NULL,
  rtype VARCHAR(10) NOT NULL,
  invoiceNum_FK VARCHAR(10) NULL,
  trackNum_FK VARCHAR (20) NULL,
  EmpID_FK VARCHAR (10) NULL,
  CONSTRAINT Records_PK
  PRIMARY KEY (recordNum),
  CONSTRAINT Records_FK1 FOREIGN KEY (invoiceNum_FK) REFERENCES Invoice (invoice_Num),
  CONSTRAINT Records_FK2 FOREIGN KEY (trackNum_FK) REFERENCES Shipments (trackNum),
  CONSTRAINT Records_FK3 FOREIGN KEY (EmpID_FK) REFERENCES Staff(EmpID)
);

--Recording Customers into RECORDS
INSERT INTO records(name, phone, recordNum, email, rtype, date_recorded, invoiceNum_FK)
VALUES
	("Scarlet Johanson", "556-335-4243", "REC-1", "damail@gmail.com", "Customer", "2021/12/31", "INV001"),
	("Tony Stark", "948-323-8203","REC-2", "jarvis@gmail.com", "Customer","2022/3/21", "INV002"),
	("Bruce Craner", "123-944-3123","REC-3", "batman@gmail.com","Customer", "2022/1/10", "INV003"),
	("Luke Walker", "129-429-4814","REC-4", "maydaforthbeu@gmail.com","Customer", "2056/8/3", "INV004"),
	("Peter Muffin", "948-321-2203","REC-5",  "muffintime@gmail.com", "Customer", "2017/5/20", "INV005"),
	("Wrench Furri",  "531-239-9784", "REC-6", "animails@gmail.com","Customer", "2016/8/14", "INV006"),
	("Mario Closso", "233-249-6343","REC-7",  "starsandcoins@yahoo.com", "Customer", "2021/12/1", "INV007"),
	("Chris Fratt",  "556-335-8631","REC-8", "cfratt@gmail.com", "Customer", "2031/1/14", "INV008");

--Recording Shipments into RECORDS
INSERT INTO records(name, phone, email, price, recordNum, rtype, date_recorded, trackNum_FK)
VALUES
	("Mango Flower", "206-467-7885",'Mango@gmail.com', 480.99, "REC-11", "Shipments", "2012/12/1", "106"),
	("Mango Flower", "206-467-7885",'Mango@gmail.com', 870.00, "REC-12", "Shipments", "2012/12/2", "112"),
	("Mango Flower", "206-467-7885",'Mango@gmail.com', 120.50, "REC-13", "Shipments", "2012/12/23", "122"),
	("Mango Flower", "206-467-7885",'Mango@gmail.com', 304.00, "REC-14", "Shipments", "2012/12/23", "123"),
	("Sunny Flower", "206-485-7656",'Sunny@yahoo.com', 670.00, "REC-18", "Shipments", "2012/12/15","102"),
	("Sunny Flower", "206-485-7656",'Sunny@yahoo.com', 370.00, "REC-19", "Shipments", "2013/1/3", "107"),
	("Apple Flower", "206-555-7989",'Apple@yahoo.com', 230.00, "REC-21", "Shipments","2012/12/28","115"),
	("Apple Flower", "206-555-7989",'Apple@yahoo.com', 1050.50, "REC-24", "Shipments","2012/12/28","117"),
	("Apple Flower", "206-555-7989",'Apple@yahoo.com', 1020.00, "REC-22", "Shipments","2012/12/28","118"),
	("Apple Flower", "206-555-7989",'Apple@yahoo.com', 1040.50, "REC-20", "Shipments","2012/12/28","119"),
	("Apple Flower", "206-555-7989",'Apple@yahoo.com', 1200.50, "REC-23", "Shipments","2012/12/28","120"),
	("Apple Flower", "206-555-7989",'Apple@yahoo.com', 1040.50, "REC-15", "Shipments","2012/12/28","121"),
	("Miller Flower", "206-555-3918",'miller@hotmail.com',120.00, "REC-16", "Shipments","2012/12/24","100"),
	("Miller Flower", "206-555-3918",'miller@hotmail.com', 140.00, "REC-46", "Shipments","2012/12/15","105"),
	("Miller Flower", "206-555-3918",'miller@hotmail.com', 350.00, "REC-29", "Shipments","2012/12/21","110"),
	("Flower", "206-555-9982",'Flower@excite.com', 450.00, "REC-28", "Shipments","2012/12/14","101"),
	("Flower", "206-555-9982",'Flower@excite.com', 230.99, "REC-26", "Shipments","2013/1/9","104"),
	("Flower", "206-555-9982",'Flower@excite.com', 120.00, "REC-34", "Shipments","2012/12/28","111"),
	("Flower", "206-555-9982",'Flower@excite.com', 240.00, "REC-32", "Shipments","2012/12/24","124"),
	("Aston Flower", "206-5554-287",'Aston@msn.com', 1200.50, "REC-33", "Shipments","2012/12/28","114"),
	("Ursula Flower", "206-555-4444",'Ursula@msn.com', 1400.50, "REC-30", "Shipments","2012/12/28","116"),
	("Michelle Flower", "206-555-3901",'Michelle@msn.com', 450.00, "REC-31", "Shipments","2013/1/1","109"),
	("Michelle Flower", "206-555-3901",'Michelle@msn.com', 350.00, "REC-27", "Shipments","2013/1/8","125"),
	("Michael Flower", "206-555-3548", 'Michael@msn.com',370.00, "REC-25", "Shipments","2013/1/1","103"),	
	("Michael Flower", "206-555-3548",'Michael@msn.com', 240.99, "REC-37", "Shipments","2013/1/1","108"),	
	("Michael Flower", "206-555-3548",'Michael@msn.com', 240.99, "REC-35", "Shipments","2013/1/1","113");	
	
--Recording Staff into RECORDS	
INSERT INTO records(name, phone, email, date_recorded, recordNum, rtype, EmpID_FK)
VALUES
	('John', '206-555-2535', 'JAddams@gmail.com', "2012/8/12", "REC-9", "Staff","Emp01"),
	('Nicky', '206-893-3831',  'NTills@gmail.com', "2012/8/12","REC-10", "Staff","Emp02"),
	('Maria','323-555-4863', 'MWrigth@gmail.com', "2012/8/12","REC-36", "Staff","Emp03"),
	('Hinata', '906-555-1684', 'HJefferson@gmail.com', "2012/8/12","REC-38", "Staff","Emp04"),
	('Drew', '206-555-4866',  'DSmith@gmail.com', "2012/8/12","REC-42", "Staff","Emp05"),
	('Bob', '206-555-6732', 'BRobbinson@gmail.com', "2012/8/12","REC-39", "Staff","Emp06"),
	('Nancy', '417-555-7530', 'NThomas@gmail.com', "2012/8/12","REC-41", "Staff","Emp07"),
	('Emily', '206-555-1420', 'EGreen@gmail.com', "2012/8/12","REC-40", "Staff","Emp08"),
	('Schild', '206-555-2594', 'SPressley@gmail.com',"2012/8/12","REC-44", "Staff","Emp09"),
	('Nathenial', '206-555-3399','NFranklin@gmail.com', "2012/8/12","REC-45", "Staff","Emp10");
	
--JOIN  #1
--What Shipment came from what Vendor?
SELECT
	vendors.name,
	vendors.phone,
	vendors.vendorID,
	shipments.price,
	shipments.trackNum
FROM
	Vendors
JOIN
	Shipments
ON
	Vendors.vendorID = Shipments.vendorID_FK;

--JOIN #2
--Find The new shipments that  
SELECT
	Records.name,
	Shipments.Shipping_date,
	Shipments.Delivery_date,
	Shipments.price,
	Shipments.trackNum,
	Records.recordNum
FROM
	Shipments
JOIN
	Records
ON
	Shipments.trackNum = Records.trackNum_FK;
	
--Intersection
--How much does each shipments costs
SELECT
	Shipments.trackNum,
	records.name,
	Shipments.price,
	Records.recordNum
FROM
	Shipments
INNER JOIN
	Records
ON
	Shipments.trackNum = Records.trackNum_FK;
	
--Alter #1
--Vendor adding 
ALTER TABLE Vendors
ADD Country VARCHAR(30) NULL;

--Alter #2
ALTER TABLE Shipments
DROP Shipping_date;

--Update #1
UPDATE Vendors
SET Address = "918 Porter Street, New York City, New York", Country = "US"
WHERE vendorID = "Vend04";
--Update #2		
UPDATE Vendors
SET Address = "3112 Liver Ave. San Fransico, California", Country = "US"
WHERE vendorID = "Vend07";

--Delete #1
DELETE FROM Records
WHERE name= "Mango Flower";

--Delete #2
DELETE FROM Records
WHERE name= "Miller Flower";

--Aggregate #1
SELECT
	MAX(price)
FROM
	Shipments;
	
--Aggregate #2
SELECT
	MIN(price)
FROM
	Shipments;
	
--HAVING #1
SELECT 
	name,
	email,
	date_recorded,
	phone
FROM
	Records
HAVING
	date_recorded="2012/08/12";

--HAVING #2
SELECT 
	name,
	price,
	date_recorded,
	trackNum_FK
FROM
	Records
HAVING
	name="Apple Flower";
	
	
--Group By #1
SELECT 
	name,
	email,
	date_recorded,
	phone
FROM
	Records
GROUP BY
	name
HAVING
	date_recorded="2012/08/12";
	
--Group By #2
SELECT 
	price,
	trackNum,
	Delivery_date
FROM
	shipments
GROUP BY
	price
HAVING
	Delivery_date="2012/12/28";

--Order by #1
SELECT 
	name,
	email,
	date_recorded,
	phone
FROM
	Records
ORDER BY
	name ASC;

--Order by #2
SELECT
	price, 
	Delivery_date,
	trackNum
FROM
	Shipments
ORDER BY
	price DESC;


--Union
SELECT name
FROM Invoice
UNION
SELECT name
FROM records
ORDER BY
name ASC;

--Differences #1
SELECT
	vendors.name,
	vendors.email,
	vendors.vendorID,
	shipments.price,
	shipments.Delivery_date
FROM
	vendors
LEFT JOIN Shipments
ON
	Vendors.vendorID = Shipments.vendorID_FK
ORDER BY name;

--Differences #2
SELECT
	shipments.price,
	shipments.Delivery_date,
	shipments.trackNum,
	records.name,
	records.trackNum_FK
FROM
	shipments
LEFT JOIN
	records
ON
	shipments.trackNum = records.trackNum_FK;
	
--Create Views #1
CREATE VIEW shipmentsdates AS
SELECT trackNum, Delivery_date, price 
FROM Shipments;

--Create Views #1
CREATE VIEW vendorinfo AS
SELECT name, phone, email, address, country
FROM vendors;

--Stored TRIGGERS #1
	CREATE TRIGGER beforerecordsupdates
	BEFORE UPDATE ON records
	FOR EACH ROW
	INSERT INTO records_history
	SET action = "update",
		name = OLD.name,
		phone = OLD.phone,
		price = OLD.price,
		email = OLD.email,
		changedat = NOW();
	SHOW TRIGGERS;

--Stored TRIGGERS #2
	CREATE TRIGGER beforevendorsupdates
	BEFORE UPDATE ON vendors
	FOR EACH ROW
	INSERT INTO vendors_history
	SET action = "update",
		name = OLD.name,
		phone = OLD.phone,
		address = OLD.address,
		email = OLD.email,
		country = OLD.country,
		changedat = NOW();
	SHOW TRIGGERS;

--Create Users
DROP USER IF EXISTS Hina;
DROP USER IF EXISTS Drew;
CREATE USER Hina
IDENTIFIED BY "Emp04";

CREATE USER Drew
IDENTIFIED BY "Emp05";

GRANT SELECT, INSERT
ON Staff
TO Hina1;

GRANT SELECT, DELETE, UPDATE
ON Staff
TO Drew1;

REVOKE DELETE, UPDATE
ON Staff
FROM Drew1;

REVOKE INSERT
ON Staff
FROM Hina1;

--Stored Procedures
DELIMITER //
CREATE PROCEDURE GetShipmentsALL()
BEGIN
	SELECT * FROM Shipments;
END //

CALL GetShipmentsALL();


CREATE PROCEDURE GetVendorALL()
BEGIN
	SELECT * FROM Vendors;
END //	

CALL GetVendorALL();//