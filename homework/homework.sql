---------------------------------------------------- SELECT
-- select all staff order by first_name,
SELECT 
	* 
	FROM staff
	ORDER BY first_name

-- select all payment order by amount desc
SELECT 
	* 
	FROM payment
	ORDER BY amount DESC

-- select all addresses order by postal_code asc
SELECT 
	* 
	FROM address
	ORDER BY postal_code

----------------------------------------------------- JOIN
-- Select all customers ad join their addresses.
ELECT 
	first_name || ' , ' || last_name AS name, address
	FROM customer
	JOIN address ON address.address_id = customer.address_id

-- Select all stores and join their addresses.
SELECT 
	store_id AS store, address
	FROM store
	JOIN address ON address.address_id = store.address_id

-- Select all stores and join staff using manager_staff_id
SELECT 
	*
	FROM store
	JOIN staff ON staff.store_id = store.manager_staff_id
-- OR
SELECT 
	*, staff
	FROM store
	JOIN staff ON staff.store_id = store.manager_staff_id

-- Select all addresses join cities
 SELECT 
	address, district, phone, city
	FROM address
	JOIN city ON city.city_id = address.city_id


----------------------------------------------------- GROUP BY
-- find total payment by date
-- find average payment
-- sum all payments