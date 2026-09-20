# Store Database

A small MySQL database for an electronics store. It stores products, their price, stock quantity and rating, and groups them into categories using a foreign key.

I built this project while learning SQL, to practice creating tables, relationships and `JOIN` queries.

## Database structure

### `categories`

| Column | Type         | Description            |
|--------|--------------|------------------------|
| id     | INT (PK)     | Category ID (auto)     |
| name   | VARCHAR(100) | Category name          |

### `products`

| Column      | Type          | Description                          |
|-------------|---------------|--------------------------------------|
| id          | INT (PK)      | Product ID (auto)                    |
| name        | VARCHAR(100)  | Product name                         |
| price       | DECIMAL(10,2) | Price                                |
| quantity    | INT           | Quantity in stock                    |
| rating      | INT           | Rating from 1 to 10                  |
| category_id | INT (FK)      | References `categories(id)`          |

### Relationship

Each product belongs to one category. Each category can contain many products.

```
categories (1) ────< (many) products
```

## Sample data

- 5 categories: Computer Peripherals, Audio, Computers, Storage, Accessories
- 15 products, for example Wireless Mouse, Mechanical Keyboard, 24 inch Monitor, 1TB External SSD

## How to run

Requirements: MySQL Server installed and running.

1. Clone the repository:

   ```bash
   git clone <repository-url>
   cd store-database
   ```

2. Run the SQL file:

   ```bash
   mysql -u your_user -p < store.sql
   ```

   The script creates the `store` database, drops the tables if they already exist, recreates them and inserts the data.

3. Check the result:

   ```bash
   mysql -u your_user -p -e "USE store; SELECT * FROM products;"
   ```

> Note: running the script again deletes and recreates the tables (`DROP TABLE IF EXISTS`), so any data you added manually will be lost.

## Example query

Show each product with its category:

```sql
SELECT products.name, categories.name AS category
FROM products
JOIN categories ON products.category_id = categories.id;
```

## What I practiced

- `CREATE TABLE`, `PRIMARY KEY` and `AUTO_INCREMENT`
- `FOREIGN KEY` relationships between tables
- `INSERT`, `SELECT` and `JOIN`
- Choosing data types (`DECIMAL` for prices, `VARCHAR` for text)
- Running SQL scripts from the terminal (WSL) and editing them in VS Code

## Tools

- MySQL
- WSL (Ubuntu)
- VS Code
- Git and GitHub
