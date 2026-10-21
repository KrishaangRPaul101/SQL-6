Create Table If Not Exists Restaurant(
    Name Text,
    Neighborhood Text,
    Cuisine Text,
    Review Real,
    Price Text,
    Health Text
);

Insert Into Restaurant (Name,Neighborhood,Cuisine,Review,Price,Health) Values
('Peter','Brooklyn','Steak',4.4,'$$$$','A'),
('Jongro','Midtown','Korean',3.5,'$$','A'),
('Pocha','Midtown','Pizza',4.0,'$$$','B'),
('Lighthouse','Queens','Chinese',3.9,'$','A'),
('Minca','Downtown','American',4.6,'$$$',''),
('Marea','Chinatown','Chinese',3.0,'$$',''),
('Dirty Candy','Uptown','Italian',4.9,'$$$$','B'),
('Di Fara Pizza','Brooklyn','Pizza',3.8,'$$','A'),
('Golden Unicorn','Uptown','Italian',3.8,'$$','A');

Select * From Restaurant;

Select Distinct Neighborhood From Restaurant;
Select Distinct Cuisine From Restaurant;
Select * From Restaurant Where Cuisine = 'Chinese';
Select * From Restaurant Where Review >= 4.0;
Select * From Restaurant Where Cuisine = 'Italian' And Price In ('$$', '$$$');
Select * From Restaurant Where Price = '$$$';
Select * From Restaurant Where Name Like '%Candy%';
Select * From Restaurant Where Neighborhood In ('Midtown', 'Downtown', 'Chinatown');
Select * From Restaurant Where Health = '' Or Health Is Null;
Select * From Restaurant Order By Review Desc Limit 4;
