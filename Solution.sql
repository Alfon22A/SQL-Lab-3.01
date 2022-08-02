-- Activity 1

-- 	Drop column picture from staff.
    
USE sakila;

ALTER TABLE staff
DROP picture;

/*	A new person is hired to help Jon.
	Her name is TAMMY SANDERS, and she is a customer.
    Update the database accordingly.
*/

SELECT * FROM customer
WHERE first_name = "Tammy";

INSERT INTO staff
VALUES(3,"Tammy","Sanders",79,"Tammy.Sanders@sakilacustomer.org",2,1,"Tammy","TammySanders2","2006-02-15 04:57:20");
  
/*	Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1.
	You can use current date for the rental_date column in the rental table.
    Hint: Check the columns in the table rental and see what information you would need to add there.
    You can query those pieces of information. For eg., you would notice that you need customer_id information as well.
    To get that you can use the following query:

		SELECT customer_id FROM sakila.customer
		WHERE first_name = 'CHARLOTTE' AND last_name = 'HUNTER';
        
	Use similar method to get inventory_id, film_id, and staff_id.
*/

SELECT * FROM customer
WHERE first_name = "Charlotte";

SELECT * FROM film
WHERE title = "Academy Dinosaur";

SELECT * FROM inventory
WHERE film_id = 1;

SELECT * FROM staff
WHERE first_name = "Mike";

INSERT INTO rental(rental_date,inventory_id,customer_id,return_date,staff_id,last_update)
VALUES(NOW(),1,130,DATE_ADD(NOW(), INTERVAL 3 DAY),1,"2006-02-15 04:57:20");

/* Activity 2

	Use dbdiagram.io or draw.io to propose a new structure for the Sakila database.
	Define primary keys and foreign keys for the new database.
*/