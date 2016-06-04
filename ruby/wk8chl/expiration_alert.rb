# Expiration alert
# Require gems
require 'sqlite3'

# Create SQLite3 database
db = SQLite3::Database.new("kittens.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
	CREATE TABLE 
