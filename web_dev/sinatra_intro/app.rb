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



# <--------RELEASE 0-------->
# 1.
get '/contact' do
	"4500 E. Oltorf St. #112, Austin, TX 78741"
end

# 2.
get '/great_job/' do
	name = params[:name]
	if name
		"Good job, #{name}!"
	else
		"Good job!"
	end
end

# 3.
get '/add/:num_one/:num_two' do
	num_one = params[:num_one]
	num_two = params[:num_two]
	answer = num_one.to_i + num_two.to_i
	answer.to_s
end

# 4.
get '/students/age/:age' do
	student = db.execute("SELECT * FROM students WHERE Age=?", [params[:age]])
	student.to_s
end



# <--------RELEASE 1-------->
# 1. Ruby on Rails, Volt, Sinatra, Rack, Padrino, Cramp, Cuba, Merb.

# 2. No, they are not the only options. You could also try Mongo, PostgreSQL, ActiveRecord, Datamapper, Sinatra Sequel Extension.

# 3. A web stack is the collection of software programs require for web development. At its most basic, you need an operating system, a programming language, database software and a web server. LAMP is the most commonly used web stack, consisting of Linux as the operating system, Apache as the web server, MySQL as the relational database management system, and PHP as the object-oriented scripting.









