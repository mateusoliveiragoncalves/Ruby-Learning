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
            return "the username is #{user_record[:username]} and the password is #{user_record[:password].reverse}".green
        end
    end
    "Credentials were not correct".red
end

# program execution flow
puts
puts "Welcome to the authenticator"
80.times {print "-*".blue}
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

puts "You have exceeded the number of attempts".red