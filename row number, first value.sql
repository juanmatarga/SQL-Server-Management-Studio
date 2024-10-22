
CREATE TABLE ventas (
    idvendedor INT,
    ciudad VARCHAR(50),
    pais VARCHAR(50),
    cuota_ventas MONEY,
    comision MONEY,
    ven_ult_anio MONEY,
    fecha DATE
);

INSERT INTO ventas (idvendedor, ciudad, pais, cuota_ventas, comision, ven_ult_anio, fecha)
VALUES
    (1, 'Buenos Aires', 'Argentina', 2500.00, 150.00, 785432, '2019-05-10'),
    (2, 'Rosario', 'Argentina', 3800.00, 230.00, 623591, '2020-07-22'),
    (3, 'C�rdoba', 'Argentina', 4200.00, 250.00, 752164, '2021-09-14'),
    (4, 'Mendoza', 'Argentina', 3100.00, 190.00, 926532, '2022-12-01'),
    (5, 'Mar del Plata', 'Argentina', 2700.00, 160.00, 531246, '2023-03-29'),
    (6, 'Sao Paulo', 'Brasil', 2900.00, 180.00, 654821, '2018-11-05'),
    (7, 'R�o de Janeiro', 'Brasil', 4100.00, 240.00, 719638, '2019-10-18'),
    (8, 'Belo Horizonte', 'Brasil', 3600.00, 210.00, 897421, '2020-08-27'),
    (9, 'Salvador', 'Brasil', 3800.00, 220.00, 613579, '2021-06-02'),
    (10, 'Fortaleza', 'Brasil', 3200.00, 190.00, 735214, '2022-04-14'),
    (11, 'Ciudad de M�xico', 'M�xico', 2700.00, 160.00, 926485, '2019-01-07'),
    (12, 'Guadalajara', 'M�xico', 3500.00, 210.00, 598723, '2020-02-21'),
    (13, 'Monterrey', 'M�xico', 3900.00, 230.00, 813579, '2021-03-17'),
    (14, 'Puebla', 'M�xico', 3200.00, 190.00, 754921, '2022-06-10'),
    (15, 'Tijuana', 'M�xico', 2900.00, 170.00, 629348, '2023-09-03'),
    (16, 'Lima', 'Per�', 2800.00, 160.00, 832457, '2018-12-15'),
    (17, 'Arequipa', 'Per�', 3300.00, 200.00, 746921, '2019-11-27'),
    (18, 'Trujillo', 'Per�', 3600.00, 210.00, 925317, '2020-10-09'),
    (19, 'Chiclayo', 'Per�', 3100.00, 180.00, 618493, '2021-08-22'),
    (20, 'Cusco', 'Per�', 3000.00, 170.00, 743215, '2022-07-05'),
    (21, 'Rosario', 'Argentina', 2900.00, 180.00, 675821, '2019-08-05'),
    (22, 'C�rdoba', 'Argentina', 3100.00, 190.00, 743216, '2020-09-18'),
    (23, 'Mendoza', 'Argentina', 2500.00, 150.00, 562714, '2021-11-02'),
    (24, 'Mar del Plata', 'Argentina', 2700.00, 160.00, 891457, '2022-12-30'),
    (25, 'Sao Paulo', 'Brasil', 3800.00, 220.00, 725913, '2018-10-10'),
    (26, 'R�o de Janeiro', 'Brasil', 3600.00, 210.00, 914573, '2019-12-22'),
    (27, 'Belo Horizonte', 'Brasil', 3200.00, 190.00, 671942, '2020-08-05'),
    (28, 'Salvador', 'Brasil', 3100.00, 180.00, 859613, '2021-05-19'),
    (29, 'Fortaleza', 'Brasil', 2800.00, 170.00, 612374, '2022-03-03'),
    (30, 'Ciudad de M�xico', 'M�xico', 3900.00, 230.00, 759281, '2019-04-15'),
    (31, 'Guadalajara', 'M�xico', 3700.00, 220.00, 923671, '2020-06-29'),
    (32, 'Monterrey', 'M�xico', 3300.00, 200.00, 674192, '2021-08-13'),
    (33, 'Puebla', 'M�xico', 3000.00, 180.00, 842519, '2022-11-01'),
    (34, 'Tijuana', 'M�xico', 2600.00, 160.00, 536192, '2023-02-25'),
    (35, 'Lima', 'Per�', 3100.00, 190.00, 753219, '2019-01-12'),
    (36, 'Arequipa', 'Per�', 3300.00, 200.00, 924617, '2020-02-24'),
    (37, 'Trujillo', 'Per�', 3400.00, 200.00, 691534, '2021-04-08'),
    (38, 'Chiclayo', 'Per�', 2900.00, 170.00, 813597, '2022-06-22'),
    (39, 'Cusco', 'Per�', 2700.00, 160.00, 576921, '2023-08-06'),
    (40, 'Santiago', 'Chile', 3200.00, 190.00, 748315, '2018-09-20');

select * from(
				select row_number() over(order by a.ven_ult_anio desc) as contador,
				a.idvendedor, a.ven_ult_anio from ventas a) as a
				where a.contador = 1;

select * from ventas a
	where a.idvendedor = (
						select distinct first_value(a.idvendedor) 
						over(order by a.ven_ult_anio desc) as contador
						from ventas a);
