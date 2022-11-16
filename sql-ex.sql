-- 1. Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd
select model, speed, hd from PC
where price < 500

-- 2. Найдите производителей принтеров. Вывести: maker
select maker from Product
where type = 'Printer'
group by maker

-- 3. Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.
select model, ram, screen from Laptop
where price > 1000

-- 4. Найдите все записи таблицы Printer для цветных принтеров.
select * from Printer
where color = 'y'

-- 5. Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.
select model, speed, hd from PC
where (cd = '12x' or cd = '24x') and price < 600

-- 6. Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов. Вывод: производитель, скорость.
select maker, speed from laptop, product
where hd >= 10 and product.model = laptop.model
order by speed

-- либо 

select maker, speed from laptop, product
where hd >= 10 and product.model = laptop.model
order by speed

-- 7. Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).
select product.model, price from product
left join (
select model, price from laptop
union
select model, price from PC
union
select model, price from printer) as new on new.model = product.model
where product.maker = 'B'

-- 8. Найдите производителя, выпускающего ПК, но не ПК-блокноты.

select distinct maker from product
where type = 'PC'
except
select distinct maker from product
where type = 'laptop'

-- 9. Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker
Select maker from Product
join PC on PC.model=Product.model
where speed >=450
group by maker

-- 10.  Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price
select model, price from Printer
WHERE price = (SELECT MAX(price) 
 FROM Printer)
 
-- 11. Найдите среднюю скорость ПК.
select avg(speed) from PC

-- 12. Найдите среднюю скорость ПК-блокнотов, цена которых превышает 1000 дол.
select avg(speed) from laptop
where price > 1000

-- 13. Найдите среднюю скорость ПК, выпущенных производителем A.
Select avg(PC.speed) from Product, PC
where Product.model=PC.model and Product.maker='A'

-- 14. Найдите класс, имя и страну для кораблей из таблицы Ships, имеющих не менее 10 орудий.
select Classes.Class, Ships.Name, Classes.country from Classes
join Ships on Classes.class=Ships.class
where numGuns>=10

-- 15. Найдите размеры жестких дисков, совпадающих у двух и более PC. Вывести: HD
select hd from PC
group by hd
having count(hd)>=2

-- 16. Найдите пары моделей PC, имеющих одинаковые скорость и RAM. В результате каждая пара указывается только один раз, т.е. (i,j), но не (j,i), Порядок вывода: модель с большим номером, модель с меньшим номером, скорость и RAM.
select distinct pc.model, pc2.model, pc.speed, pc.ram from PC
join PC pc2 on pc.model > pc2.model
and pc.speed = pc2.speed
and pc.ram = pc2.ram

-- 17. select product.type, laptop.model, laptop.speed from laptop
join product on product.model = laptop.model
where speed < ALL (SELECT speed
 FROM PC
)

-- или 

select product.type, laptop.model, laptop.speed from laptop, product
where speed < ALL (SELECT speed
 FROM PC
) and product.model = laptop.model

-- 18. Найдите производителей самых дешевых цветных принтеров. Вывести: maker, price

select maker, price from product
join printer on printer.model = product.model
where price = (SELECT MIN(price) priceA 
      FROM Printer 
      WHERE color ='y') and color='y' /*двойная проверка на color = плохо*/

-- 19. Для каждого производителя, имеющего модели в таблице Laptop, найдите средний размер экрана выпускаемых им ПК-блокнотов. Вывести: maker, средний размер экрана.

select maker, AVG(screen) Avg_screen from laptop l
join product p on p.model = l.model
group by maker
      
-- 20. Найдите производителей, выпускающих по меньшей мере три различных модели ПК. Вывести: Maker, число моделей ПК.

select maker, count(model) Count_Model from product
where type = 'PC'
group by maker
having count(model) >= 3

