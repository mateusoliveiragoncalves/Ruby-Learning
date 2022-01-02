require 'colorize'
# users array where username and password are stored
users = [
    {username: "mashur", password: "password1"},
    {username: "jack", password: "password2"},
    {username: "arya", password: "password3"},
    {username: "jonsnow", password: "password4"},
    {username: "heisenberg", password: "password5"}
]

# authentucation method to check and verify if username/password combination exists

def auth_user(username, password, list_of_users)
    list_of_users.each do |user_record|
        if user_record[:username] == username && user_record[:password] == password
            return "\xF0\x9F\x91\xBDthe username is #{user_record[:username]} and the password is #{user_record[:password].reverse}\xF0\x9F\x91\xBD".green.capitalize
        end
    end
    "\xF0\x9F\x90\x9ECredentials were not correct\xF0\x9F\x90\x9E".red
end

# program execution flow
puts
puts 	"\xF0\x9F\x9A\x80\xF0\x9F\x9A\x80\xF0\x9F\x9A\x80\xF0\x9F\x9A\x80\xF0\x9F\x9A\x80 Welcome to the authenticator \xF0\x9F\x9A\x80\xF0\x9F\x9A\x80\xF0\x9F\x9A\x80\xF0\x9F\x9A\x80\xF0\x9F\x9A\x80"	
80.times {print "\xE2\x9A\xA1".yellow}
puts
puts "This program will take the input from the user ad compare password"
puts "If password is correct, you will get back the user object"

attempts = 1
while attempts < 4
    print "Username: "
    username = gets.chomp
    print "Password: "
    password = gets.chomp
    authentication = auth_user(username, password, users)
    puts authentication
    puts "Press n to quit or any other key continue: ".yellow
    input = gets.chomp.downcase
    break if input == "n"
    attempts += 1
end

puts "\xF0\x9F\x94\xB4You have exceeded the number of attempt\xF0\x9F\x94\xB4".red