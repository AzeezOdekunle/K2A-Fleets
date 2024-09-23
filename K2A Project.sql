				Create Database K2A

--	1.			Business Req:  Create an E-R model for the conceptual, logical and physical on SQL Server

				Create table FloatCategory(
				FloatCategoryID int, 
				FloatRate float,
				FloatExceedQty float, 
				FloatExceedRate float,
				Constraint FloatCategory_PK Primary key (FloatCategoryID)
				)

				
								Create Table EquipTrans
								(TransID int identity (1,1),
								TransDate date,
								CustomerID int,
								EquipmentID int,
								Quantity float,
								GrossAmount decimal(12,2),
								DiscountAmount decimal(12,2),
								FloatRateAmount decimal(12,2),
								FloatExceededAmount decimal(12,2), 
								PostalVariationAmount decimal(12,2),
								Constraint EquipTrans_SK Primary Key (TransID)
								)

								
		Create Table Customer
		(
		CustomerID int,
		CustomerName varchar(255),
		Category varchar(255),
		PrimaryContact varchar(255),
		ReferenceNo varchar(255),
		PaymentDays int,
		PostalCode int,
		Constraint Customer_PK Primary Key (CustomerID)
			)

			Create table Equipment(
			EquipmentID int,
			EquipmentName varchar(255),
			UnitPrice decimal (12,2),
			DiscountPercent float,
			FloatCategoryID int,
			Constraint Equipment_pk primary key (EquipmentID)
			)


---		Business Req 2:  Populate Float Category, Equipment and Customer with the provided data


		Insert into FloatCategory(FloatCategoryID, FloatRate, FloatExceedQty, FloatExceedRate)
		Values	(1,0.4,15,0.7), 
		(2,0.1,15,0.6),
		(3,0.2,50,0.75),
		(4,0.24,68,0.9), 
		(5,0.12,100,1.8)

		
Insert into Equipment(EquipmentID, EquipmentName, UnitPrice, DiscountPercent,FloatCategoryID)
Values (1, ' Cup -Lock System of Shuttering – 3.2 M high',122.50,0.015,1),
(2, 'Steel Props – 4.2 M High',100,0.02,1),
(3, 'Steel shuttering plates – 3 ft x 2 ft',1000.50,0.05,1),
(4, 'Steel section Girders – 8ft to 12 ft' ,1700.00,0.01,1),
(5, 'Steel pipes for scaffolding',15000.00,0.08,1),
(6, 'Telescopic Girders',200,0.4,1 ),
(7, 'Tower Crane',233,0.14,1),
(8, 'Tractor mounted Crane' ,105,0.4,1 ),
(9, 'Concrete batching plant' ,1325.70,0.015,1),
(10, 'Mobile batching plant' ,99.87,0.011,1 ),
(11, 'Concrete Pump (Greaves – 40 cum/hr)',1500.50,0.095,1), 
(12, 'Tremix machine set with trowel & floater',700.69,0.15,1), 
(13, 'Concrete mixers',120,0.15,1 ),
(14, 'D.G. Set – 82.KVA' ,12.50,0.15,1), 
(15, 'Vibrators (Electrical)',200.99,0.001,1 ),
(16, 'Vibrators (Petrol)',4100.90,0.03,1 ),
(17, 'Stone cutting machine (Platform type)',1200.56,0.09,1 ),
(18, 'Stone cutting machine (hand type)' ,1780,0.0094,1), 
(19, 'Groove cutting machine',122.50,0.5,1 ),
(20, 'Builder’sÂ Hoist with winch',122.50,0.5,1 ),
(21, 'Bar Bending & cutting machine' ,122.50,0.5,1 ),
(22, 'Truck' ,122.50,0.5,1 ),
(23, 'Air Compressor',122.50,0.5,1 ),
(24, 'Road Roller',122.50,0.5,1 ),
(25, 'Vibro-Roller',122.50,0.5,1), 
(26, 'Tipper – Tata' ,122.50,0.5,1), 
(27, 'Excavator – ACE' ,122.50,0.5,1 ),
(28, 'Tractor with trolly – 40 HP',122.50,0.5,1 ),
(29, 'Water pump',122.50,0.5,1 ),
(30, 'Cutter Hitachi – Model CM 45',122.50,0.5,1 ),
(31, 'Welding Set – Aircooled',122.50,0.5,1 ),
(32, 'Drilling Machine Bosch – GSB – 16' ,122.50,0.5,1), 
(33, 'Mud pump – GEC – 1 HP 2 HP',122.50,0.5,1),
(34, 'Floor Grinding machine – 2 HP' ,122.50,0.5,1 ),
(35, 'Earth Compactor – 7.5 HP motor',122.50,0.5,1), 
(36, 'CGI Sheets – 10′, 12′ Long' ,122.50,0.5,1)


Insert into Customer (CustomerID,
		CustomerName,
		Category,
		PrimaryContact,
		ReferenceNo,
		PaymentDays,
		PostalCode)
 values
		(1,'A Datum Corporation','Novelty Goods Supplier','Reio Kabin','AA20384',14,46077),
		(2,'Woodgrove Bank','Financial Services Supplier','Hubert Helms','28034202',7,94101),
		(3,'Consolidated Messenger','Courier','Kerstin Parn','209340283',30,94101),
		( 4,'Litware Inc.','Packaging Supplier','Elias Myllari','BC0280982',30,95245),
		( 5,'Humongous Insurance','Insurance Services Supplier','Madelaine Cartier','82420938',14,37770 ),
		(6,'Graphic Design Institute','Novelty Goods Supplier','Penny Buck','8803922',14,64847),
		( 7,'Fabrikam Inc.','Clothing Supplier','Bill Lawson','293092',30,40351),
		( 8,'The Phone Company','Novelty Goods Supplier','Hai Dam','237408032',30,56732),
		( 9,'Trey Research','Marketing Services Supplier','Donald Jones','82304822',7,57543 ),
		(10,'Lucerne Publishing','Novelty Goods Supplier','Prem Prabhu','JQ082304802',30,37659),
		( 11,'Contoso Ltd.','Novelty Goods Supplier','Hanna Mihhailov','B2084020',7,98253),
		( 12,'Nod Publishers','Novelty Goods Supplier','Marcos Costa','GL08029802',7,27906 ),
		(13,'Northwind Electric Cars','Toy Supplier','Eliza Soderberg','ML0300202',30,7860 ),
		(14,'A Datum Corporation','Novelty Goods Supplier','Reio Kabin','AA20384',14,46077 ),
		(15,'Contoso Ltd.','Novelty Goods Supplier','Hanna Mihhailov','B2084020',7,98253 ),
		(16,'Consolidated Messenger','Courier','Kerstin Parn','209340283',30,94101),
		( 17,'Fabrikam Inc.','Clothing Supplier','Bill Lawson','293092',30,40351 ),
		(18,'Graphic Design Institute','Novelty Goods Supplier','Penny Buck','8803922',14,64847 ),
		(19,'Humongous Insurance','Insurance Services Supplier','Madelaine Cartier','82420938',14,37770),
		( 20,'Litware Inc.','Packaging Supplier','Elias Myllari','BC0280982',30,95245 ),
		(21,'Lucerne Publishing','Novelty Goods Supplier','Prem Prabhu','JQ082304802',30,37659 ),
		(22,'Nod Publishers','Novelty Goods Supplier','Marcos Costa','GL08029802',7,27906 ),
		(23,'Northwind Electric Cars','Toy Supplier','Eliza Soderberg','ML0300202',30,7860 ),
		(24,'Trey Research','Marketing Services Supplier','Donald Jones','82304822',7,57543),
		( 25,'The Phone Company','Novelty Goods Supplier','Hai Dam','237408032',30,56732),
		( 26,'Woodgrove Bank','Financial Services Supplier','Hubert Helms','28034202',7,94101 ),
		(27,'Consolidated Messenger','Courier Services Supplier','Kerstin Parn','209340283',30,94101)







/*	Business Req 3:  Generate 1M rows of equipment daily transactional data for 4 years start from January 1, 2015 to May 31, 2019 for testing 
    S&M Software based on the business rules and set of the dataset defined above 
*/		

				Declare @Totalrow bigint = 4000000
				Declare @CustomerID int
				Declare @EquipmentID int
				Declare @Quantity int 
				Declare @TransDate Date
				Declare @StartDate DATE = '2015-01-01';
				Declare @EndDate DATE = '2019-05-31';
				Declare @startEquiptrans int=1
				While @Totalrow >= @startEquiptrans												
		Begin
Select @TransDate = (SELECT DATEADD(DAY, ABS(CHECKSUM(NEWID())) % (DATEDIFF(DAY, @StartDate, @EndDate)+1), @StartDate))
Select @EquipmentID= (Select  convert(int, rand()* (select max(EquipmentID) from Equipment)+(select min(EquipmentID) from Equipment)))							
Select @CustomerID= (Select  convert(int, rand()* (select max(CustomerID) from Customer) + (select min(CustomerID) from Customer)))
Select @Quantity= (select(Convert(int, RAND() * 250))) 
	Insert into EquipTrans ( TransDate, EquipmentID, CustomerID, Quantity) 
	values ( @TransDate, @EquipmentID, @CustomerID, @Quantity)
set @startEquiptrans = @startEquiptrans+1
	
End





/*							Business Rules:

1. TransID - This is auto increment Identity primary key 
2. TransDate - This denotes the date of the transaction 
3. CustomerID – This is derived from the Customer Table 
4. EquipmentID – Derives from equipment table 
5. Quantity- This is auto generated amount
6. GrossAmount - (Unit price of the equipment) * Quantity 
7. DiscountAmount - Discount amount on the equipment applies to quantities purchased i .e this applies irrespective of the number of quantity purchased 
8. FloatRateAmount - Float rate applies to quantities purchased that fall between 100 and 150 
9. FloatExceededAmount - Float exceeded rate applies to quantities more than 150
10. PostalVariationAmount – This is derived based on customer postal code: 
	i. Postal Code 7000 to 50000 then variable rate 0.002 
	ii. Postal Code 50001 to 70000 then variable rate 0.050 
	iii. Postal Code 70001 to 90000 then variable rate 0.062 
	iv. Postal Code 90001 above then variable rate 0.0078
	
			To generate Grossamount and DicountAmount, FloatRateAmount, FloatExceededAmount, PostalVariationAmount
*/
  Update equipTrans
  set grossamount = et.quantity*E.unitprice from EquipTrans ET 
  inner join Equipment E on e.equipmentid=et.EquipmentID 
 
  Update equipTrans
Set DiscountAmount=  (et.quantity*E.unitprice)*(1-e.DiscountPercent)  from EquipTrans ET 
  inner join Equipment E on e.equipmentid=et.EquipmentID

  Update equipTrans
  set FloatRateAmount= case 
  when et.Quantity >=100 and et.Quantity <=150 then (1-0.4)*DiscountAmount
  Else '0'
  End 
  from EquipTrans Et 
 
 select * from [dbo].[Equipment]
  select * from[dbo].[FloatCategory]
 
  update equiptrans
  set FloatExceededAmount= 
  case
  when et.quantity >150 then (1-0.7)*DiscountAmount
  else '0'
  end 
  from Equiptrans Et

  Update equipTrans
  set postalvariationamount=
  case
 when c.postalcode  >=7000 and c.postalcode <=50000 then (1-0.002)*DiscountAmount
 when c.postalcode  >=50001 and c.postalcode <=70000 then (1-0.050) *DiscountAmount
 when c.postalcode  >=70001 and c.postalcode <=90000 then (1-0.062)*DiscountAmount
 when c.postalcode  >=90001  then (1-0.0078)*DiscountAmount
 End 
from equipTrans ET inner join Customer C on c.customerID=ET.CustomerID

  
  --	Business Req 4: 
  /*Create a dynamic function that produce top N customer purchased Amount by year E.g. Top 10 customers 
  with highest purchased in 2019*/ 
  
  Select * from dbo.Highestpurchasers (2019, 10) order by grossamount desc

  Create function dbo.Highestpurchasers (@year int, @Highest int)
  returns table
			as return 
  select a.transdate, a.customername, a.transID, a.primarycontact, a.postalcode, a.quantity, a.grossamount, a.rankpurchaser 
  from
  (select Et.transdate,c.customername, Et.TransID, c.primarycontact, c.postalcode, et.grossamount, et.quantity, dense_rank() 
  over (order by et.grossamount desc) rankpurchaser from equipTrans ET 
  inner join customer C on c.customerid=et.customerid where year(et.transdate) = @year) a where a.rankpurchaser <=@Highest)
   ------
  
 --		Business Requirement 5:
  
			 select datepart(year,Et.TransDate) year,e.EquipmentName, e.EquipmentID, sum(Et.GrossAmount) as TotalGrossAmount
			 from EquipTrans Et inner join Equipment e on e.EquipmentID=Et.EquipmentID
			 group by year(et.TransDate),e.EquipmentName, e.EquipmentID  
			 Having e.EquipmentID=1 or et.EquipmentID=21    --  I think it should be  WHERE
			 order by year(et.TransDate) --------- For equipment 1 and 21

----For all the equipments:

			  select datepart(year,Et.TransDate) year,e.EquipmentName, e.EquipmentID, sum(Et.GrossAmount) as TotalGrossAmount
			 from equipTrans Et inner join Equipment e on e.EquipmentID=Et.EquipmentID
			 group by year(et.TransDate),e.EquipmentName, et.EquipmentID  
			 order by year(et.TransDate), e.EquipmentID
								

	/*	
							
The expression ABS(CHECKSUM(NEWID())) % (DATEDIFF(DAY, @StartDate, @EndDate) + 1) is used to generate a random number of days within 
     the range defined by @StartDate and @EndDate.

Let's break it down:

DATEDIFF(DAY, @StartDate, @EndDate) + 1: This calculates the number of days between @StartDate and @EndDate, and then adds 1 to include 
both the start and end dates in the range.

ABS(CHECKSUM(NEWID())) % (DATEDIFF(DAY, @StartDate, @EndDate) + 1): This generates a random integer between 0 and DATEDIFF
(DAY, @StartDate, @EndDate) + 1 (inclusive). The CHECKSUM(NEWID()) function generates a random value based on the NEWID() function, and 
ABS() ensures it's a positive integer. The modulus operator % ensures that the random number generated falls within the range defined by 
the number of days between @StartDate and @EndDate.

DATEADD(DAY, ABS(CHECKSUM(NEWID())) % (DATEDIFF(DAY, @StartDate, @EndDate) + 1), @StartDate): This adds the randomly generated number of 
days to @StartDate, effectively giving a random date within the specified range.

By adding 1 to DATEDIFF(DAY, @StartDate, @EndDate) and using %, it ensures that the random number generated includes the end date as 
well and that it's within the correct range of days


*/