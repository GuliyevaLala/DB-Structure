CREATE DATABASE BuukStore

Use BuukStore

create table Book(
Id int primary key identity,
Title nvarchar(70),
Info nvarchar(650),
Price decimal,
Discount decimal,
Photo nvarchar(70),
Cover smallint,
InStock int, 
PageCount smallint,
Date datetime2,
PublisherID int foreign key references Publisher(ID),
ReviewID int foreign key references Review(ID),
LanguageId int foreign key references Language(ID),
CategoryID int foreign key references Category(ID)
)
create table Publisher(
ID int primary key identity,
Name nvarchar(50)
)
create table Review(
ID int primary key identity,
Text nvarchar(650),
[Date] datetime
)
alter table Review
add UserID int foreign key references Useer(ID)

 
create table Language(
ID int primary key identity,
LangName nvarchar(60)
)
create table Category(
ID int primary key identity,
Name nvarchar(60)
)

create table Useer( --user adini accept etmedi idk
ID int primary key identity,
Nickname nvarchar(100),
Fullname nvarchar(100),
Email nvarchar(100) unique,
Age smallint,
Photo nvarchar(60)
)

create table Orderr(
ID int primary key identity,
Date datetime,
Price decimal,
--SpecialDiscount smallint foreign key references Book(Discount),
UserID int foreign key references Useer(ID)

)

create table BookOrder(
Id int primary key identity,
BookId int foreign key references Book(ID),
OrderId int foreign key references Orderr(ID),
)
create table Author(
ID int primary key identity,
Fullname nvarchar(100)
)

create table AuthorsBook(
ID int primary key identity,
BookID int foreign key references Book(ID),
AuthorID int foreign key references Author(ID),
ReviewID int foreign key references Review(ID)
)

create table Settings(
ID int primary key identity,
Logo nvarchar(70),
NavigationBar nvarchar(70),
Language nvarchar(70),
SignIn nvarchar(70),
Cart nvarchar(70)
)
