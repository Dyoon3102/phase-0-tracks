# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# Relase 0:
# write a GET route that displays an address
get '/contact' do
  "2606 Mill Street, Woodbridge, VA 22191"
end

# write a GET route that takes a person's name as a parameter
# and displays a message
get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

# write a GET route that uses route parameters to add 
# two numbers and respond with the result
get '/:first_num/plus/:second_num' do
  result = params[:first_num].to_i + params[:second_num].to_i
  "#{result}"
end

# OPTIONAL BONUS: write a GET route that allows user
# to search the database with a keyword
get '/campus/:campus' do
  student = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]])
  student.to_s
end

# Release 1: 
# Is Sinatra the only web app library in Ruby? What are some others?
# No, there are other web apps (frameworks) for ruby such as: Rails, Racks, Padrino, Cuba and so on

# Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others?
# No, there are others such as: Active Record, Couchdb, Data Mapper, Mongo, Ohm, and Sequel.

# What is meant by the term web stack?
# The term used to refer to software stacks in Web development environments. The stack of software, mainly comprised of open source software, will contain an operating system, Web server, database server, and programming language.