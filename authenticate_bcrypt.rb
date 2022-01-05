require_relative 'crud'
require 'colorize'
     
users = [
          { username: "mateus", password: "password1" },
          { username: "jack", password: "password2" },
          { username: "arya", password: "password3" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]
 
hashed_users = Crud.create_secure_users(users)
puts hashed_users

valid_user = Crud.authenticate_user("mateus", "password1", hashed_users)
invalid_user = Crud.authenticate_user("mateusssa", "password1", hashed_users)

puts "\n"
puts valid_user.to_s.green
puts "\n\n"
puts invalid_user.red