# MySQL Question
Here are two MySQL tables in the same database, `users` and `emails`:
#### users
| id  | username  | 
| --- | --------- | 
| 12  | moose     | 
| 25  | rat       | 
 
#### emails
| id  | email_address       | user_id |
| --- | ------------------- | ------  |
| 3   | moose@gmail.com     | 12      |
| 5   | rat@yahoo.com       | 25      |
| 8   | goat@protonmail.com | 12      |

Using a SQL JOIN clause, What is the query needed to SELECT all the `email_addresses` and `usernames` associated to the user with the `id 12`?
