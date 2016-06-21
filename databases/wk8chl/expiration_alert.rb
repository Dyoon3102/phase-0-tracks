# EXPIRATION ALERT
# This program is designed to give alerts on days left before a product's expiration

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
		expiration_date VARCHAR(255),
		type_id INT,
		FOREIGN KEY (type_id) REFERENCES types(id)
		)
SQL

# Create products table
db.execute(create_products_table)

# Define method to insert user input into the table
def insert_into_table(db, product, exp_date, prod_type)
	db.execute("INSERT INTO products (name, expiration_date, type_id) VALUES (?, ?, ?)",[product, exp_date, prod_type])
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
		puts "What is the expiration date? (Use YYYY-MM-DD format e.g. 2016-5-29)"
		exp_date = gets.chomp
		if exp_date == ""
			valid = false
			puts "Please make a valid input."
		else valid = true
		end
	end
		
	puts "What type of product is it? (1 for vegetable, 2 for fruit, 3 for meat, 4 for dairy, 5 medicine, 6 for other)"
	prod_type = gets.chomp.to_i
	insert_into_table(db, product, exp_date, prod_type)
end

# Display alert message
products = db.execute("SELECT * FROM products")
products.each do |product|
	days_left = (Time.parse(product['expiration_date']) - Time.now).to_i / 86400
	type = db.execute("SELECT types.name FROM types WHERE types.id=?", [product['type_id']])
	# p type['name']
	if days_left > 5
		puts "\nID: #{product['id']}\nProduct: #{product['name'].capitalize}\nType: #{type}\nExpiration date: #{product['expiration_date']}\n#{days_left} days left to expire.\n"
	elsif days_left >= 0
		puts "\nID: #{product['id']}\nProduct: #{product['name'].capitalize}\nType: #{type}\nExpiration date: #{product['expiration_date']}\nWARNING! This product expires in #{days_left} day(s).\n"
	else
		puts "\nID: #{product['id']}\nProduct: #{product['name'].capitalize}\nType: #{type}\nExpiration date: #{product['expiration_date']}\nPRODUCT EXPIRED! Removing from list.\nMake sure this product is disposed.\n"
		db.execute("DELETE FROM products WHERE id=?", [product['id']])
	end
end