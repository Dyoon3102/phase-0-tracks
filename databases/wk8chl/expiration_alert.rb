# EXPIRATION ALERT
# This program is designed to give alerts when a purchased product nears its expiration date

# Require gems
require 'sqlite3'
require 'time'

# Create SQLite3 database
db = SQLite3::Database.new("alert.db")
db.results_as_hash = true

# Use string delimiter that creates products table
create_products_table = <<-SQL
	CREATE TABLE IF NOT EXISTS products (
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		purchase_date VARCHAR(255),
		expiration_date VARCHAR(255),
		days_left INT,
		type_id INT,
		FOREIGN KEY (type_id) REFERENCES types(id)
		)
SQL

# Create products table
db.execute(create_products_table)

# Define method to insert user input into the table
def insert_into_table(db, product, purch_date, exp_date, days_left, prod_type)
	db.execute("INSERT INTO products (name, purchase_date, expiration_date, days_left, type_id) VALUES (?, ?, ?, ?, ?)",[product, purch_date, exp_date, days_left, prod_type])
end

# Create user input 
loop do
	puts "Would you like to add a product? (type yes or no or clear to clear list)"
	answer = gets.chomp
	if answer == "no"
		break
	elsif answer == "clear"
		db.execute("DELETE FROM products")
		break
	end

	valid = false
	until valid
		puts "Which product would you like to add?"
		product = gets.chomp
		if product == ""
			valid = false
			puts "Please make a valid input."
		else valid = true
		end
	end

	valid = false
	until valid
		puts "What is the purchase date? Use YYYY-MM-DD format e.g. 2015-11-7"
		purch_date = gets.chomp
		if purch_date == ""
			valid = false
			puts "Please make a valid input."
		else valid = true
		end
	end

	valid = false
	until valid
		puts "What is the expiration date? Use YYYY-MM-DD format e.g. 2016-5-29"
		exp_date = gets.chomp
		if exp_date == ""
			valid = false
			puts "Please make a valid input."
		else valid = true
		end
		days_left = ((Time.parse(exp_date) - Time.now).to_i) / 86400
	end
		
	puts "What type of product is it? (1 for vegetable, 2 for fruit, 3 for meat, 4 for dairy, 5 medicine, 6 for other)"
	prod_type = gets.chomp.to_i

	insert_into_table(db, product, purch_date, exp_date, days_left, prod_type)
end

# Display alert message
products = db.execute("SELECT * FROM products")
products.each do |product|
	if product['days_left'] > 5
		puts "The #{product['name']} purchased on #{product['purchase_date']} have #{product['days_left']} days before expiration."
	elsif product['days_left'] >= 0
		puts "WARNING: The #{product['name']} purchased on #{product['purchase_date']} only have #{product['days_left']} days before expiration."
	elsif
		puts "PRODUCT EXPIRED, do not use #{product['name']} purchased on #{product['purchase_date']} and please dispose of it."
	end
end