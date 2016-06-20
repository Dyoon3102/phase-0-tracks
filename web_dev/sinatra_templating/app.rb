# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/students/update_campus' do
	erb :update_campus
end

# create new students via
# a form
post '/student_new' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

post '/campus_update' do
	db.execute("UPDATE students SET campus=? WHERE name=?", [params['campus'], params['name']])
	redirect '/'
end

# add static resources