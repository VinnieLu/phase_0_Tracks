

#Require sqlite3 gem
require "sqlite3"

#Create entrance database initilization code
db = SQLite3::Database.new("entrance.db")

#Create CREATE TABLE code with a string delimiter
create_table_cmd = <<-SQLite3
	CREATE TABLE IF NOT EXISTS entrance (
		id INTEGER PRIMARY KEY,
		userName VARCHAR(255),
		password VARCHAR(255)
	)
SQLite3

#Create an entrance table
db.execute(create_table_cmd)

#Prompt user for a username, and save it to a variable
puts "Please enter a username:"
userInput = gets.chomp

#Prompt user for a password, and save it to a variable
puts "Please enter a password:"
passInput = gets.chomp

#Add a test user
# db.execute("INSERT INTO entrance (userName, password) VALUES (?, ?)", [userInput, passInput])

#INSERT name and password into the entrance table
def create_user(db, user, pass)
	db.execute("INSERT INTO entrance (userName, password) VALUES (?, ?)", [user, pass])
end

create_user(db, userInput, passInput)

#Request old user name from user, and save it in a variable

#Request old password from user, and save it in a variable

#Retrieve old user name and password from entrance table

#If retrievement is succesful, puts "You have succesfully entered website"

