# Expiration alert
# This program is designed to give alerts when a purchased product nears its expiration date
# Require gems
require 'sqlite3'

# Create SQLite3 database
db = SQLite3::Database.new("alert.db")
db.results_as_hash = true

# Use string delimiter to create products table
create_products_table = <<-SQL
	CREATE TABLE IF NOT EXISTS products (
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		purchase_date VARCHAR(255),
		expiration_date VARCHAR(255),
		type_id INT,
		FOREIGN KEY (type_id) REFERENCES types(id)
		)
SQL

# create_types_table = <<-SQL
# 	CREATE TABLE types (
# 		id INTEGER PRIMARY KEY,
# 		name VARCHAR(255)
# 		)
# SQL

# Create products table
db.execute(create_products_table)

# Create types table
# db.execute(create_types_table)

# Add available types of products
# db.execute("INSERT INTO types (name) VALUES ('vegetable'), ('fruit'), ('meat'), ('dairy'), ('medicine'), ('other')")

# product = db.execute("SELECT * FROM products")
# puts product.class
# p product

# Create user input 
loop do
	puts "Would you like to add a product? (type yes or no)"
	answer = gets.chomp
	if answer == "no"
		break
	end
	puts "Which product would you like to add?"
	product = gets.chomp
	puts "What is the purchase date? Use YYYY,MM,DD format e.g. 2015, 11, 7"
	purch_date = gets.chomp
	puts "What is the expiration date? Use YYYY,MM,DD format e.g. 2016, 5, 29"
	exp_date = gets.chomp
	puts "What type of product is it? (1 for vegetable, 2 for fruit, 3 for meat, 4 for dairy, 5 medicine, 6 for other)"
	prod_type = gets.chomp.to_i
	db.execute("INSERT INTO products (name, purchase_date, expiration_date, type_id) VALUES (?, ?, ?, ?)",[product, purch_date, exp_date, prod_type])
end

 #((Time.now - Time.new(2016, 6, 1)).to_i) / 86400

# Explore ORM by retrieving data
# products = db.execute("SELECT * FROM products")
# products.each do |product|
# 	puts "#{product['name'].capitalize} was purchased on #{product['purchase_date']} and expires on #{product['expiration_date']}"
# end












