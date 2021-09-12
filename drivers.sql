SELECT driver.last_name, COUNT(car.brand)
FROM driver
JOIN car_driver ON driver.id = car_driver.driver_id
JOIN car ON car.id = car_driver.car_id 
WHERE YEAR(driver.birth_date) >= 1995
AND car.brand LIKE 'Honda'
GROUP BY car.brand 
HAVING COUNT(car.brand) >= 2;