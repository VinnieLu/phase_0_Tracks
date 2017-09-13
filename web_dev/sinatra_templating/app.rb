# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

campuses = SQLite3::Database.new("campuses.db")
campuses.results_as_hash = true

# create campuses table
campuses.execute("CREATE TABLE IF NOT EXISTS campuses (
	id INTEGER PRIMARY KEY,
	campus VARCHAR(255)
	);")

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  @campuses = campuses.execute("SELECT * FROM campuses")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/awesome' do
	erb :awesome
end

get '/add_students' do
	erb :add_students
end

get '/add_campus' do
	erb :add_campus
end

post '/add_campus' do
	campuses.execute('INSERT INTO campuses (campus) VALUES (?)', [params['campus']])
	redirect '/'
end

post '/add_students' do
	db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

post '/awesome' do
	db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['awesome'], params['moreAwesome'], params['mostAwesome']])
	db.execute("INSERT INTO campuses (city) VALUES (?)", [params['city']])
	redirect '/'
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources