--Raymond Ivey

--12/18/2019

--Populates Tables with example data for the purpose of learning
--To be used with LearningStoreDesign

delete from Store;
delete from Employee;
delete from Employee_Phone;
delete from Full_Time;
delete from Part_Time;
delete from Customer;
delete from Customer_Phone;
delete from Game_room;
delete from Products;
delete from Transactions;


insert into Store
values
('11111', '2533236444', 'store1@gmail.com');

insert into Store
values
('22222', '2538886666', 'store2@gmail.com');

insert into Store
values
('33333', '3257775555', 'store3@gmail.com');
insert into Store
values
('44444', '2534443232', 'store4@gmail.com');

insert into Store
values
('55555', '3256568484', 'store5@gmail.com');

insert into Store
values
('66666', '3257474343', 'store6@gmail.com');

insert into Store
values
('77777', '2532129090', 'store7@gmail.com');

insert into Store
values
('88888', '2530901212', 'store8@gmail.com');

insert into Store
values
('99999', '3258182323', 'store9@gmail.com');

insert into Store
values
('00000', '3251013434', 'store0@gmail.com');


insert into Employee
values
('111222', 'Steve', 'Smith', '11111', 'F');

insert into Employee
values
('111333', 'John', 'Cena', '11111', 'F');

insert into Employee
values
('111444', 'Toby', 'Anderson', '11111', 'F');

insert into Employee
values
('111555', 'Susan', 'Stanley', '11111', 'P');

insert into Full_Time
values
('111222', '5', '2', '10.00');

insert into Full_Time
values
('111333', '2', '5', '12.00');

insert into Full_Time
values
('111444', '3', '3', '11.00');

insert into Part_Time
values
('111555', '30');


insert into Employee
values
('222111', 'Will', 'Mosby', '22222', 'F');

insert into Employee
values
('222333', 'Tana', 'Mosby', '22222', 'F');

insert into Employee
values
('222444', 'Tony', 'Sanderson', '22222', 'P');

insert into Employee
values
('222555', 'Maria', 'Moropovitch', '22222', 'F');

insert into Full_Time
values
('222111', '10', '5', 16.00);

insert into Full_Time
values
('222333', '5', '2', 10.00);

insert into Full_Time
values
('222555', '5', '2', 10.00);

insert into Part_Time
values
('222444', '25');


insert into Employee
values
('333111', 'Sandra', 'Altia', '33333', 'P');

insert into Employee
values
('333222', 'Felix', 'Smith', '33333', 'F');

insert into Employee
values
('333444', 'Haruna', 'Daijoubu', '33333', 'F');

insert into Employee
values
('333555', 'General', 'Rommel', '33333', 'F');

insert into Full_Time
values
('333222', '1', '3', 10.00);

insert into Full_Time
values
('333444', '15', '5', 19.00);

insert into Full_Time
values
('333555', '3', '2', 11.00);

insert into Part_Time
values
('333111', '40');


insert into Employee
values
('444111', 'Alexander', 'Touru', '44444', 'F');

insert into Employee
values
('444222', 'Yami', 'Yugi', '44444', 'F');

insert into Employee
values
('444333', 'General', 'Patton', '44444', 'P');

insert into Employee
values
('444555', 'Tails', 'Prower', '44444', 'F');

insert into Full_Time
values
('444111', '20', '4', 20.00);

insert into Full_Time
values
('444222', '10', '1', 13.00);

insert into Full_Time
values
('444555', '1', '3', 10.00);

insert into Part_Time
values
('444333', '25');


insert into Employee
values
('555111', 'Sara', 'Forun', '55555', 'P');

insert into Employee
values
('555222', 'Miles', 'Sooner', '55555', 'F');

insert into Employee
values
('555333', 'Randy', 'Orton', '55555', 'F');

insert into Employee
values
('555444', 'The', 'Flash', '55555', 'F');

insert into Full_Time
values
('555222', '15', '5', 17.00);

insert into Full_Time
values
('555333', '3', '3', 11.00);

insert into Full_Time
values
('555444', '8', '2', 12.00);

insert into Part_Time
values
('555111', '10');


insert into Employee
values
('666111', 'Dash', 'Toon', '66666', 'F');

insert into Employee
values
('666222', 'Marisa', 'Kirisame', '66666', 'F');

insert into Employee
values
('666333', 'Reimu', 'Hakurei', '66666', 'F');

insert into Employee
values
('666444', 'Yukari', 'Yakumo', '66666', 'F');

insert into Full_Time
values
('666111', '8', '2', 12.00);

insert into Full_Time
values
('666222', '1', '1', 10.00);

insert into Full_Time
values
('666333', '19', '3', 19.00);

insert into Full_Time
values
('666444', '2', '5', 12.00);


insert into Employee
values
('777111', 'Pasta', 'Baka', '77777', 'F');

insert into Employee
values
('777222', 'Yuuka', 'Kazami', '77777', 'F');

insert into Employee
values
('777333', 'Super', 'Man', '77777', 'P');

insert into Employee
values
('777444', 'Cirno', 'Strongest', '77777', 'F');

insert into Full_Time
values
('777111', '20', '5', 22.00);

insert into Full_Time
values
('777222', '6', '4', 15.00);

insert into Full_Time
values
('777444', '6', '1', 13.00);

insert into Part_Time
values
('777333', '35');


insert into Employee
values
('888111', 'Alice', 'Margatroid', '88888', 'P');

insert into Employee
values
('888222', 'Martian', 'Manhunter', '88888', 'P');

insert into Employee
values
('888333', 'Anakin', 'Skywalker', '88888', 'F');

insert into Employee
values
('888444', 'Luke', 'Skywalker', '88888', 'F');

insert into Full_Time
values
('888333', '10', '2', 14.00);

insert into Full_Time
values
('888444', '5', '4', 13.00);

insert into Part_Time
values
('888111', '20');

insert into Part_Time
values
('888222', '15');


insert into Employee
values
('999111', 'Ulgar', 'Ti', '99999', 'F');

insert into Employee
values
('999222', 'Tia', 'Smith', '99999', 'F');

insert into Employee
values
('999333', 'Sam', 'Young', '99999', 'P');

insert into Employee
values
('999444', 'Leroy', 'Tum', '99999', 'F');

insert into Full_Time
values
('999111', '5', '4', 13.00);

insert into Full_Time
values
('999222', '9', '2', 14.00);

insert into Full_Time
values
('999444', '15', '3', 16.00);

insert into Part_Time
values
('999333', '30');



insert into Employee
values
('000111', 'Samantha', 'Itami', '00000', 'F');

insert into Employee
values
('000222', 'Hatsune', 'Miku', '00000', 'F');

insert into Employee
values
('000333', 'Mr', 'Anderson', '00000', 'F');

insert into Employee
values
('000444', 'Tina', 'Gardener', '00000', 'F');

insert into Full_Time
values
('000111', '20', '5', 22.00);

insert into Full_Time
values
('000222', '10', '2', 13.00);

insert into Full_Time
values
('000333', '9', '1', 12.00);

insert into Full_Time
values
('000444', '2', '4', 12.00);


insert into Employee_Phone
values
('888111', '6145551111');

insert into Employee_Phone
values
('888111', '6143235555');

insert into Employee_Phone
values
('666222', '6148889999');

insert into Employee_Phone
values
('000333', '6141113333');

insert into Employee_Phone
values
('000333', '6142225555');

insert into Employee_Phone
values
('333222', '6149099999');

insert into Employee_Phone
values
('444111', '6147772222');

insert into Employee_Phone
values
('555333', '6144443221');

insert into Employee_Phone
values
('999333', '6140001010');

insert into Employee_Phone
values
('999333', '6148939021');



insert into Game_room
values
('11', '5', '111222');

insert into Game_room
values
('12', '8', '111333');

insert into Game_room
values
('13', '9', '111444');


insert into Game_room
values
('21', '4', '222111');

insert into Game_room
values
('22', '12', '222333');

insert into Game_room
values
('23', '15', '222444');


insert into Game_room
values
('31', '5', '333111');

insert into Game_room
values
('32', '10', '333444');


insert into Game_room
values
('41', '17', '444111');

insert into Game_room
values
('42', '4', '444333');

insert into Game_room
values
('43', '10', '444555');


insert into Game_room
values
('61', '10', '666111');

insert into Game_room
values
('62', '5', '666333');


insert into Game_room
values
('71', '9', '777222');

insert into Game_room
values
('72', '5', '777444');


insert into Game_room
values
('81', '20', '888333');

insert into Game_room
values
('82', '8', '888222');


insert into Game_room
values
('91', '8', '999111');

insert into Game_room
values
('92', '12', '999333');


insert into Customer
values
('7774444', 'Sammir', 'Duran', 'sammird@gmail.com', '61');

insert into Customer
values
('6665555', 'Yuki', 'Teru', 'YukiTe@gmail.com', '71');

insert into Customer
values
('8882222', 'Saratoga', 'Kai', 'SisterSara@gmail.com', '22');

insert into Customer
values
('9991111', 'Lego', 'Sooner', 'LegoSo@gmail.com', '31');

insert into Customer
values
('3338888', 'Darcy', 'Toller', 'DarcyTo@gmail.com', '43');

insert into Customer
values
('4442222', 'Stefania', 'Uller', 'StefaniaUll@gmail.com', '91');

insert into Customer
values
('1113333', 'Olaf', 'Laurel', 'OlafLaurel@gmail.com', '13');

insert into Customer
values
('5559999', 'Benji', 'Greyson', 'BenjiGrey@gmail.com', '62');

insert into Customer
values
('0002222', 'Verity', 'Ender', 'VerityEn@gmail.com', '92');

insert into Customer
values
('3332222', 'Jean', 'Aston', 'JeanAst@gmail.com', '23');


insert into Customer_Phone
values
('7774444', '2534441111');

insert into Customer_Phone
values
('7774444', '2539990000');

insert into Customer_Phone
values
('7774444', '2531212121');

insert into Customer_Phone
values
('0002222', '2539093323');

insert into Customer_Phone
values
('5559999', '2530292030');

insert into Customer_Phone
values
('5559999', '2534530921');

insert into Customer_Phone
values
('0002222', '2538390293');

insert into Customer_Phone
values
('0002222', '2533920293');

insert into Customer_Phone
values
('3332222', '2533429102');


insert into Products
values
('111', 'dice', 100);

insert into Products
values
('222', 'cards packs', 150);

insert into Products
values
('333', 'board games', 200);

insert into Products
values
('444', 'accessories', 400);


insert into Transactions
values
('10101010', '0002222', '11111');

insert into Transactions
values
('21212121', '1113333', '11111');

insert into Transactions
values
('34343434', '3332222', '44444');

insert into Transactions
values
('56565656', '7774444', '33333');

insert into Transactions
values
('78787878', '8882222', '11111');

insert into Transactions
values
('09090909', '8882222', '66666');

insert into Transactions
values
('86341930', '6665555', '44444');

insert into Transactions
values
('93023493', '6665555', '88888');

insert into Transactions
values
('32023984', '5559999', '11111');

insert into Transactions
values
('58349342', '3332222', '22222');


insert into Sold
values
('10101010', '111', 5);

insert into Sold
values
('21212121', '222', 10);

insert into Sold
values
('34343434', '111', 7);

insert into Sold
values
('56565656', '333', 15);

insert into Sold
values
('78787878', '444', 2);

insert into Sold
values
('09090909', '222', 25);

insert into Sold
values
('86341930', '444', 4);

insert into Sold
values
('93023493', '333', 8);

insert into Sold
values
('32023984', '111', 14);

insert into Sold
values
('58349342', '222', 10);


insert into Stock
values
('11111', '111', 100);

insert into Stock
values
('11111', '222', 250);

insert into Stock
values
('11111', '444', 150);


insert into Stock
values
('22222', '333', 300);

insert into Stock
values
('22222', '222', 40);


insert into Stock
values
('33333', '222', 400);

insert into Stock
values
('33333', '444', 175);

insert into Stock
values
('33333', '111', 75);


insert into Stock
values
('44444', '333', 160);

insert into Stock
values
('44444', '222', 400);

insert into Stock
values
('44444', '444', 20);


insert into Stock
values
('66666', '111', 100);

insert into Stock
values
('66666', '222', 25);

insert into Stock
values
('66666', '333', 85);


insert into Stock
values
('77777', '111', 225);

insert into Stock
values
('77777', '333', 65);


insert into Stock
values
('88888', '222', 25);

insert into Stock
values
('88888', '444', 55);

insert into Stock
values
('88888', '333', 105);


insert into Stock
values
('99999', '111', 180);

insert into Stock
values
('99999', '333', 700);


insert into Stock
values
('00000', '222', 325);

insert into Stock
values
('00000', '444', 480);

insert into Stock
values
('00000', '111', 155);
