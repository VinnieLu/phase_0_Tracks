

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
loop do
	puts "Please enter a username or type 'done':"
	userInput = gets.chomp
	break if userInput == "done"

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
end

#print current table
# p db.execute("SELECT * FROM entrance")

#Request old user name from user, and save it in a variable
puts "Enter a username to log in:"
userTry = gets.chomp

#Request old password from user, and save it in a variable
puts "Enter the password to log in:"
passTry = gets.chomp

#Retrieve old user name and password from entrance table
attempt = db.execute("SELECT entrance.password FROM entrance WHERE userName = (?)", [userTry])

#If retrievement is succesful, puts "You have succesfully entered website"
if passTry == attempt[0][0]
	puts "You have successfully entered website!"
else
	puts "Wrong password!"
end

# Ask the user for further commands
puts "Any other commands? Enter \"lost\" or \"edit\""
additionalCommands = gets.chomp

# IF the user entered "lost", ask them for a userName and provide the password for them.
if additionalCommands == "lost"
	puts "Request password for username:"
	userRequest = gets.chomp
	puts "The password for this user is:"
	puts db.execute("SELECT entrance.password FROM entrance WHERE userName = (?)", [userRequest])


# If the user entered "edit", ask them for a userName and let them alter the password.
elsif additionalCommands == "edit"
	puts "Request username to alter password of:"
	userNameRequest = gets.chomp
	puts "Enter new password:"
	newPassword = gets.chomp
	db.execute("UPDATE entrance SET password = (?) WHERE userName = (?)", [newPassword, userNameRequest])

end