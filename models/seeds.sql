USE ToolRental;


insert into CustomerCredentials
    (FK_CustomerID, UserName, Password)
VAlues
    ('1', 'Emanuel', 'password');


insert into Customer
    (Name, Phone, Street, City, State, Country, Zipcode)
Values
    ('Emanuel', '703-555-555', 'Little River', 'Annandale', 'VA', 'USA', '22003');



insert into Product
    (ProductID, Product_Name, SupplierID, UnitPrice, UnitsInStock, UnitsOnOrder, Availability, Image, FK_CategoryID)
Values
    (1, 'Hammer', 1, 10, 20, 3, 1, 'https://www.google.com/url?sa=i&source=images&cd=&ved=2ahUKEwiO57TA8c3gAhVMhuAKHWPxBGAQjRx6BAgBEAU&url=https%3A%2F%2Fwww.shutterstock.com%2Fsearch%2Fhammer&psig=AOvVaw1PUQEZ82J6sKur6KD1umb2&ust=1550874936965842', 1);